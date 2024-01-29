import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:booklyapp/core/erros/failures.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplement(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeauteredBooks() async {
    try {
      var data = await apiService.get(
          endpoints: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoints:
              'volumes?Filtering=free-ebooks&q=computer science&sorting=newest');
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchsimiliarBooks({required String category})async {
    try {
      var data = await apiService.get(
          endpoints: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
    
  }
