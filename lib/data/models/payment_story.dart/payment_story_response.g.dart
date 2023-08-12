// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_story_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentStoryResponse _$$_PaymentStoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentStoryResponse(
      paymentList: (json['payments_list'] as List<dynamic>?)
          ?.map((e) => PaymentStory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaymentStoryResponseToJson(
        _$_PaymentStoryResponse instance) =>
    <String, dynamic>{
      'payments_list': instance.paymentList,
    };

_$_PaymentStory _$$_PaymentStoryFromJson(Map<String, dynamic> json) =>
    _$_PaymentStory(
      id: json['id'] as int?,
      monthlyPaymentPrice: json['monthly_payment_price'] as int?,
      payedAmount: json['payed_amount'] as String?,
      paymentDate: json['payment_date'] as String?,
      payed: json['payed'] as bool?,
      residual: json['residual'] as int?,
    );

Map<String, dynamic> _$$_PaymentStoryToJson(_$_PaymentStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'monthly_payment_price': instance.monthlyPaymentPrice,
      'payed_amount': instance.payedAmount,
      'payment_date': instance.paymentDate,
      'payed': instance.payed,
      'residual': instance.residual,
    };
