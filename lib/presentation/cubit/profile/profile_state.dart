part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    StudentInfoResponseModel? profileResponse,
    PlatformFile? pickedImg,
    @Default("") String district,
    @Default("") String neighborhood,
    @Default("") String course,
    @Default("") String region,
    @Default("") String group,
    @Default("") String phoneNumber,
  }) = _ProfileState;
}
