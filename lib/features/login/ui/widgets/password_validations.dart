import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasMinwidthCase;
  final bool hasSpecialCharacters;
  final bool hasNumbers;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasMinwidthCase,
    required this.hasSpecialCharacters,
    required this.hasNumbers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 Uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At least 1 Specialcharacters letter', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least 1 Number letter', hasNumbers),
        verticalSpace(2),
        buildValidationRow('At least 8 characters letter', hasMinwidthCase),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColor.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: AppTextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColor.grey : AppColor.darkBlue,
          ),
        )
      ],
    );
  }
}
