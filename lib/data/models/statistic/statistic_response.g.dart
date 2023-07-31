// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticResponse _$$_StatisticResponseFromJson(Map<String, dynamic> json) =>
    _$_StatisticResponse(
      allOrders: json['all_orders_count'] as int?,
      allOrdersPercentage: (json['all_orders_percentage'] as num?)?.toDouble(),
      acceptedOrders: json['accepted_orders_count'] as int?,
      acceptedOrdersPercentage:
          (json['accepted_orders_percentage'] as num?)?.toDouble(),
      cancelledOrders: json['cancelled_orders'] as int?,
      cancelledOrdersPercentage:
          (json['cancelled_orders_percentage'] as num?)?.toDouble(),
      queuedOrders: json['queued_orders'] as int?,
      queuedOrdersPercentage:
          (json['queued_orders_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_StatisticResponseToJson(
        _$_StatisticResponse instance) =>
    <String, dynamic>{
      'all_orders_count': instance.allOrders,
      'all_orders_percentage': instance.allOrdersPercentage,
      'accepted_orders_count': instance.acceptedOrders,
      'accepted_orders_percentage': instance.acceptedOrdersPercentage,
      'cancelled_orders': instance.cancelledOrders,
      'cancelled_orders_percentage': instance.cancelledOrdersPercentage,
      'queued_orders': instance.queuedOrders,
      'queued_orders_percentage': instance.queuedOrdersPercentage,
    };
