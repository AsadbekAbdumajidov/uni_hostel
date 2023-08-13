import 'dart:io';

import 'package:UniHostel/data/models/refresh_token/request/refresh_token_request.dart';
import 'package:UniHostel/data/models/refresh_token/response/refresh_token_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/data_source/provider.dart';
import 'package:UniHostel/data/domain/repository/authorization.dart';
import 'package:UniHostel/data/models/login/request/login_request_model.dart';
import 'package:UniHostel/data/models/login/response/login_response_model.dart';

class AuthRepository implements IAuthRepository {
  final SharedPreferences _preferences;
  final ApiClient _apiClient;
  AuthRepository(this._preferences, this._apiClient);

  @override
  Future<Either<Failure, bool>> checkUserToAuth() async {
    try {
      String token = _preferences.getString(ACCESS_TOKEN) ?? '';
      return Right(token.isNotEmpty);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      await _preferences.setString(ACCESS_TOKEN, '');

      return const Right(true);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, LoginResponseModel>> login(
      LoginRequestModel requestModel) async {
    try {
      final response = await _apiClient.login(requestModel);
      await _preferences.setString(ACCESS_TOKEN, response.access ?? '');
      await _preferences.setString(REFRESH_TOKEN, response.refresh ?? '');

      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 403 || e.response?.statusCode == 400)
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
  Future<Either<Failure, RefreshTokenResponse>> refreshToken(
      RefreshTokenRequest requestModel) async {
    try {
      final response = await _apiClient.refreshToken(requestModel);
      debugPrint("$response");
      return Right(response);
    } on DioError catch (e) {
      debugPrint("$e");
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 403)
            ? const UnAuthorizationFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      debugPrint("$e");
      rethrow;
    }
  }
}
