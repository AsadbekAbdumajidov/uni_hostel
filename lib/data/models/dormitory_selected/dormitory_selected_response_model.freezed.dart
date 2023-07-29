// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dormitory_selected_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DormitorySelected _$DormitorySelectedFromJson(Map<String, dynamic> json) {
  return _DormitorySelected.fromJson(json);
}

/// @nodoc
mixin _$DormitorySelected {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get faculity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DormitorySelectedCopyWith<DormitorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DormitorySelectedCopyWith<$Res> {
  factory $DormitorySelectedCopyWith(
          DormitorySelected value, $Res Function(DormitorySelected) then) =
      _$DormitorySelectedCopyWithImpl<$Res, DormitorySelected>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? name,
      String? description,
      int? faculity});
}

/// @nodoc
class _$DormitorySelectedCopyWithImpl<$Res, $Val extends DormitorySelected>
    implements $DormitorySelectedCopyWith<$Res> {
  _$DormitorySelectedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? faculity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      faculity: freezed == faculity
          ? _value.faculity
          : faculity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DormitorySelectedCopyWith<$Res>
    implements $DormitorySelectedCopyWith<$Res> {
  factory _$$_DormitorySelectedCopyWith(_$_DormitorySelected value,
          $Res Function(_$_DormitorySelected) then) =
      __$$_DormitorySelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? name,
      String? description,
      int? faculity});
}

/// @nodoc
class __$$_DormitorySelectedCopyWithImpl<$Res>
    extends _$DormitorySelectedCopyWithImpl<$Res, _$_DormitorySelected>
    implements _$$_DormitorySelectedCopyWith<$Res> {
  __$$_DormitorySelectedCopyWithImpl(
      _$_DormitorySelected _value, $Res Function(_$_DormitorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? faculity = freezed,
  }) {
    return _then(_$_DormitorySelected(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      faculity: freezed == faculity
          ? _value.faculity
          : faculity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DormitorySelected implements _DormitorySelected {
  const _$_DormitorySelected(
      {this.id, this.image, this.name, this.description, this.faculity});

  factory _$_DormitorySelected.fromJson(Map<String, dynamic> json) =>
      _$$_DormitorySelectedFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? faculity;

  @override
  String toString() {
    return 'DormitorySelected(id: $id, image: $image, name: $name, description: $description, faculity: $faculity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DormitorySelected &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.faculity, faculity) ||
                other.faculity == faculity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, name, description, faculity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DormitorySelectedCopyWith<_$_DormitorySelected> get copyWith =>
      __$$_DormitorySelectedCopyWithImpl<_$_DormitorySelected>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DormitorySelectedToJson(
      this,
    );
  }
}

abstract class _DormitorySelected implements DormitorySelected {
  const factory _DormitorySelected(
      {final int? id,
      final String? image,
      final String? name,
      final String? description,
      final int? faculity}) = _$_DormitorySelected;

  factory _DormitorySelected.fromJson(Map<String, dynamic> json) =
      _$_DormitorySelected.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get faculity;
  @override
  @JsonKey(ignore: true)
  _$$_DormitorySelectedCopyWith<_$_DormitorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}
