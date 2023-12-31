// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<PaymentStory>? get paymentStoryList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      int currentIndex,
      List<PaymentStory>? paymentStoryList});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? currentIndex = null,
    Object? paymentStoryList = freezed,
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
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      paymentStoryList: freezed == paymentStoryList
          ? _value.paymentStoryList
          : paymentStoryList // ignore: cast_nullable_to_non_nullable
              as List<PaymentStory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentStateCopyWith(
          _$_PaymentState value, $Res Function(_$_PaymentState) then) =
      __$$_PaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      int currentIndex,
      List<PaymentStory>? paymentStoryList});
}

/// @nodoc
class __$$_PaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentState>
    implements _$$_PaymentStateCopyWith<$Res> {
  __$$_PaymentStateCopyWithImpl(
      _$_PaymentState _value, $Res Function(_$_PaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? currentIndex = null,
    Object? paymentStoryList = freezed,
  }) {
    return _then(_$_PaymentState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      paymentStoryList: freezed == paymentStoryList
          ? _value._paymentStoryList
          : paymentStoryList // ignore: cast_nullable_to_non_nullable
              as List<PaymentStory>?,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.currentIndex = 1,
      final List<PaymentStory>? paymentStoryList = const []})
      : _paymentStoryList = paymentStoryList;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  @JsonKey()
  final int currentIndex;
  final List<PaymentStory>? _paymentStoryList;
  @override
  @JsonKey()
  List<PaymentStory>? get paymentStoryList {
    final value = _paymentStoryList;
    if (value == null) return null;
    if (_paymentStoryList is EqualUnmodifiableListView)
      return _paymentStoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentState(status: $status, failure: $failure, currentIndex: $currentIndex, paymentStoryList: $paymentStoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._paymentStoryList, _paymentStoryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, currentIndex,
      const DeepCollectionEquality().hash(_paymentStoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      __$$_PaymentStateCopyWithImpl<_$_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final Status status,
      final Failure failure,
      final int currentIndex,
      final List<PaymentStory>? paymentStoryList}) = _$_PaymentState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  int get currentIndex;
  @override
  List<PaymentStory>? get paymentStoryList;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
