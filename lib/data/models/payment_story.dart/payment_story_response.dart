// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_story_response.freezed.dart';
part 'payment_story_response.g.dart';

@freezed
class PaymentStoryResponse with _$PaymentStoryResponse {
  const factory PaymentStoryResponse({
    @JsonKey(name: 'payments_list') List<PaymentStory>? paymentList,
  }) = _PaymentStoryResponse;

  factory PaymentStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentStoryResponseFromJson(json);
}

@freezed
class PaymentStory with _$PaymentStory {
  const factory PaymentStory({
    int? id,
    @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
    @JsonKey(name: 'payed_amount') String? payedAmount,
    @JsonKey(name: 'payment_date') String? paymentDate,
    bool? payed,
    int? residual,
  }) = _PaymentStory;

  factory PaymentStory.fromJson(Map<String, dynamic> json) =>
      _$PaymentStoryFromJson(json);
}
