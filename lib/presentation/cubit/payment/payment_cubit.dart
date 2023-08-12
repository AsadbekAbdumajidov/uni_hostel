import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/usecases/main/payment_story.dart';
import 'package:UniHostel/data/models/payment_story.dart/payment_story_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this._paymentStoryUseCase) : super(PaymentState());
  final PaymentStoryUseCase _paymentStoryUseCase;

  void changePay(int currentIndex) async {
    emit(state.copyWith(currentIndex: currentIndex, status: Status.UNKNOWN));
  }

  void getPaymentStory() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _paymentStoryUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(
          paymentStoryList: success.paymentList,
          status: Status.SUCCESS));
    });
  }
}
