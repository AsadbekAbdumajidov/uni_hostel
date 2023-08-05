// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petition_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetitionRequestModel _$$_PetitionRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_PetitionRequestModel(
      ironNotebook: json['iron_notebook'] as bool?,
      womensBook: json['womens_book'] as bool?,
      youthsNotebook: json['youths_notebook'] as bool?,
      fosterHome: json['foster_home'] as bool?,
      noBreadWinner: json['no_breadwinner'] as bool?,
      oneParentsIsDead: json['one_parents_is_dead'] as bool?,
      disabled: json['disabled'] as bool?,
      giftedStudent: json['gifted_student'] as bool?,
      hasManyChildrenFamily: json['has_many_children_family'] as bool?,
    );

Map<String, dynamic> _$$_PetitionRequestModelToJson(
        _$_PetitionRequestModel instance) =>
    <String, dynamic>{
      'iron_notebook': instance.ironNotebook,
      'womens_book': instance.womensBook,
      'youths_notebook': instance.youthsNotebook,
      'foster_home': instance.fosterHome,
      'no_breadwinner': instance.noBreadWinner,
      'one_parents_is_dead': instance.oneParentsIsDead,
      'disabled': instance.disabled,
      'gifted_student': instance.giftedStudent,
      'has_many_children_family': instance.hasManyChildrenFamily,
    };
