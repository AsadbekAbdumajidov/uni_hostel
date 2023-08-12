import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/usecases/main/notifications.dart';
import 'package:UniHostel/data/models/notifications.dart/notifications_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit(this._notificationUsCase) : super(NotificationState());
  final NotificationsUseCase _notificationUsCase;

  Future<void> getNotifications() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _notificationUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(responseList: success.paymentList, status: Status.SUCCESS));
    });
  }

 
}
