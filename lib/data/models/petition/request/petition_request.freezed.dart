// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petition_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetitionRequestModel _$PetitionRequestModelFromJson(Map<String, dynamic> json) {
  return _PetitionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PetitionRequestModel {
  @JsonKey(name: 'marital_status')
  String? get maritalStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetitionRequestModelCopyWith<PetitionRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetitionRequestModelCopyWith<$Res> {
  factory $PetitionRequestModelCopyWith(PetitionRequestModel value,
          $Res Function(PetitionRequestModel) then) =
      _$PetitionRequestModelCopyWithImpl<$Res, PetitionRequestModel>;
  @useResult
  $Res call({@JsonKey(name: 'marital_status') String? maritalStatus});
}

/// @nodoc
class _$PetitionRequestModelCopyWithImpl<$Res,
        $Val extends PetitionRequestModel>
    implements $PetitionRequestModelCopyWith<$Res> {
  _$PetitionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maritalStatus = freezed,
  }) {
    return _then(_value.copyWith(
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetitionRequestModelCopyWith<$Res>
    implements $PetitionRequestModelCopyWith<$Res> {
  factory _$$_PetitionRequestModelCopyWith(_$_PetitionRequestModel value,
          $Res Function(_$_PetitionRequestModel) then) =
      __$$_PetitionRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'marital_status') String? maritalStatus});
}

/// @nodoc
class __$$_PetitionRequestModelCopyWithImpl<$Res>
    extends _$PetitionRequestModelCopyWithImpl<$Res, _$_PetitionRequestModel>
    implements _$$_PetitionRequestModelCopyWith<$Res> {
  __$$_PetitionRequestModelCopyWithImpl(_$_PetitionRequestModel _value,
      $Res Function(_$_PetitionRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maritalStatus = freezed,
  }) {
    return _then(_$_PetitionRequestModel(
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetitionRequestModel implements _PetitionRequestModel {
  const _$_PetitionRequestModel(
      {@JsonKey(name: 'marital_status') this.maritalStatus});

  factory _$_PetitionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetitionRequestModelFromJson(json);

  @override
  @JsonKey(name: 'marital_status')
  final String? maritalStatus;

  @override
  String toString() {
    return 'PetitionRequestModel(maritalStatus: $maritalStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetitionRequestModel &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maritalStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetitionRequestModelCopyWith<_$_PetitionRequestModel> get copyWith =>
      __$$_PetitionRequestModelCopyWithImpl<_$_PetitionRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetitionRequestModelToJson(
      this,
    );
  }
}

abstract class _PetitionRequestModel implements PetitionRequestModel {
  const factory _PetitionRequestModel(
          {@JsonKey(name: 'marital_status') final String? maritalStatus}) =
      _$_PetitionRequestModel;

  factory _PetitionRequestModel.fromJson(Map<String, dynamic> json) =
      _$_PetitionRequestModel.fromJson;

  @override
  @JsonKey(name: 'marital_status')
  String? get maritalStatus;
  @override
  @JsonKey(ignore: true)
  _$$_PetitionRequestModelCopyWith<_$_PetitionRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
