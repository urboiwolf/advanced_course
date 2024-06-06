import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialtySeeAll extends StatelessWidget {
  const DoctorSpecialtySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: AppTextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text('See All', style: AppTextStyles.font12BlueRegular),
      ],
    );
  }
}
