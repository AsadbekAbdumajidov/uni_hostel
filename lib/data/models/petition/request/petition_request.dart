// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'petition_request.freezed.dart';
part 'petition_request.g.dart';

@freezed
class PetitionRequestModel with _$PetitionRequestModel {
  const factory PetitionRequestModel({
    @JsonKey(name: 'iron_notebook') bool? ironNotebook,
    @JsonKey(name: 'womens_book') bool? womensBook,
    @JsonKey(name: 'youths_notebook') bool? youthsNotebook,
    @JsonKey(name: 'foster_home') bool? fosterHome,
    @JsonKey(name: 'no_breadwinner') bool? noBreadWinner,
    @JsonKey(name: 'one_parents_is_dead') bool? oneParentsIsDead,
    bool? disabled,
    @JsonKey(name: 'gifted_student') bool? giftedStudent,
    @JsonKey(name: 'has_many_children_family') bool? hasManyChildrenFamily,
  
  }) = _PetitionRequestModel;

  factory PetitionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PetitionRequestModelFromJson(json);
}
