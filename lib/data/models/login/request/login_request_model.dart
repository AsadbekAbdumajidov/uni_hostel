// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    @JsonKey(name: 'student_id') required int studentID,
    @JsonKey(name: 'passport_series') required String passportSeries,

  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}
