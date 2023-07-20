part of 'submit_application_cubit.dart';

@freezed
class SubmitApplicationState with _$SubmitApplicationState {
  const factory SubmitApplicationState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    StudentInfoResponseModel? infoResponse,
    @Default(1) int currentIndex,
  }) = _SubmitApplicationState;
}
