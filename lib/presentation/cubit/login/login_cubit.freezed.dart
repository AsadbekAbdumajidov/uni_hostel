// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  LoginResponseModel? get loginResponseModel =>
      throw _privateConstructorUsedError;
  int get studentID => throw _privateConstructorUsedError;
  String get passportSeries => throw _privateConstructorUsedError;
  bool? get changeEye => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      LoginResponseModel? loginResponseModel,
      int studentID,
      String passportSeries,
      bool? changeEye});

  $LoginResponseModelCopyWith<$Res>? get loginResponseModel;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? loginResponseModel = freezed,
    Object? studentID = null,
    Object? passportSeries = null,
    Object? changeEye = freezed,
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
      loginResponseModel: freezed == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      studentID: null == studentID
          ? _value.studentID
          : studentID // ignore: cast_nullable_to_non_nullable
              as int,
      passportSeries: null == passportSeries
          ? _value.passportSeries
          : passportSeries // ignore: cast_nullable_to_non_nullable
              as String,
      changeEye: freezed == changeEye
          ? _value.changeEye
          : changeEye // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res>? get loginResponseModel {
    if (_value.loginResponseModel == null) {
      return null;
    }

    return $LoginResponseModelCopyWith<$Res>(_value.loginResponseModel!,
        (value) {
      return _then(_value.copyWith(loginResponseModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      LoginResponseModel? loginResponseModel,
      int studentID,
      String passportSeries,
      bool? changeEye});

  @override
  $LoginResponseModelCopyWith<$Res>? get loginResponseModel;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? loginResponseModel = freezed,
    Object? studentID = null,
    Object? passportSeries = null,
    Object? changeEye = freezed,
  }) {
    return _then(_$_LoginState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      loginResponseModel: freezed == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      studentID: null == studentID
          ? _value.studentID
          : studentID // ignore: cast_nullable_to_non_nullable
              as int,
      passportSeries: null == passportSeries
          ? _value.passportSeries
          : passportSeries // ignore: cast_nullable_to_non_nullable
              as String,
      changeEye: freezed == changeEye
          ? _value.changeEye
          : changeEye // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.loginResponseModel,
      this.studentID = 0,
      this.passportSeries = "",
      this.changeEye = false});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final LoginResponseModel? loginResponseModel;
  @override
  @JsonKey()
  final int studentID;
  @override
  @JsonKey()
  final String passportSeries;
  @override
  @JsonKey()
  final bool? changeEye;

  @override
  String toString() {
    return 'LoginState(status: $status, failure: $failure, loginResponseModel: $loginResponseModel, studentID: $studentID, passportSeries: $passportSeries, changeEye: $changeEye)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel) &&
            (identical(other.studentID, studentID) ||
                other.studentID == studentID) &&
            (identical(other.passportSeries, passportSeries) ||
                other.passportSeries == passportSeries) &&
            (identical(other.changeEye, changeEye) ||
                other.changeEye == changeEye));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure,
      loginResponseModel, studentID, passportSeries, changeEye);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final Status status,
      final Failure failure,
      final LoginResponseModel? loginResponseModel,
      final int studentID,
      final String passportSeries,
      final bool? changeEye}) = _$_LoginState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  LoginResponseModel? get loginResponseModel;
  @override
  int get studentID;
  @override
  String get passportSeries;
  @override
  bool? get changeEye;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
