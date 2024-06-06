import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialtyListViewItem extends StatelessWidget {
  const DoctorSpecialtyListViewItem(
      {super.key, required this.specializationsData, required this.itemIndex});
  final SpecializationsData? specializationsData;
  final int itemIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: AppColor.lightBlue,
            child: SvgPicture.asset('assets/images/general_speciality.svg'),
          ),
          verticalSpace(5),
          Text(specializationsData?.name ?? 'Name')
        ],
      ),
    );
  }
}
