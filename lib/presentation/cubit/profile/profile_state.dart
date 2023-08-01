part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    StudentInfoResponseModel? profileResponse,
    ImageUploadResponse? imageUploadResponse,
    PlatformFile? pickedImg,
  }) = _ProfileState;
}
