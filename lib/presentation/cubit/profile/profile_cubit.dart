// ignore_for_file: unnecessary_null_comparison

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/main/image_upload.dart';
import 'package:uni_hostel/data/domain/usecases/main/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel/data/models/image_upload/image_upload_response.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._profileInfoUseCase, this._imageUploadUseCase)
      : super(ProfileState());
  final ProfileInfoUseCase _profileInfoUseCase;
  final ImageUploadUseCase _imageUploadUseCase;

  void getProfile() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _profileInfoUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(profileResponse: success, status: Status.UNKNOWN));
    });
  }

  /// -------------------------------- ///

  void imageUpload() async {
    emit(state.copyWith(status: Status.LOADING));
    var result =
        await _imageUploadUseCase.call(ImageUploadParams(state.pickedImg));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(
          state.copyWith(imageUploadResponse: success, status: Status.SUCCESS));
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
      imageUpload();
    } on PlatformException catch (e) {
      debugPrint("Unsopperted operation $e");
    } catch (e) {
      debugPrint("Path error $e");
    }
  }

  /// -------------------------------- ///
}
