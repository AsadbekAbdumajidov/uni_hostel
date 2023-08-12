// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_story_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentStoryResponse _$PaymentStoryResponseFromJson(Map<String, dynamic> json) {
  return _PaymentStoryResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentStoryResponse {
  @JsonKey(name: 'payments_list')
  List<PaymentStory>? get paymentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentStoryResponseCopyWith<PaymentStoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStoryResponseCopyWith<$Res> {
  factory $PaymentStoryResponseCopyWith(PaymentStoryResponse value,
          $Res Function(PaymentStoryResponse) then) =
      _$PaymentStoryResponseCopyWithImpl<$Res, PaymentStoryResponse>;
  @useResult
  $Res call({@JsonKey(name: 'payments_list') List<PaymentStory>? paymentList});
}

/// @nodoc
class _$PaymentStoryResponseCopyWithImpl<$Res,
        $Val extends PaymentStoryResponse>
    implements $PaymentStoryResponseCopyWith<$Res> {
  _$PaymentStoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentList = freezed,
  }) {
    return _then(_value.copyWith(
      paymentList: freezed == paymentList
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as List<PaymentStory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStoryResponseCopyWith<$Res>
    implements $PaymentStoryResponseCopyWith<$Res> {
  factory _$$_PaymentStoryResponseCopyWith(_$_PaymentStoryResponse value,
          $Res Function(_$_PaymentStoryResponse) then) =
      __$$_PaymentStoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'payments_list') List<PaymentStory>? paymentList});
}

