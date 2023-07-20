// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmitApplicationState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  StudentInfoResponseModel? get infoResponse =>
      throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitApplicationStateCopyWith<SubmitApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitApplicationStateCopyWith<$Res> {
  factory $SubmitApplicationStateCopyWith(SubmitApplicationState value,
          $Res Function(SubmitApplicationState) then) =
      _$SubmitApplicationStateCopyWithImpl<$Res, SubmitApplicationState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      StudentInfoResponseModel? infoResponse,
      int currentIndex});

  $StudentInfoResponseModelCopyWith<$Res>? get infoResponse;
}

/// @nodoc
class _$SubmitApplicationStateCopyWithImpl<$Res,
        $Val extends SubmitApplicationState>
    implements $SubmitApplicationStateCopyWith<$Res> {
  _$SubmitApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? infoResponse = freezed,
    Object? currentIndex = null,
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
      infoResponse: freezed == infoResponse
          ? _value.infoResponse
          : infoResponse // ignore: cast_nullable_to_non_nullable
              as StudentInfoResponseModel?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentInfoResponseModelCopyWith<$Res>? get infoResponse {
    if (_value.infoResponse == null) {
      return null;
    }

    return $StudentInfoResponseModelCopyWith<$Res>(_value.infoResponse!,
        (value) {
      return _then(_value.copyWith(infoResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubmitApplicationStateCopyWith<$Res>
    implements $SubmitApplicationStateCopyWith<$Res> {
  factory _$$_SubmitApplicationStateCopyWith(_$_SubmitApplicationState value,
          $Res Function(_$_SubmitApplicationState) then) =
      __$$_SubmitApplicationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      StudentInfoResponseModel? infoResponse,
      int currentIndex});

  @override
  $StudentInfoResponseModelCopyWith<$Res>? get infoResponse;
}

/// @nodoc
class __$$_SubmitApplicationStateCopyWithImpl<$Res>
    extends _$SubmitApplicationStateCopyWithImpl<$Res,
        _$_SubmitApplicationState>
    implements _$$_SubmitApplicationStateCopyWith<$Res> {
  __$$_SubmitApplicationStateCopyWithImpl(_$_SubmitApplicationState _value,
      $Res Function(_$_SubmitApplicationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? infoResponse = freezed,
    Object? currentIndex = null,
  }) {
    return _then(_$_SubmitApplicationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      infoResponse: freezed == infoResponse
          ? _value.infoResponse
          : infoResponse // ignore: cast_nullable_to_non_nullable
              as StudentInfoResponseModel?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubmitApplicationState implements _SubmitApplicationState {
  const _$_SubmitApplicationState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.infoResponse,
      this.currentIndex = 1});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final StudentInfoResponseModel? infoResponse;
  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'SubmitApplicationState(status: $status, failure: $failure, infoResponse: $infoResponse, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitApplicationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.infoResponse, infoResponse) ||
                other.infoResponse == infoResponse) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, failure, infoResponse, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitApplicationStateCopyWith<_$_SubmitApplicationState> get copyWith =>
      __$$_SubmitApplicationStateCopyWithImpl<_$_SubmitApplicationState>(
          this, _$identity);
}

abstract class _SubmitApplicationState implements SubmitApplicationState {
  const factory _SubmitApplicationState(
      {final Status status,
      final Failure failure,
      final StudentInfoResponseModel? infoResponse,
      final int currentIndex}) = _$_SubmitApplicationState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  StudentInfoResponseModel? get infoResponse;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitApplicationStateCopyWith<_$_SubmitApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
