// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'statistic_response.freezed.dart';
part 'statistic_response.g.dart';

@freezed
class StatisticResponse with _$StatisticResponse {
  const factory StatisticResponse({
    @JsonKey(name: 'all_orders_count') int? allOrders,
    @JsonKey(name: 'all_orders_percentage') double? allOrdersPercentage,
    @JsonKey(name: 'accepted_orders_count') int? acceptedOrders,
    @JsonKey(name: 'accepted_orders_percentage')
    double? acceptedOrdersPercentage,
    @JsonKey(name: 'cancelled_orders') int? cancelledOrders,
    @JsonKey(name: 'cancelled_orders_percentage')
    double? cancelledOrdersPercentage,
    @JsonKey(name: 'queued_orders') int? queuedOrders,
    @JsonKey(name: 'queued_orders_percentage') double? queuedOrdersPercentage,
  }) = _StatisticResponse;

  factory StatisticResponse.fromJson(Map<String, dynamic> json) =>
      _$StatisticResponseFromJson(json);
}
