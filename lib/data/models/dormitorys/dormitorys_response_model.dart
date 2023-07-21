// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dormitorys_response_model.freezed.dart';
part 'dormitorys_response_model.g.dart';

@freezed
class DormitorysResponseModel with _$DormitorysResponseModel {
  const factory DormitorysResponseModel({
     int? count,
    String? next,
    String? previous,
    List<DormitorysList>? results,
  }) = _DormitorysResponseModel;

  factory DormitorysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DormitorysResponseModelFromJson(json);
}

@freezed
class DormitorysList with _$DormitorysList {
  const factory DormitorysList({
    int? id,
    String? image,
     String? name,
     String? description,
  }) = _DormitorysList;

  factory DormitorysList.fromJson(Map<String, dynamic> json) =>
      _$DormitorysListFromJson(json);
}
