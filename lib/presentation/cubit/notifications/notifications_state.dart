part of 'notifications_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    @Default([]) List<NotificationModel>? responseList,
  }) = _NotificationState;
}
