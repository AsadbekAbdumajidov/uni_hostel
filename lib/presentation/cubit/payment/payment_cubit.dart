import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super( PaymentState());


  void changePay(int currentIndex) async {
    emit(state.copyWith(currentIndex: currentIndex, status: Status.UNKNOWN));
  }
}
