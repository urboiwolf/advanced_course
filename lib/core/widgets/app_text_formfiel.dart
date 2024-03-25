import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enableBorder;
  final InputBorder? focuseBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hint;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Color? backGroungcolor;
  final Function(String?) validator;
  final TextEditingController? controller;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.enableBorder,
    this.focuseBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hint,
    this.isObscure,
    this.suffixIcon,
    this.backGroungcolor,
    required this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscure ?? false,
      style: TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        filled: true,
        fillColor: backGroungcolor ?? AppColor.moreligthGray,
        hintText: hint,
        suffixIcon: suffixIcon,
        helperStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focuseBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColor.mainBlue, width: 1.3),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColor.lighterGrey, width: 1.3),
            ),
      ),
    );
  }
}
