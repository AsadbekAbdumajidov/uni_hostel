// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentInfoResponseModel _$$_StudentInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_StudentInfoResponseModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fathersName: json['fathers_name'] as String?,
      fullName: json['full_name'] as String?,
      passportSeries: json['passport_series'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      jshir: json['jshir'] as String?,
      region: json['region'] as String?,
      district: json['district'] as String?,
      neighborhood: json['neighborhood'] as String?,
      faculty: json['faculty'] as String?,
      course: json['course'] as String?,
      group: json['group'] as String?,
    );

Map<String, dynamic> _$$_StudentInfoResponseModelToJson(
        _$_StudentInfoResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'fathers_name': instance.fathersName,
      'full_name': instance.fullName,
      'passport_series': instance.passportSeries,
      'date_of_birth': instance.dateOfBirth,
      'jshir': instance.jshir,
      'region': instance.region,
      'district': instance.district,
      'neighborhood': instance.neighborhood,
      'faculty': instance.faculty,
      'course': instance.course,
      'group': instance.group,
    };
