import 'package:freezed_annotation/freezed_annotation.dart';
part 'refresh_token_response.freezed.dart';
part 'refresh_token_response.g.dart';
@freezed
class RefreshTokenResponse with _$RefreshTokenResponse {
  const factory RefreshTokenResponse({
     String? refresh,
     String? access,


  }) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);
}
