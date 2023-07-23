import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/data_source/provider.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:uni_hostel/data/models/petition/request/petition_request.dart';
import 'package:uni_hostel/data/models/petition/response/petition_response.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  final SharedPreferences _localDatasource;
  MainRepository(this._apiClient, this._localDatasource);

  @override
  Future<Either<Failure, StudentInfoResponseModel>> getInfo() async {
    try {
      final response = await _apiClient.getInfo();
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, PetitionResponseModel>> petition(
      PetitionRequestModel requestModel, PlatformFile? file) async {
    Dio dio = Dio();
    try {
      FormData formData =  FormData.fromMap({
              'marital_status': requestModel.maritalStatus,
              'reference_file': MultipartFile.fromBytes(file?.bytes ?? [],
                  filename: file?.name),
            });
      var withoutFileformData = FormData.fromMap({
        'marital_status': requestModel.maritalStatus,
      });

      final response = await dio.post('${BASE_URL}student/order/',
          data: file == null ? withoutFileformData : formData,
          options: Options(headers: {
            "Authorization":
                "Bearer ${_localDatasource.getString(ACCESS_TOKEN)}"
          }));
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      return Right(PetitionResponseModel.fromJson(response.data));
    } on DioError catch (e) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const SubmittedFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, DormitorysResponseModel>> getDormitorys(
      int? page) async {
    try {
      final response = await _apiClient.getDormitorys(page ?? 0);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }
}
