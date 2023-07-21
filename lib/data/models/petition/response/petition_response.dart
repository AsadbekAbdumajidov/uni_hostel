// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'petition_response.freezed.dart';
part 'petition_response.g.dart';

@freezed
class PetitionResponseModel with _$PetitionResponseModel {
  const factory PetitionResponseModel({
    int? id,
    @JsonKey(name: 'marital_status') String? maritalStatus,
    @JsonKey(name: 'reference_file') String? file,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _PetitionResponseModel;

  factory PetitionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PetitionResponseModelFromJson(json);
}
