import 'package:advanced_course/core/networking/api_error_handeler.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  //specialization

  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
    SpecializationsResponseModel specializationsResponseModel,
  ) = SpecializationSuccess;

  const factory HomeState.specializationError(ErrorHandler errorhandler) =
      SpecializationError;
}
