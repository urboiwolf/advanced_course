import 'package:advanced_course/core/helpers/app_regix.dart';
import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/widgets/app_text_formfiel.dart';

import 'package:advanced_course/features/login/ui/widgets/password_validations.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_cubit.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EmailANdPassword extends StatefulWidget {
  const EmailANdPassword({super.key});

  @override
  State<EmailANdPassword> createState() => _EmailANdPasswordState();
}

class _EmailANdPasswordState extends State<EmailANdPassword> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasMinwidthCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumbers = false;

  bool isObscure = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setUpPAsswordControllerListner();
  }

  void setUpPAsswordControllerListner() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasMinwidthCase = AppRegex.hasMinLength(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumbers = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
            hint: 'Email',
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hint: 'Password',
            isObscure: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter a valid password';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasMinwidthCase: hasMinwidthCase,
            hasNumbers: hasNumbers,
            hasSpecialCharacters: hasSpecialCharacters,
            hasUpperCase: hasUpperCase,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
