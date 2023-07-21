// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'petition_request.freezed.dart';
part 'petition_request.g.dart';

@freezed
class PetitionRequestModel with _$PetitionRequestModel {
  const factory PetitionRequestModel({
    @JsonKey(name: 'marital_status') String? maritalStatus,
  }) = _PetitionRequestModel;

  factory PetitionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PetitionRequestModelFromJson(json);
}
