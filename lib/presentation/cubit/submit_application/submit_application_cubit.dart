import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/main/student_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
part 'submit_application_state.dart';
part 'submit_application_cubit.freezed.dart';

class SubmitApplicationCubit extends Cubit<SubmitApplicationState> {
  SubmitApplicationCubit(this._studentInfoUsCase)
      : super(SubmitApplicationState());
  final StudentInfoUseCase _studentInfoUsCase;

  void getStudentInfo() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _studentInfoUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      if (success.type == "no sent") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 1, status: Status.SUCCESS));
      } else if (success.type == "reviewing") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 2, status: Status.SUCCESS));
      } else if (success.type == "rejected" || success.type == "success") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 3, status: Status.SUCCESS));
      }else{
        emit(state.copyWith(
            infoResponse: success, currentIndex: 1, status: Status.SUCCESS));
      }
    });
  }
}
