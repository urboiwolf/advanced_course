import 'package:advanced_course/core/networking/api_service.dart';
import 'package:advanced_course/core/networking/dio_factory.dart';
import 'package:advanced_course/features/home/data/apis/home_api_service.dart';
import 'package:advanced_course/features/home/data/repo/home_repo.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_cubit.dart';
import 'package:advanced_course/features/login/data/repo/login_repo.dart';
import 'package:advanced_course/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advanced_course/features/sign_up/logic/cubit/sgin_up_cubit.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
