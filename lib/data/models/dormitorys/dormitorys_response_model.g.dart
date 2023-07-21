// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dormitorys_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DormitorysResponseModel _$$_DormitorysResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_DormitorysResponseModel(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => DormitorysList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DormitorysResponseModelToJson(
        _$_DormitorysResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_DormitorysList _$$_DormitorysListFromJson(Map<String, dynamic> json) =>
    _$_DormitorysList(
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_DormitorysListToJson(_$_DormitorysList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
    };
