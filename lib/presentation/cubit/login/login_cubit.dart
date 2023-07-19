import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/login.dart';
import 'package:uni_hostel/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel/data/models/login/response/login_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super( LoginState());
  final LoginUseCase _loginUseCase;

  void login() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _loginUseCase.call(LoginParams(
        request: LoginRequestModel(
            studentID: state.studentID,
            passportSeries: state.passportSeries)));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(loginResponseModel: success, status: Status.SUCCESS));
    });
  }

  void getStudentID(String studentID) async {
    emit(state.copyWith(studentID: int.parse(studentID), status: Status.UNKNOWN));
  }

  void getPassportSeries(String passportSeries) async {
    emit(
        state.copyWith(passportSeries: passportSeries, status: Status.UNKNOWN));
  }

  void changeEye() async {
    emit(state.copyWith(
        changeEye: state.changeEye == true ? false : true,
        status: Status.UNKNOWN));
  }
}
