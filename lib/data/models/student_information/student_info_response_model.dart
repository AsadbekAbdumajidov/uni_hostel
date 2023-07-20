// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'student_info_response_model.freezed.dart';
part 'student_info_response_model.g.dart';

@freezed
class StudentInfoResponseModel with _$StudentInfoResponseModel {
  const factory StudentInfoResponseModel({
    int? id,
    String? type,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'fathers_name') String? fathersName,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'passport_series') String? passportSeries,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? jshir,
    String? region,
    String? district,
    String? neighborhood,
    String? faculty,
    String? course,
    String? group,
  }) = _StudentInfoResponseModel;

  factory StudentInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoResponseModelFromJson(json);
}
