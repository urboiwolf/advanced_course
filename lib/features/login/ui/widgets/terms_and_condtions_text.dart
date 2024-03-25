import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondtionText extends StatelessWidget {
  const TermsAndCondtionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(
              text: 'Terms & Conditions',
              style: TextStyles.font14DarkBlueMedium),
          TextSpan(
              text: ' and ',
              style: TextStyles.font13GreyRegular.copyWith(height: 1.5)),
          TextSpan(
              text: 'PrivacyPolicy.', style: TextStyles.font14DarkBlueMedium),
        ],
      ),
    );
  }
}
