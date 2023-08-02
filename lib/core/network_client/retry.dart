import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:uni_hostel/core/utils/utils.dart';


class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription? streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (connectivityResult != ConnectivityResult.none) {
          streamSubscription?.cancel();
          final options = Options(
              method: requestOptions.method,
              headers: requestOptions.headers,
              responseType: requestOptions.responseType);
          responseCompleter.complete(
            dio.request(
              BASE_URL + requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: options,
            ),
          );
        }
      },
    );
    return responseCompleter.future;
  }
}
