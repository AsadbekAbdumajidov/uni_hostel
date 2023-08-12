// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_response.freezed.dart';
part 'notifications_response.g.dart';

@freezed
class NotificationsResponse with _$NotificationsResponse {
  const factory NotificationsResponse({
    @JsonKey(name: 'response') List<NotificationModel>? paymentList,
  }) = _NotificationsResponse;

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    int? id,
    bool? readOnly,
    String? title,
    String? text,
    bool? readed,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
