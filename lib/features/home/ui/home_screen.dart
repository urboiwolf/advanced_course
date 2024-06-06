import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/features/home/ui/widgets/doctor_specialty_see_all.dart';
import 'package:advanced_course/features/home/ui/widgets/home_top_bar.dart';
import 'package:advanced_course/features/home/ui/widgets/home_top_blue_container.dart';
import 'package:advanced_course/features/home/ui/widgets/specializaiton_and_doctors_blocbuilder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20,
            12,
            20,
            28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const HomeTopBlueContainer(),
              verticalSpace(16),
              const DoctorSpecialtySeeAll(),
              verticalSpace(16),
              const SpecializaitonAndDoctorsBlocbuilder()
              // const DoctorSpecialtyListView(),
              // verticalSpace(16),
              // const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
