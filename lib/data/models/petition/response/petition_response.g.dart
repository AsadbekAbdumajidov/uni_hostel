// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petition_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetitionResponseModel _$$_PetitionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PetitionResponseModel(
      id: json['id'] as int?,
      maritalStatus: json['marital_status'] as String?,
      file: json['reference_file'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_PetitionResponseModelToJson(
        _$_PetitionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'marital_status': instance.maritalStatus,
      'reference_file': instance.file,
      'created_at': instance.createdAt,
    };
