import 'package:booklyapp/Features/Home/data/repos/home_repo_implemt.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(getIt.get<ApiService>()));
}
