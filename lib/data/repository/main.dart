import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/data_source/provider.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:UniHostel/data/models/dormitory_selected/dormitory_selected_response_model.dart';
import 'package:UniHostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:UniHostel/data/models/petition/request/petition_request.dart';
import 'package:UniHostel/data/models/petition/response/petition_response.dart';
import 'package:UniHostel/data/models/statistic/statistic_response.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  final SharedPreferences _localDatasource;
  MainRepository(this._apiClient, this._localDatasource);

  @override
  Future<Either<Failure, BookingInfoResponse>> getInfo() async {
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
            ? UserNotFound("${e.response?.data["message"]}")
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
      FormData formData = FormData.fromMap({
        'iron_notebook': requestModel.ironNotebook,
        'womens_book': requestModel.womensBook,
        'youths_notebook': requestModel.youthsNotebook,
        'foster_home': requestModel.fosterHome,
        'no_breadwinner': requestModel.noBreadWinner,
        'one_parents_is_dead': requestModel.oneParentsIsDead,
        'disabled': requestModel.disabled,
        'gifted_student': requestModel.giftedStudent,
        'has_many_children_family': requestModel.hasManyChildrenFamily,
        'reference_file':
            MultipartFile.fromBytes(file?.bytes ?? [], filename: file?.name),
      });
      debugPrint(formData.fields.toString());
      final response = await dio.post('${BASE_URL}student/order/',
          data: formData,
          options: Options(headers: {
            "Authorization":
                "Bearer ${_localDatasource.getString(ACCESS_TOKEN)}"
          }));
      debugPrint(response.data.toString());
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      return Right(PetitionResponseModel.fromJson(response.data));
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
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
        debugPrint("ERR == $e");
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
            ? const UserNotFound(null)
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
  Future<Either<Failure, DormitorySelected>> getDormitory(int id) async {
    try {
      final response = await _apiClient.getDormitory(id);
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
            ? const UserNotFound(null)
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
  Future<Either<Failure, StatisticResponse>> getStatistic() async {
    try {
      final response = await _apiClient.getStatistic();
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
            ? const UserNotFound(null)
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
  Future<Either<Failure, StudentInfoResponseModel>> getProfile() async {
    try {
      final response = await _apiClient.getProfile();
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
            ? UserNotFound(null)
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
  Future<Either<Failure, StudentInfoResponseModel>> editProfile(
      PlatformFile? file, StudentInfoResponseModel? request) async {
    Dio dio = Dio();
    try {
      var image =
          MultipartFile.fromBytes(file?.bytes ?? [], filename: file?.name);
      debugPrint("File : ${image}");
      FormData formData = FormData.fromMap({
        "full_name": request?.fullName,
        "passport_series": request?.passportSeries,
        "jshir": request?.jshir,
        "date_of_birth": request?.dateOfBirth,
        "region": request?.region,
        "district": request?.district,
        "neighborhood": request?.neighborhood,
        "faculty": request?.faculty,
        "course": request?.course,
        "group": request?.group,
        "phone_number": request?.phoneNumber,
        'image': image
      });

      debugPrint(formData.fields.toString());
      final response = await dio.patch(
          '${BASE_URL}student/profile/image/update/',
          data: formData,
          options: Options(headers: {
            "Authorization":
                "Bearer ${_localDatasource.getString(ACCESS_TOKEN)}"
          }));
      debugPrint(response.data.toString());
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      return Right(StudentInfoResponseModel.fromJson(response.data));
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? UserNotFound(null)
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
