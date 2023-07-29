import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/models/dormitory_selected/dormitory_selected_response_model.dart';
import 'package:uni_hostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:uni_hostel/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel/data/models/login/response/login_response_model.dart';
import 'package:uni_hostel/data/models/petition/request/petition_request.dart';
import 'package:uni_hostel/data/models/petition/response/petition_response.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
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
  Future<StudentInfoResponseModel> getInfo();

  @POST('student/order/')
  Future<PetitionResponseModel> petition(@Body() PetitionRequestModel request);

  @GET('student/dormitory/')
  Future<DormitorysResponseModel> getDormitorys(@Query('page') int page);

  @GET('student/dormitory/{id}')
  Future<DormitorySelected> getDormitory(@Path('id') int id);
}
