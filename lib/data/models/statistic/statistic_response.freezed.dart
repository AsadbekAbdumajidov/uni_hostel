// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticResponse _$StatisticResponseFromJson(Map<String, dynamic> json) {
  return _StatisticResponse.fromJson(json);
}

/// @nodoc
mixin _$StatisticResponse {
  @JsonKey(name: 'all_orders_count')
  int? get allOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_orders_percentage')
  double? get allOrdersPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'accepted_orders_count')
  int? get acceptedOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'accepted_orders_percentage')
  double? get acceptedOrdersPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_orders')
  int? get cancelledOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_orders_percentage')
  double? get cancelledOrdersPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'queued_orders')
  int? get queuedOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'queued_orders_percentage')
  double? get queuedOrdersPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticResponseCopyWith<StatisticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticResponseCopyWith<$Res> {
  factory $StatisticResponseCopyWith(
          StatisticResponse value, $Res Function(StatisticResponse) then) =
      _$StatisticResponseCopyWithImpl<$Res, StatisticResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'all_orders_count') int? allOrders,
      @JsonKey(name: 'all_orders_percentage') double? allOrdersPercentage,
      @JsonKey(name: 'accepted_orders_count') int? acceptedOrders,
      @JsonKey(name: 'accepted_orders_percentage')
      double? acceptedOrdersPercentage,
      @JsonKey(name: 'cancelled_orders') int? cancelledOrders,
      @JsonKey(name: 'cancelled_orders_percentage')
      double? cancelledOrdersPercentage,
      @JsonKey(name: 'queued_orders') int? queuedOrders,
      @JsonKey(name: 'queued_orders_percentage')
      double? queuedOrdersPercentage});
}

/// @nodoc
class _$StatisticResponseCopyWithImpl<$Res, $Val extends StatisticResponse>
    implements $StatisticResponseCopyWith<$Res> {
  _$StatisticResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allOrders = freezed,
    Object? allOrdersPercentage = freezed,
    Object? acceptedOrders = freezed,
    Object? acceptedOrdersPercentage = freezed,
    Object? cancelledOrders = freezed,
    Object? cancelledOrdersPercentage = freezed,
    Object? queuedOrders = freezed,
    Object? queuedOrdersPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      allOrders: freezed == allOrders
          ? _value.allOrders
          : allOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      allOrdersPercentage: freezed == allOrdersPercentage
          ? _value.allOrdersPercentage
          : allOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedOrders: freezed == acceptedOrders
          ? _value.acceptedOrders
          : acceptedOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedOrdersPercentage: freezed == acceptedOrdersPercentage
          ? _value.acceptedOrdersPercentage
          : acceptedOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      cancelledOrders: freezed == cancelledOrders
          ? _value.cancelledOrders
          : cancelledOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelledOrdersPercentage: freezed == cancelledOrdersPercentage
          ? _value.cancelledOrdersPercentage
          : cancelledOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      queuedOrders: freezed == queuedOrders
          ? _value.queuedOrders
          : queuedOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      queuedOrdersPercentage: freezed == queuedOrdersPercentage
          ? _value.queuedOrdersPercentage
          : queuedOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticResponseCopyWith<$Res>
    implements $StatisticResponseCopyWith<$Res> {
  factory _$$_StatisticResponseCopyWith(_$_StatisticResponse value,
          $Res Function(_$_StatisticResponse) then) =
      __$$_StatisticResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'all_orders_count') int? allOrders,
      @JsonKey(name: 'all_orders_percentage') double? allOrdersPercentage,
      @JsonKey(name: 'accepted_orders_count') int? acceptedOrders,
      @JsonKey(name: 'accepted_orders_percentage')
      double? acceptedOrdersPercentage,
      @JsonKey(name: 'cancelled_orders') int? cancelledOrders,
      @JsonKey(name: 'cancelled_orders_percentage')
      double? cancelledOrdersPercentage,
      @JsonKey(name: 'queued_orders') int? queuedOrders,
      @JsonKey(name: 'queued_orders_percentage')
      double? queuedOrdersPercentage});
}

