import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/data/data_source/provider.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  MainRepository(this._apiClient);

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
}
