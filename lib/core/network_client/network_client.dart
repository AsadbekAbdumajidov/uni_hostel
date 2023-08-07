import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/network_client/retry.dart';
import 'package:UniHostel/core/routes/app_routes.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/models/refresh_token/response/refresh_token_response.dart';
import 'package:UniHostel/di.dart';
import 'package:UniHostel/presentation/cubit/auth/auth_cubit.dart';

class NetworkClient {
  String _token = '';
  late final Dio api;

  Future<Dio> init(SharedPreferences preferences) async {
    api = Dio();
    api.interceptors.add(InterceptorsWrapper(
      /// onRequest

      onRequest: (options, handler) async {
        _token = preferences.getString(ACCESS_TOKEN) ?? '';
        debugPrint(_token);
        if (_token != '') {
          options.headers['Authorization'] = 'Bearer $_token';
          options.headers['Access-Control-Allow-Origin'] = '*';
          options.headers['Access-Control-Allow-Methods'] =
              'POST, GET, OPTIONS, PUT, DELETE, HEAD';
          options.headers['Access-Control-Allow-Headers'] =
              'X-Requested-With,content-type';
          options.headers['Access-Control-Allow-Credentials'] = true;
          
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print("RESPONSE: $response");
        return handler.next(response);
      },

      /// onError
      onError: (error, handler) async {
        print("ERROR: $error");
        ConnectionFailure();
        if (_shouldRetry(error)) {
          try {
            DioConnectivityRequestRetrier(
                    dio: api, connectivity: Connectivity())
                .scheduleRequestRetry(error.requestOptions);
          } catch (er) {
            return handler.next(error);
          }
        }

        if (error.response?.statusCode == 401) {
          RequestOptions requestOptions = error.requestOptions;
          final options = Options(
            method: requestOptions.method,
            headers: requestOptions.headers,
          );
          options.headers!['Authorization'] = 'Bearer $_token';
          options.headers!['Access-Control-Allow-Origin'] = '*';
          options.headers!['Access-Control-Allow-Methods'] =
              'POST, GET, OPTIONS, PUT, DELETE, HEAD';
          options.headers!['Access-Control-Allow-Headers'] =
              'X-Requested-With,content-type';
          options.headers!['Access-Control-Allow-Credentials'] = true;
          options.headers!['Accept'] = "application/json";
          options.headers!['Content-Type'] = "application/json";


          Response cloneReq = await Dio().request<dynamic>(
              BASE_URL + requestOptions.path,
              data: requestOptions.data,
              queryParameters: requestOptions.queryParameters,
              options: options);
          return handler.resolve(cloneReq);
        }
        return handler.next(error);
      },
    ));
    api.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return api;
  }

  Future<void> refreshToken(SharedPreferences preferences) async {
    String refreshToken = preferences.getString(REFRESH_TOKEN) ?? '';

    Dio dio = Dio();
    try {
      debugPrint('AA: $refreshToken');
      final response = await dio
          .post('${BASE_URL}token/refresh/', data: {'refresh': refreshToken});
      if (response.statusCode == 200) {
        RefreshTokenResponse token =
            RefreshTokenResponse.fromJson(response.data);
        debugPrint('TTTTT: ${token.access}');
        await preferences.setString(ACCESS_TOKEN, token.access ?? "");
        await preferences.setString(REFRESH_TOKEN, token.refresh);
        _token = token.access ?? "";
      }
    } catch (err) {
      _goToLoginScreen();
      debugPrint('EEE:$err');
    }
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }

  void _goToLoginScreen() async {
    await inject<AuthCubit>().logout();

    /// Navigate to Sign in Screen
    Navigator.of(navigatorKey.currentContext!).pushNamedAndRemoveUntil(
        RouteName.login.route, (Route<dynamic> route) => false);
  }
}
