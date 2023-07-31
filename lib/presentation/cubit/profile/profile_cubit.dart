// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/main/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._profileInfoUseCase) : super(ProfileState());
  final ProfileInfoUseCase _profileInfoUseCase;

  void getProfile() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _profileInfoUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith( failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(profileResponse: success, status: Status.SUCCESS));
    });
  }
}
