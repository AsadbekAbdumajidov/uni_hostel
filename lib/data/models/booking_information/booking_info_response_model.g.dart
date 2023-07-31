// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingInfoResponse _$$_BookingInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BookingInfoResponse(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      studentId: json['student_id'] as int?,
      passportSeries: json['passport_series'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      isOrdered: json['is_ordered'] as String?,
      phoneNumber: json['phone_number'] as String?,
      jshir: json['jshir'] as String?,
      region: json['region'] as String?,
      district: json['district'] as String?,
      neighborhood: json['neighborhood'] as String?,
      faculty: json['faculty'] as String?,
      course: json['course'] as String?,
      group: json['group'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_BookingInfoResponseToJson(
        _$_BookingInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'student_id': instance.studentId,
      'passport_series': instance.passportSeries,
      'date_of_birth': instance.dateOfBirth,
      'is_ordered': instance.isOrdered,
      'phone_number': instance.phoneNumber,
      'jshir': instance.jshir,
      'region': instance.region,
      'district': instance.district,
      'neighborhood': instance.neighborhood,
      'faculty': instance.faculty,
      'course': instance.course,
      'group': instance.group,
      'image': instance.image,
    };
