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
  PetitionResponseModel? get petitionResponse =>
      throw _privateConstructorUsedError;
  int? get checkBoxIndex => throw _privateConstructorUsedError;
  PlatformFile? get file => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
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
      PetitionResponseModel? petitionResponse,
      int? checkBoxIndex,
      PlatformFile? file,
      String? name,
      int currentIndex});

  $StudentInfoResponseModelCopyWith<$Res>? get infoResponse;
  $PetitionResponseModelCopyWith<$Res>? get petitionResponse;
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
    Object? petitionResponse = freezed,
    Object? checkBoxIndex = freezed,
    Object? file = freezed,
    Object? name = freezed,
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
      petitionResponse: freezed == petitionResponse
          ? _value.petitionResponse
          : petitionResponse // ignore: cast_nullable_to_non_nullable
              as PetitionResponseModel?,
      checkBoxIndex: freezed == checkBoxIndex
          ? _value.checkBoxIndex
          : checkBoxIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $PetitionResponseModelCopyWith<$Res>? get petitionResponse {
    if (_value.petitionResponse == null) {
      return null;
    }

    return $PetitionResponseModelCopyWith<$Res>(_value.petitionResponse!,
        (value) {
      return _then(_value.copyWith(petitionResponse: value) as $Val);
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
      PetitionResponseModel? petitionResponse,
      int? checkBoxIndex,
      PlatformFile? file,
      String? name,
      int currentIndex});

  @override
  $StudentInfoResponseModelCopyWith<$Res>? get infoResponse;
  @override
  $PetitionResponseModelCopyWith<$Res>? get petitionResponse;
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
    Object? petitionResponse = freezed,
    Object? checkBoxIndex = freezed,
    Object? file = freezed,
    Object? name = freezed,
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
      petitionResponse: freezed == petitionResponse
          ? _value.petitionResponse
          : petitionResponse // ignore: cast_nullable_to_non_nullable
              as PetitionResponseModel?,
      checkBoxIndex: freezed == checkBoxIndex
          ? _value.checkBoxIndex
          : checkBoxIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubmitApplicationState
    with DiagnosticableTreeMixin
    implements _SubmitApplicationState {
  const _$_SubmitApplicationState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.infoResponse,
      this.petitionResponse,
      this.checkBoxIndex = null,
      this.file,
      this.name,
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
  final PetitionResponseModel? petitionResponse;
  @override
  @JsonKey()
  final int? checkBoxIndex;
  @override
  final PlatformFile? file;
  @override
  final String? name;
  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitApplicationState(status: $status, failure: $failure, infoResponse: $infoResponse, petitionResponse: $petitionResponse, checkBoxIndex: $checkBoxIndex, file: $file, name: $name, currentIndex: $currentIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitApplicationState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('infoResponse', infoResponse))
      ..add(DiagnosticsProperty('petitionResponse', petitionResponse))
      ..add(DiagnosticsProperty('checkBoxIndex', checkBoxIndex))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('currentIndex', currentIndex));
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
            (identical(other.petitionResponse, petitionResponse) ||
                other.petitionResponse == petitionResponse) &&
            (identical(other.checkBoxIndex, checkBoxIndex) ||
                other.checkBoxIndex == checkBoxIndex) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, infoResponse,
      petitionResponse, checkBoxIndex, file, name, currentIndex);

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
      final PetitionResponseModel? petitionResponse,
      final int? checkBoxIndex,
      final PlatformFile? file,
      final String? name,
      final int currentIndex}) = _$_SubmitApplicationState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  StudentInfoResponseModel? get infoResponse;
  @override
  PetitionResponseModel? get petitionResponse;
  @override
  int? get checkBoxIndex;
  @override
  PlatformFile? get file;
  @override
  String? get name;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitApplicationStateCopyWith<_$_SubmitApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
