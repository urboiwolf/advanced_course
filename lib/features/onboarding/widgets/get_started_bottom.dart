import 'package:advanced_course/core/helpers/extentions.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedBotton extends StatelessWidget {
  const GetStartedBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const MaterialStatePropertyAll(
            Size(double.infinity, 52),
          ),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        'Get Started',
        style: AppTextStyles.font16WithSemiBold,
      ),
    );
  }
}
