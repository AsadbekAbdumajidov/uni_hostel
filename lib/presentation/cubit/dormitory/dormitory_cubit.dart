import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/main/dormitory.dart';
import 'package:uni_hostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dormitory_state.dart';
part 'dormitory_cubit.freezed.dart';

class DormitoryCubit extends Cubit<DormitoryState> {
  DormitoryCubit(this._dormitoryUsCase) : super(DormitoryState());
  final DormitoryUseCase _dormitoryUsCase;

  void getDormitory() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _dormitoryUsCase.call(DormitoryParams(page: 1));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(responseModel: success, status: Status.SUCCESS));
    });
  }
}
