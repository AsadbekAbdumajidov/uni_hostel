// ignore_for_file: unnecessary_null_comparison

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/domain/usecases/main/image_upload.dart';
import 'package:UniHostel/data/domain/usecases/main/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._profileInfoUseCase, this._imageUploadUseCase)
      : super(ProfileState());
  final ProfileInfoUseCase _profileInfoUseCase;
  final EditProfileUseCase _imageUploadUseCase;

  void getProfile() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _profileInfoUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(
          profileResponse: success,
          course: success.course ?? "",
          status: Status.UNKNOWN));
    });
  }

  /// -------------------------------- ///

  void editProfile() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _imageUploadUseCase.call(
      EditProfileParams(
        state.pickedImg,
        request: StudentInfoResponseModel(
          phoneNumber: state.phoneNumber,
          district: state.district,
          region: state.region,
          neighborhood: state.neighborhood,
          course: state.course,
          group: state.group,
        ),
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(profileResponse: success, status: Status.SUCCESS));
    });
  }

  Future pickFile() async {
    try {
      var result = (await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowMultiple: false,
              allowedExtensions: ["jpg", "jpeg"]))
          ?.files;

      var file = result!.first;
      // debugPrint("FILE : Cubit = $file");
      emit(state.copyWith(pickedImg: file, status: Status.UNKNOWN));
      editProfile();
    } on PlatformException catch (e) {
      debugPrint("Unsopperted operation $e");
    } catch (e) {
      debugPrint("Path error $e");
    }
  }

  /// -------------------------------- ///

  void statusUpdae() {
    emit(state.copyWith(status: Status.UNKNOWN));
  }

  void getRegion(String region) {
    emit(state.copyWith(region: region, status: Status.UNKNOWN));
  }

  void getDistrict(String district) {
    emit(state.copyWith(district: district, status: Status.UNKNOWN));
  }

  void getNeighborhood(String neighborhood) {
    emit(state.copyWith(neighborhood: neighborhood, status: Status.UNKNOWN));
  }

  void getCourse(String course) {
    emit(state.copyWith(course: course, status: Status.UNKNOWN));
  }

  void getGroup(String group) {
    emit(state.copyWith(group: group, status: Status.UNKNOWN));
  }

  void getPhoneNumber(String phoneNumber) {
    emit(state.copyWith(phoneNumber: phoneNumber, status: Status.UNKNOWN));
  }
}
