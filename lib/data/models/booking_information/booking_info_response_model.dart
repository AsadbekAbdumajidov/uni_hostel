// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_info_response_model.freezed.dart';
part 'booking_info_response_model.g.dart';

@freezed
class BookingInfoResponse with _$BookingInfoResponse {
  const factory BookingInfoResponse({
    int? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'passport_series') String? passportSeries,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'is_ordered') String? isOrdered,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? jshir,
    String? region,
    String? district,
    String? neighborhood,
    String? faculty,
    String? course,
    String? group,
    String? image,

  }) = _BookingInfoResponse;

  factory BookingInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingInfoResponseFromJson(json);
}
