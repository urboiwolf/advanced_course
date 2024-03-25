import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:advanced_course/core/widgets/app_text_botton.dart';

import 'package:advanced_course/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:advanced_course/features/login/ui/widgets/email_password.dart';
import 'package:advanced_course/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced_course/features/login/ui/widgets/terms_and_condtions_text.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_cubit.dart';
import 'package:advanced_course/features/login/data/models/login_request_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GreyRegular,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const EmailANdPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forget Password',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: "Login",
                    textStyle: TextStyles.font16WithSemiBold,
                    onPressed: () {
                      validateThenLogin(context);
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndCondtionText(),
                  verticalSpace(60),
                  const DontHaveAccountText(),
                  const LoginBlocListner()
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ));
    }
  }
}
