import 'package:advanced_course/core/helpers/extentions.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_cubit.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_state.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => Center(
                      child: CircularProgressIndicator(
                    color: AppColor.mainBlue,
                  )));
        }, success: (loginResponse) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        }, error: (error) {
          context.pop();
          setupErrorState(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: TextStyles.font15DarkBlueMedium,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font14BlueSimiBold,
          ),
        ),
      ],
    ),
  );
}
