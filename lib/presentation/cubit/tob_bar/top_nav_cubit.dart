import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'top_nav_state.dart';

class TopNavBarCubit extends Cubit<TopNavBarState> {
  TopNavBarCubit() : super(const TopNavBarState());

  void changeIndex(int index) async {
    emit(state.copyWith(currentIndex: index));
  }
}
