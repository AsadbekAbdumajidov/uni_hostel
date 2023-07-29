part of 'dormitory_cubit.dart';

@freezed
class DormitoryState with _$DormitoryState {
  const factory DormitoryState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    DormitorysResponseModel? responseModel,
    DormitorySelected? dormitory,
    @Default(false) bool isSelected,


  }) = _DormitoryState;
}
