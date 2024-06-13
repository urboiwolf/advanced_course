import 'package:advanced_course/core/helpers/constants.dart';
import 'package:advanced_course/core/helpers/shared_pref.dart';
import 'package:advanced_course/core/networking/dio_factory.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_state.dart';
import 'package:advanced_course/features/login/data/models/login_request_body.dart';
import 'package:advanced_course/features/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}

Future<void> saveUserToken(String token) async {
  await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  DioFactory.setTokenAfterLogin(token);
}
