// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  StudentInfoResponseModel? get profileResponse =>
      throw _privateConstructorUsedError;
  ImageUploadResponse? get imageUploadResponse =>
      throw _privateConstructorUsedError;
  PlatformFile? get pickedImg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      StudentInfoResponseModel? profileResponse,
      ImageUploadResponse? imageUploadResponse,
      PlatformFile? pickedImg});

  $StudentInfoResponseModelCopyWith<$Res>? get profileResponse;
  $ImageUploadResponseCopyWith<$Res>? get imageUploadResponse;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? profileResponse = freezed,
    Object? imageUploadResponse = freezed,
    Object? pickedImg = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      profileResponse: freezed == profileResponse
          ? _value.profileResponse
          : profileResponse // ignore: cast_nullable_to_non_nullable
              as StudentInfoResponseModel?,
      imageUploadResponse: freezed == imageUploadResponse
          ? _value.imageUploadResponse
          : imageUploadResponse // ignore: cast_nullable_to_non_nullable
              as ImageUploadResponse?,
      pickedImg: freezed == pickedImg
          ? _value.pickedImg
          : pickedImg // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentInfoResponseModelCopyWith<$Res>? get profileResponse {
    if (_value.profileResponse == null) {
      return null;
    }

    return $StudentInfoResponseModelCopyWith<$Res>(_value.profileResponse!,
        (value) {
      return _then(_value.copyWith(profileResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUploadResponseCopyWith<$Res>? get imageUploadResponse {
    if (_value.imageUploadResponse == null) {
      return null;
    }

    return $ImageUploadResponseCopyWith<$Res>(_value.imageUploadResponse!,
        (value) {
      return _then(_value.copyWith(imageUploadResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      StudentInfoResponseModel? profileResponse,
      ImageUploadResponse? imageUploadResponse,
      PlatformFile? pickedImg});

  @override
  $StudentInfoResponseModelCopyWith<$Res>? get profileResponse;
  @override
  $ImageUploadResponseCopyWith<$Res>? get imageUploadResponse;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? profileResponse = freezed,
    Object? imageUploadResponse = freezed,
    Object? pickedImg = freezed,
  }) {
    return _then(_$_ProfileState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      profileResponse: freezed == profileResponse
          ? _value.profileResponse
          : profileResponse // ignore: cast_nullable_to_non_nullable
              as StudentInfoResponseModel?,
      imageUploadResponse: freezed == imageUploadResponse
          ? _value.imageUploadResponse
          : imageUploadResponse // ignore: cast_nullable_to_non_nullable
              as ImageUploadResponse?,
      pickedImg: freezed == pickedImg
          ? _value.pickedImg
          : pickedImg // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$_ProfileState with DiagnosticableTreeMixin implements _ProfileState {
  const _$_ProfileState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.profileResponse,
      this.imageUploadResponse,
      this.pickedImg});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final StudentInfoResponseModel? profileResponse;
  @override
  final ImageUploadResponse? imageUploadResponse;
  @override
  final PlatformFile? pickedImg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState(status: $status, failure: $failure, profileResponse: $profileResponse, imageUploadResponse: $imageUploadResponse, pickedImg: $pickedImg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('profileResponse', profileResponse))
      ..add(DiagnosticsProperty('imageUploadResponse', imageUploadResponse))
      ..add(DiagnosticsProperty('pickedImg', pickedImg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.profileResponse, profileResponse) ||
                other.profileResponse == profileResponse) &&
            (identical(other.imageUploadResponse, imageUploadResponse) ||
                other.imageUploadResponse == imageUploadResponse) &&
            (identical(other.pickedImg, pickedImg) ||
                other.pickedImg == pickedImg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, profileResponse,
      imageUploadResponse, pickedImg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final Status status,
      final Failure failure,
      final StudentInfoResponseModel? profileResponse,
      final ImageUploadResponse? imageUploadResponse,
      final PlatformFile? pickedImg}) = _$_ProfileState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  StudentInfoResponseModel? get profileResponse;
  @override
  ImageUploadResponse? get imageUploadResponse;
  @override
  PlatformFile? get pickedImg;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
