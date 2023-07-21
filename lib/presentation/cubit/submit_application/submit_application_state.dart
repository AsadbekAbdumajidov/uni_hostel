part of 'submit_application_cubit.dart';

@freezed
class SubmitApplicationState with _$SubmitApplicationState {
  const factory SubmitApplicationState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    StudentInfoResponseModel? infoResponse,
    PetitionResponseModel? petitionResponse,
    @Default(null) int? checkBoxIndex,
    File? file,
    @Default(1) int currentIndex,
  }) = _SubmitApplicationState;
}
