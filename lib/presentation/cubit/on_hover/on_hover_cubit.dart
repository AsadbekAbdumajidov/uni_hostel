import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_hover_state.dart';

class OnHoverCubit extends Cubit<OnHoverState> {
  OnHoverCubit() : super(const OnHoverState());

  void getHover(bool hover) async {
    emit(state.copyWith(hover: hover));
  }
}
