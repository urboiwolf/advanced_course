import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  const DoctorListViewItem({super.key, required this.doctorsModel});
  final Doctors? doctorsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/images/zoro.jpg',
              height: 120.h,
              width: 110.w,
            ),
          ),
          horizontalSpace(5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: AppTextStyles.font16DarkBlueBold,
                ),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: AppTextStyles.font12Greyemedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: AppTextStyles.font12Greyemedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
