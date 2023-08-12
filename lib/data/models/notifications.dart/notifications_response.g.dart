// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationsResponse _$$_NotificationsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationsResponse(
      paymentList: (json['response'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NotificationsResponseToJson(
        _$_NotificationsResponse instance) =>
    <String, dynamic>{
      'response': instance.paymentList,
    };

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      id: json['id'] as int?,
      readOnly: json['readOnly'] as bool?,
      title: json['title'] as String?,
      text: json['text'] as String?,
      readed: json['readed'] as bool?,
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'readOnly': instance.readOnly,
      'title': instance.title,
      'text': instance.text,
      'readed': instance.readed,
    };
