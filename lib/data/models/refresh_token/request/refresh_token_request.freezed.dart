// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res, RefreshTokenRequest>;
  @useResult
  $Res call({String refresh});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res, $Val extends RefreshTokenRequest>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$$_RefreshTokenRequestCopyWith(_$_RefreshTokenRequest value,
          $Res Function(_$_RefreshTokenRequest) then) =
      __$$_RefreshTokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh});
}

/// @nodoc
class __$$_RefreshTokenRequestCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res, _$_RefreshTokenRequest>
    implements _$$_RefreshTokenRequestCopyWith<$Res> {
  __$$_RefreshTokenRequestCopyWithImpl(_$_RefreshTokenRequest _value,
      $Res Function(_$_RefreshTokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_$_RefreshTokenRequest(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenRequest implements _RefreshTokenRequest {
  const _$_RefreshTokenRequest({required this.refresh});

  factory _$_RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenRequestFromJson(json);

  @override
  final String refresh;

  @override
  String toString() {
    return 'RefreshTokenRequest(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenRequest &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenRequestCopyWith<_$_RefreshTokenRequest> get copyWith =>
      __$$_RefreshTokenRequestCopyWithImpl<_$_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenRequestToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest({required final String refresh}) =
      _$_RefreshTokenRequest;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequest.fromJson;

  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenRequestCopyWith<_$_RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
