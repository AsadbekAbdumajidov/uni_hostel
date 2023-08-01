// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUploadResponse _$ImageUploadResponseFromJson(Map<String, dynamic> json) {
  return _ImageUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageUploadResponse {
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUploadResponseCopyWith<ImageUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadResponseCopyWith<$Res> {
  factory $ImageUploadResponseCopyWith(
          ImageUploadResponse value, $Res Function(ImageUploadResponse) then) =
      _$ImageUploadResponseCopyWithImpl<$Res, ImageUploadResponse>;
  @useResult
  $Res call({String? image});
}

/// @nodoc
class _$ImageUploadResponseCopyWithImpl<$Res, $Val extends ImageUploadResponse>
    implements $ImageUploadResponseCopyWith<$Res> {
  _$ImageUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageUploadResponseCopyWith<$Res>
    implements $ImageUploadResponseCopyWith<$Res> {
  factory _$$_ImageUploadResponseCopyWith(_$_ImageUploadResponse value,
          $Res Function(_$_ImageUploadResponse) then) =
      __$$_ImageUploadResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image});
}

/// @nodoc
class __$$_ImageUploadResponseCopyWithImpl<$Res>
    extends _$ImageUploadResponseCopyWithImpl<$Res, _$_ImageUploadResponse>
    implements _$$_ImageUploadResponseCopyWith<$Res> {
  __$$_ImageUploadResponseCopyWithImpl(_$_ImageUploadResponse _value,
      $Res Function(_$_ImageUploadResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_ImageUploadResponse(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageUploadResponse implements _ImageUploadResponse {
  const _$_ImageUploadResponse({this.image});

  factory _$_ImageUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ImageUploadResponseFromJson(json);

  @override
  final String? image;

  @override
  String toString() {
    return 'ImageUploadResponse(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploadResponse &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageUploadResponseCopyWith<_$_ImageUploadResponse> get copyWith =>
      __$$_ImageUploadResponseCopyWithImpl<_$_ImageUploadResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageUploadResponseToJson(
      this,
    );
  }
}

abstract class _ImageUploadResponse implements ImageUploadResponse {
  const factory _ImageUploadResponse({final String? image}) =
      _$_ImageUploadResponse;

  factory _ImageUploadResponse.fromJson(Map<String, dynamic> json) =
      _$_ImageUploadResponse.fromJson;

  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ImageUploadResponseCopyWith<_$_ImageUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