/// @nodoc
class __$$_StatisticResponseCopyWithImpl<$Res>
    extends _$StatisticResponseCopyWithImpl<$Res, _$_StatisticResponse>
    implements _$$_StatisticResponseCopyWith<$Res> {
  __$$_StatisticResponseCopyWithImpl(
      _$_StatisticResponse _value, $Res Function(_$_StatisticResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allOrders = freezed,
    Object? allOrdersPercentage = freezed,
    Object? acceptedOrders = freezed,
    Object? acceptedOrdersPercentage = freezed,
    Object? cancelledOrders = freezed,
    Object? cancelledOrdersPercentage = freezed,
    Object? queuedOrders = freezed,
    Object? queuedOrdersPercentage = freezed,
  }) {
    return _then(_$_StatisticResponse(
      allOrders: freezed == allOrders
          ? _value.allOrders
          : allOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      allOrdersPercentage: freezed == allOrdersPercentage
          ? _value.allOrdersPercentage
          : allOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedOrders: freezed == acceptedOrders
          ? _value.acceptedOrders
          : acceptedOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedOrdersPercentage: freezed == acceptedOrdersPercentage
          ? _value.acceptedOrdersPercentage
          : acceptedOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      cancelledOrders: freezed == cancelledOrders
          ? _value.cancelledOrders
          : cancelledOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelledOrdersPercentage: freezed == cancelledOrdersPercentage
          ? _value.cancelledOrdersPercentage
          : cancelledOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      queuedOrders: freezed == queuedOrders
          ? _value.queuedOrders
          : queuedOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      queuedOrdersPercentage: freezed == queuedOrdersPercentage
          ? _value.queuedOrdersPercentage
          : queuedOrdersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticResponse implements _StatisticResponse {
  const _$_StatisticResponse(
      {@JsonKey(name: 'all_orders_count') this.allOrders,
      @JsonKey(name: 'all_orders_percentage') this.allOrdersPercentage,
      @JsonKey(name: 'accepted_orders_count') this.acceptedOrders,
      @JsonKey(name: 'accepted_orders_percentage')
      this.acceptedOrdersPercentage,
      @JsonKey(name: 'cancelled_orders') this.cancelledOrders,
      @JsonKey(name: 'cancelled_orders_percentage')
      this.cancelledOrdersPercentage,
      @JsonKey(name: 'queued_orders') this.queuedOrders,
      @JsonKey(name: 'queued_orders_percentage') this.queuedOrdersPercentage});

  factory _$_StatisticResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticResponseFromJson(json);

  @override
  @JsonKey(name: 'all_orders_count')
  final int? allOrders;
  @override
  @JsonKey(name: 'all_orders_percentage')
  final double? allOrdersPercentage;
  @override
  @JsonKey(name: 'accepted_orders_count')
  final int? acceptedOrders;
  @override
  @JsonKey(name: 'accepted_orders_percentage')
  final double? acceptedOrdersPercentage;
  @override
  @JsonKey(name: 'cancelled_orders')
  final int? cancelledOrders;
  @override
  @JsonKey(name: 'cancelled_orders_percentage')
  final double? cancelledOrdersPercentage;
  @override
  @JsonKey(name: 'queued_orders')
  final int? queuedOrders;
  @override
  @JsonKey(name: 'queued_orders_percentage')
  final double? queuedOrdersPercentage;

  @override
  String toString() {
    return 'StatisticResponse(allOrders: $allOrders, allOrdersPercentage: $allOrdersPercentage, acceptedOrders: $acceptedOrders, acceptedOrdersPercentage: $acceptedOrdersPercentage, cancelledOrders: $cancelledOrders, cancelledOrdersPercentage: $cancelledOrdersPercentage, queuedOrders: $queuedOrders, queuedOrdersPercentage: $queuedOrdersPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticResponse &&
            (identical(other.allOrders, allOrders) ||
                other.allOrders == allOrders) &&
            (identical(other.allOrdersPercentage, allOrdersPercentage) ||
                other.allOrdersPercentage == allOrdersPercentage) &&
            (identical(other.acceptedOrders, acceptedOrders) ||
                other.acceptedOrders == acceptedOrders) &&
            (identical(
                    other.acceptedOrdersPercentage, acceptedOrdersPercentage) ||
                other.acceptedOrdersPercentage == acceptedOrdersPercentage) &&
            (identical(other.cancelledOrders, cancelledOrders) ||
                other.cancelledOrders == cancelledOrders) &&
            (identical(other.cancelledOrdersPercentage,
                    cancelledOrdersPercentage) ||
                other.cancelledOrdersPercentage == cancelledOrdersPercentage) &&
            (identical(other.queuedOrders, queuedOrders) ||
                other.queuedOrders == queuedOrders) &&
            (identical(other.queuedOrdersPercentage, queuedOrdersPercentage) ||
                other.queuedOrdersPercentage == queuedOrdersPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allOrders,
      allOrdersPercentage,
      acceptedOrders,
      acceptedOrdersPercentage,
      cancelledOrders,
      cancelledOrdersPercentage,
      queuedOrders,
      queuedOrdersPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticResponseCopyWith<_$_StatisticResponse> get copyWith =>
      __$$_StatisticResponseCopyWithImpl<_$_StatisticResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticResponseToJson(
      this,
    );
  }
}

abstract class _StatisticResponse implements StatisticResponse {
  const factory _StatisticResponse(
      {@JsonKey(name: 'all_orders_count') final int? allOrders,
      @JsonKey(name: 'all_orders_percentage') final double? allOrdersPercentage,
      @JsonKey(name: 'accepted_orders_count') final int? acceptedOrders,
      @JsonKey(name: 'accepted_orders_percentage')
      final double? acceptedOrdersPercentage,
      @JsonKey(name: 'cancelled_orders') final int? cancelledOrders,
      @JsonKey(name: 'cancelled_orders_percentage')
      final double? cancelledOrdersPercentage,
      @JsonKey(name: 'queued_orders') final int? queuedOrders,
      @JsonKey(name: 'queued_orders_percentage')
      final double? queuedOrdersPercentage}) = _$_StatisticResponse;

  factory _StatisticResponse.fromJson(Map<String, dynamic> json) =
      _$_StatisticResponse.fromJson;

  @override
  @JsonKey(name: 'all_orders_count')
  int? get allOrders;
  @override
  @JsonKey(name: 'all_orders_percentage')
  double? get allOrdersPercentage;
  @override
  @JsonKey(name: 'accepted_orders_count')
  int? get acceptedOrders;
  @override
  @JsonKey(name: 'accepted_orders_percentage')
  double? get acceptedOrdersPercentage;
  @override
  @JsonKey(name: 'cancelled_orders')
  int? get cancelledOrders;
  @override
  @JsonKey(name: 'cancelled_orders_percentage')
  double? get cancelledOrdersPercentage;
  @override
  @JsonKey(name: 'queued_orders')
  int? get queuedOrders;
  @override
  @JsonKey(name: 'queued_orders_percentage')
  double? get queuedOrdersPercentage;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticResponseCopyWith<_$_StatisticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
