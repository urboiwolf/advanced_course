import 'package:advanced_course/core/networking/api_const.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConst.specialites)
  Future<SpecializationsResponseModel> getSpecialization();
}
