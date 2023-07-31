import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/main/dormitory.dart';
import 'package:uni_hostel/data/domain/usecases/main/dormitory_selected.dart';
import 'package:uni_hostel/data/domain/usecases/main/statistic.dart';
import 'package:uni_hostel/data/models/dormitory_selected/dormitory_selected_response_model.dart';
import 'package:uni_hostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel/data/models/statistic/statistic_response.dart';
part 'dormitory_state.dart';
part 'dormitory_cubit.freezed.dart';

class DormitoryCubit extends Cubit<DormitoryState> {
  DormitoryCubit(
      this._dormitoryUsCase, this._selectedUseCase, this._statisticUseCase)
      : super(DormitoryState());
  final DormitoryUseCase _dormitoryUsCase;
  final DormitorySelectedUseCase _selectedUseCase;
  final StatisticUseCase _statisticUseCase;

  Future<void> getStatistic() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _statisticUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(statisticResponse: success, status: Status.SUCCESS));
    });
  }

  void getDormitory() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _dormitoryUsCase.call(DormitoryParams(page: 1));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(responseModel: success, status: Status.SUCCESS));
      getStatistic();
    });
  }

  void getDormitorySelected(int id) async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _selectedUseCase.call(DormitorySelectedParams(id: id));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(dormitory: success, status: Status.SUCCESS));
    });
  }

  void isSelected() async {
    emit(state.copyWith(isSelected: !state.isSelected, status: Status.UNKNOWN));
  }
}
