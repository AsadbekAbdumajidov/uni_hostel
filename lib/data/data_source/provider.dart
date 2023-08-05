import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:UniHostel/data/models/dormitory_selected/dormitory_selected_response_model.dart';
import 'package:UniHostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:UniHostel/data/models/image_upload/image_upload_response.dart';
import 'package:UniHostel/data/models/login/request/login_request_model.dart';
import 'package:UniHostel/data/models/login/response/login_response_model.dart';
import 'package:UniHostel/data/models/petition/request/petition_request.dart';
import 'package:UniHostel/data/models/petition/response/petition_response.dart';
import 'package:UniHostel/data/models/refresh_token/request/refresh_token_request.dart';
import 'package:UniHostel/data/models/refresh_token/response/refresh_token_response.dart';
import 'package:UniHostel/data/models/statistic/statistic_response.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';
part 'provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: BASE_URL)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 3000, connectTimeout: 3000);
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST('student/login/')
  Future<LoginResponseModel> login(@Body() LoginRequestModel request);

  @GET('student/student/datas/for/booking/')
  Future<BookingInfoResponse> getInfo();

  @GET('student/profile')
  Future<StudentInfoResponseModel> getProfile();

  @POST('student/order/')
  Future<PetitionResponseModel> petition(@Body() PetitionRequestModel request);

  @GET('student/dormitory/')
  Future<DormitorysResponseModel> getDormitorys(@Query('page') int page);

  @GET('student/dormitory/{id}')
  Future<DormitorySelected> getDormitory(@Path('id') int id);

  @GET('statistics/')
  Future<StatisticResponse> getStatistic();

  @POST('token/refresh/')
  Future<RefreshTokenResponse> refreshToken(
      @Body() RefreshTokenRequest request);

  @POST('student/profile/image/update/')
  Future<ImageUploadResponse> imageUpload();
}
