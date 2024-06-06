import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBlueContainer extends StatelessWidget {
  const HomeTopBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            width: double.infinity,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppTextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(15),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Find Nearby',
                      style: AppTextStyles.font12BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 16,
              top: -8,
              child: Image.asset(
                'assets/images/woman_doctor.png',
                height: 200,
              ))
        ],
      ),
    );
  }
}
