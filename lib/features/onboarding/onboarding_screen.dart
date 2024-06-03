import 'package:advanced_course/core/theming/styles.dart';
import 'package:advanced_course/features/onboarding/widgets/doc_logo_andname.dart';
import 'package:advanced_course/features/onboarding/widgets/docto_image_andtext.dart';
import 'package:advanced_course/features/onboarding/widgets/get_started_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: AppTextStyles.font13GreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const GetStartedBotton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
