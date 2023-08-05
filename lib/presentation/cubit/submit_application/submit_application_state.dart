part of 'submit_application_cubit.dart';

@freezed
class SubmitApplicationState with _$SubmitApplicationState {
  const factory SubmitApplicationState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    BookingInfoResponse? infoResponse,
    PetitionResponseModel? petitionResponse,
    PlatformFile? file,
    String? name,
     @Default(1) int currentIndex,
    @Default(false)bool ironNotebook,
    @Default(false)bool womensBook,
    @Default(false)bool youthsNotebook,
    @Default(false)bool fosterHome,
    @Default(false)bool noBreadWinner,
    @Default(false)bool oneParentsIsDead,
    @Default(false)bool disabled,
    @Default(false)bool giftedStudent,
    @Default(false)bool hasManyChildrenFamily,
   
  }) = _SubmitApplicationState;
}
