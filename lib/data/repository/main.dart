// import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:uni_hostel/core/error/error.dart';
// import 'package:uni_hostel/core/utils/utils.dart';
// import 'package:uni_hostel/data/data_source/provider.dart';
// import 'package:uni_hostel/data/models/login/request/login_request_model.dart';
// import 'package:uni_hostel/data/models/login/response/login_response_model.dart';

// class MainRepository implements IMainRepository {
//   final ApiClient _apiClient;
//   final SharedPreferences _preferences;
//   MainRepository(this._apiClient, this._preferences);

  // @override
  // Future<Either<Failure, LoginResponseModel>> login(
  //     LoginRequestModel requestModel) async {
  //   try {
  //     final response = await _apiClient.login(requestModel);
  //     await _preferences.setString(ACCESS_TOKEN, response.access ?? "");
  //     return Right(response);
  //   } on DioError catch (e) {
  //     if (kDebugMode) {
  //       debugPrint("$e");
  //     }
  //     if (e.error is SocketException) {
  //       return const Left(ConnectionFailure());
  //     }
  //     return Left(
  //       (e.response?.statusCode == 400)
  //           ? const UserNotFound() 
  //           :  ServerFailure(e.response?.statusCode),
  //     );
  //   } on Object catch (e) {
  //     if (kDebugMode) {
  //       debugPrint("$e");
  //     }
  //     rethrow;
  //   }
  // }
// }
