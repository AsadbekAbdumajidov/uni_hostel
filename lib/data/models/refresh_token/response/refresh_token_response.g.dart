// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshTokenResponse _$$_RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshTokenResponse(
      refresh: json['refresh'] as String,
      access: json['access'] as String?,
    );

Map<String, dynamic> _$$_RefreshTokenResponseToJson(
        _$_RefreshTokenResponse instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
