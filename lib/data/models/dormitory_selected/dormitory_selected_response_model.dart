// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dormitory_selected_response_model.freezed.dart';
part 'dormitory_selected_response_model.g.dart';

@freezed
class DormitorySelected with _$DormitorySelected {
  const factory DormitorySelected({
    int? id,
    String? image,
    String? name,
    String? description,
    int? faculity,
  }) = _DormitorySelected;

  factory DormitorySelected.fromJson(Map<String, dynamic> json) =>
      _$DormitorySelectedFromJson(json);
}
