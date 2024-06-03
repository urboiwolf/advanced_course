import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialtyListView extends StatelessWidget {
  const DoctorSpecialtyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: AppColor.lightBlue,
                child: SvgPicture.asset('assets/images/general_speciality.svg'),
              ),
              verticalSpace(5),
              const Text('Anos')
            ],
          ),
        ),
      ),
    );
  }
}
