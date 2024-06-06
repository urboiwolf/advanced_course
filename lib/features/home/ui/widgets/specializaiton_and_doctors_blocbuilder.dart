import 'package:advanced_course/core/helpers/spaceing.dart';
import 'package:advanced_course/features/home/logic/home_cubit.dart';
import 'package:advanced_course/features/home/logic/home_state.dart';
import 'package:advanced_course/features/home/ui/widgets/doctor_specialty_list_view.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializaitonAndDoctorsBlocbuilder extends StatelessWidget {
  const SpecializaitonAndDoctorsBlocbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (BuildContext context, HomeState state) {
        return state.maybeWhen(
          specializationLoading: () => sitUpLoading(),
          specializationSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationDataList;
            return sitUpSuccess(specializationsList);
          },
          specializationError: (errorhandler) => sitUpError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget sitUpLoading() {
    return const SizedBox(
      height: 100,
      child: CircularProgressIndicator(),
    );
  }

  Widget sitUpSuccess(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialtyListView(
            specializationsDataList: specializationsList ?? [],
          ),
          verticalSpace(16),
          DoctorsListView(
            doctorsList: specializationsList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget sitUpError() {
    return const SizedBox(
      height: 100,
      child: CircularProgressIndicator(),
    );
  }
}