/// @nodoc
class __$$_PaymentStoryResponseCopyWithImpl<$Res>
    extends _$PaymentStoryResponseCopyWithImpl<$Res, _$_PaymentStoryResponse>
    implements _$$_PaymentStoryResponseCopyWith<$Res> {
  __$$_PaymentStoryResponseCopyWithImpl(_$_PaymentStoryResponse _value,
      $Res Function(_$_PaymentStoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentList = freezed,
  }) {
    return _then(_$_PaymentStoryResponse(
      paymentList: freezed == paymentList
          ? _value._paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as List<PaymentStory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentStoryResponse implements _PaymentStoryResponse {
  const _$_PaymentStoryResponse(
      {@JsonKey(name: 'payments_list') final List<PaymentStory>? paymentList})
      : _paymentList = paymentList;

  factory _$_PaymentStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentStoryResponseFromJson(json);

  final List<PaymentStory>? _paymentList;
  @override
  @JsonKey(name: 'payments_list')
  List<PaymentStory>? get paymentList {
    final value = _paymentList;
    if (value == null) return null;
    if (_paymentList is EqualUnmodifiableListView) return _paymentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentStoryResponse(paymentList: $paymentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStoryResponse &&
            const DeepCollectionEquality()
                .equals(other._paymentList, _paymentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStoryResponseCopyWith<_$_PaymentStoryResponse> get copyWith =>
      __$$_PaymentStoryResponseCopyWithImpl<_$_PaymentStoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentStoryResponseToJson(
      this,
    );
  }
}

abstract class _PaymentStoryResponse implements PaymentStoryResponse {
  const factory _PaymentStoryResponse(
      {@JsonKey(name: 'payments_list')
      final List<PaymentStory>? paymentList}) = _$_PaymentStoryResponse;

  factory _PaymentStoryResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentStoryResponse.fromJson;

  @override
  @JsonKey(name: 'payments_list')
  List<PaymentStory>? get paymentList;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStoryResponseCopyWith<_$_PaymentStoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentStory _$PaymentStoryFromJson(Map<String, dynamic> json) {
  return _PaymentStory.fromJson(json);
}

/// @nodoc
mixin _$PaymentStory {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPaymentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'payed_amount')
  String? get payedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  String? get paymentDate => throw _privateConstructorUsedError;
  bool? get payed => throw _privateConstructorUsedError;
  int? get residual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentStoryCopyWith<PaymentStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStoryCopyWith<$Res> {
  factory $PaymentStoryCopyWith(
          PaymentStory value, $Res Function(PaymentStory) then) =
      _$PaymentStoryCopyWithImpl<$Res, PaymentStory>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
      @JsonKey(name: 'payed_amount') String? payedAmount,
      @JsonKey(name: 'payment_date') String? paymentDate,
      bool? payed,
      int? residual});
}

/// @nodoc
class _$PaymentStoryCopyWithImpl<$Res, $Val extends PaymentStory>
    implements $PaymentStoryCopyWith<$Res> {
  _$PaymentStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthlyPaymentPrice = freezed,
    Object? payedAmount = freezed,
    Object? paymentDate = freezed,
    Object? payed = freezed,
    Object? residual = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyPaymentPrice: freezed == monthlyPaymentPrice
          ? _value.monthlyPaymentPrice
          : monthlyPaymentPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      payedAmount: freezed == payedAmount
          ? _value.payedAmount
          : payedAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      payed: freezed == payed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool?,
      residual: freezed == residual
          ? _value.residual
          : residual // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStoryCopyWith<$Res>
    implements $PaymentStoryCopyWith<$Res> {
  factory _$$_PaymentStoryCopyWith(
          _$_PaymentStory value, $Res Function(_$_PaymentStory) then) =
      __$$_PaymentStoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
      @JsonKey(name: 'payed_amount') String? payedAmount,
      @JsonKey(name: 'payment_date') String? paymentDate,
      bool? payed,
      int? residual});
}

/// @nodoc
class __$$_PaymentStoryCopyWithImpl<$Res>
    extends _$PaymentStoryCopyWithImpl<$Res, _$_PaymentStory>
    implements _$$_PaymentStoryCopyWith<$Res> {
  __$$_PaymentStoryCopyWithImpl(
      _$_PaymentStory _value, $Res Function(_$_PaymentStory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthlyPaymentPrice = freezed,
    Object? payedAmount = freezed,
    Object? paymentDate = freezed,
    Object? payed = freezed,
    Object? residual = freezed,
  }) {
    return _then(_$_PaymentStory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyPaymentPrice: freezed == monthlyPaymentPrice
          ? _value.monthlyPaymentPrice
          : monthlyPaymentPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      payedAmount: freezed == payedAmount
          ? _value.payedAmount
          : payedAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      payed: freezed == payed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool?,
      residual: freezed == residual
          ? _value.residual
          : residual // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentStory implements _PaymentStory {
  const _$_PaymentStory(
      {this.id,
      @JsonKey(name: 'monthly_payment_price') this.monthlyPaymentPrice,
      @JsonKey(name: 'payed_amount') this.payedAmount,
      @JsonKey(name: 'payment_date') this.paymentDate,
      this.payed,
      this.residual});

  factory _$_PaymentStory.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentStoryFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'monthly_payment_price')
  final int? monthlyPaymentPrice;
  @override
  @JsonKey(name: 'payed_amount')
  final String? payedAmount;
  @override
  @JsonKey(name: 'payment_date')
  final String? paymentDate;
  @override
  final bool? payed;
  @override
  final int? residual;

  @override
  String toString() {
    return 'PaymentStory(id: $id, monthlyPaymentPrice: $monthlyPaymentPrice, payedAmount: $payedAmount, paymentDate: $paymentDate, payed: $payed, residual: $residual)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.monthlyPaymentPrice, monthlyPaymentPrice) ||
                other.monthlyPaymentPrice == monthlyPaymentPrice) &&
            (identical(other.payedAmount, payedAmount) ||
                other.payedAmount == payedAmount) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.payed, payed) || other.payed == payed) &&
            (identical(other.residual, residual) ||
                other.residual == residual));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, monthlyPaymentPrice,
      payedAmount, paymentDate, payed, residual);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStoryCopyWith<_$_PaymentStory> get copyWith =>
      __$$_PaymentStoryCopyWithImpl<_$_PaymentStory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentStoryToJson(
      this,
    );
  }
}

abstract class _PaymentStory implements PaymentStory {
  const factory _PaymentStory(
      {final int? id,
      @JsonKey(name: 'monthly_payment_price') final int? monthlyPaymentPrice,
      @JsonKey(name: 'payed_amount') final String? payedAmount,
      @JsonKey(name: 'payment_date') final String? paymentDate,
      final bool? payed,
      final int? residual}) = _$_PaymentStory;

  factory _PaymentStory.fromJson(Map<String, dynamic> json) =
      _$_PaymentStory.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPaymentPrice;
  @override
  @JsonKey(name: 'payed_amount')
  String? get payedAmount;
  @override
  @JsonKey(name: 'payment_date')
  String? get paymentDate;
  @override
  bool? get payed;
  @override
  int? get residual;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStoryCopyWith<_$_PaymentStory> get copyWith =>
      throw _privateConstructorUsedError;
}
