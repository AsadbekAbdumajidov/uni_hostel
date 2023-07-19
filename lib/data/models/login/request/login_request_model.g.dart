// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequestModel _$$_LoginRequestModelFromJson(Map<String, dynamic> json) =>
    _$_LoginRequestModel(
      studentID: json['student_id'] as int,
      passportSeries: json['passport_series'] as String,
    );

Map<String, dynamic> _$$_LoginRequestModelToJson(
        _$_LoginRequestModel instance) =>
    <String, dynamic>{
      'student_id': instance.studentID,
      'passport_series': instance.passportSeries,
    };
