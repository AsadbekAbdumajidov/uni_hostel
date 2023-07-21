// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petition_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetitionResponseModel _$PetitionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PetitionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PetitionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  String? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_file')
  String? get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetitionResponseModelCopyWith<PetitionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetitionResponseModelCopyWith<$Res> {
  factory $PetitionResponseModelCopyWith(PetitionResponseModel value,
          $Res Function(PetitionResponseModel) then) =
      _$PetitionResponseModelCopyWithImpl<$Res, PetitionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'marital_status') String? maritalStatus,
      @JsonKey(name: 'reference_file') String? file,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$PetitionResponseModelCopyWithImpl<$Res,
        $Val extends PetitionResponseModel>
    implements $PetitionResponseModelCopyWith<$Res> {
  _$PetitionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? maritalStatus = freezed,
    Object? file = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetitionResponseModelCopyWith<$Res>
    implements $PetitionResponseModelCopyWith<$Res> {
  factory _$$_PetitionResponseModelCopyWith(_$_PetitionResponseModel value,
          $Res Function(_$_PetitionResponseModel) then) =
      __$$_PetitionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'marital_status') String? maritalStatus,
      @JsonKey(name: 'reference_file') String? file,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$_PetitionResponseModelCopyWithImpl<$Res>
    extends _$PetitionResponseModelCopyWithImpl<$Res, _$_PetitionResponseModel>
    implements _$$_PetitionResponseModelCopyWith<$Res> {
  __$$_PetitionResponseModelCopyWithImpl(_$_PetitionResponseModel _value,
      $Res Function(_$_PetitionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? maritalStatus = freezed,
    Object? file = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_PetitionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetitionResponseModel implements _PetitionResponseModel {
  const _$_PetitionResponseModel(
      {this.id,
      @JsonKey(name: 'marital_status') this.maritalStatus,
      @JsonKey(name: 'reference_file') this.file,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_PetitionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetitionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'marital_status')
  final String? maritalStatus;
  @override
  @JsonKey(name: 'reference_file')
  final String? file;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'PetitionResponseModel(id: $id, maritalStatus: $maritalStatus, file: $file, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetitionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, maritalStatus, file, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetitionResponseModelCopyWith<_$_PetitionResponseModel> get copyWith =>
      __$$_PetitionResponseModelCopyWithImpl<_$_PetitionResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetitionResponseModelToJson(
      this,
    );
  }
}

abstract class _PetitionResponseModel implements PetitionResponseModel {
  const factory _PetitionResponseModel(
          {final int? id,
          @JsonKey(name: 'marital_status') final String? maritalStatus,
          @JsonKey(name: 'reference_file') final String? file,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$_PetitionResponseModel;

  factory _PetitionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PetitionResponseModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'marital_status')
  String? get maritalStatus;
  @override
  @JsonKey(name: 'reference_file')
  String? get file;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PetitionResponseModelCopyWith<_$_PetitionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
