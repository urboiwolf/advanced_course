import 'package:advanced_course/core/networking/api_error_handeler.dart';
import 'package:advanced_course/core/networking/api_result.dart';
import 'package:advanced_course/features/home/data/apis/home_api_service.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService homeApiService;
  HomeRepo(this.homeApiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
