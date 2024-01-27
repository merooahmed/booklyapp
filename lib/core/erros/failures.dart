import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;
  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            "SSL Certificate Error: The server's SSL certificate is not valid.");
      case DioExceptionType.badResponse:
        return ServerFailure(
            "Bad Response Error: The server returned an unexpected response.");
      case DioExceptionType.cancel:
       return ServerFailure(
            "Request Canceled Error: The request was canceled.");
      case DioExceptionType.connectionError:
       return ServerFailure(
            "Connection Error: There was an issue with the network connection or server.");
      case DioExceptionType.unknown:
      
       return ServerFailure(
            "Unknown DioError: An unknown Dio error occurred.");
        default:
           return ServerFailure('Opps There was an Error, Please try again');  
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
