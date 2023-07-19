part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    LoginResponseModel? loginResponseModel,
    @Default(0) int studentID,
    @Default("") String passportSeries,
    @Default(false) bool? changeEye,
  }) = _LoginState;
}
