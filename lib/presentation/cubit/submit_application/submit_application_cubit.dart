// ignore_for_file: unnecessary_null_comparison

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/domain/usecases/main/petition.dart';
import 'package:uni_hostel/data/domain/usecases/main/student_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel/data/models/petition/request/petition_request.dart';
import 'package:uni_hostel/data/models/petition/response/petition_response.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
import 'package:open_app_file/open_app_file.dart';

part 'submit_application_state.dart';
part 'submit_application_cubit.freezed.dart';

class SubmitApplicationCubit extends Cubit<SubmitApplicationState> {
  SubmitApplicationCubit(this._studentInfoUsCase, this._petitionUseCase)
      : super(SubmitApplicationState());
  final StudentInfoUseCase _studentInfoUsCase;
  final PetitionUseCase _petitionUseCase;

  Future<void> petition() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _petitionUseCase.call(
      PetitionParams(
        state.file,
        request: PetitionRequestModel(
            maritalStatus: checkBoxList[state.checkBoxIndex ?? 0]),
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(petitionResponse: success, status: Status.SUCCESS));
    });
  }

  // ----------------- File picker ------------------

  Future pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
    print(result?.files.first.bytes);
    if (result?.files.first != null) {
      print("ERROR====${result?.files.first.bytes}");
      // var file = result?.files.first.bytes;
      // emit(state.copyWith(file: file., status: Status.UNKNOWN));
    } else {
      print("------------------");
    }
  }

  Future<void> picksinglefile() async {
    PlatformFile? file;
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      file = result.files.first;
      file == null ? false : OpenAppFile.open(file.path.toString());
      emit(state.copyWith(file: File(file.path ?? ""), status: Status.UNKNOWN));
    }
  }

  Future<void> filePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    print("======${result?.files.single.path}========");
    if (result != null) {
      File file = File(result.files.single.path ?? "======");

      emit(state.copyWith(file: file, status: Status.UNKNOWN));
    } else {
      // User canceled the picker
    }
  }



  // -----------------------------------

  Future<void> checkBox(int index) async {
    if (index == state.checkBoxIndex) {
      emit(state.copyWith(checkBoxIndex: 0, status: Status.UNKNOWN));
      debugPrint("==Index===${state.checkBoxIndex}====");
    } else {
      emit(state.copyWith(checkBoxIndex: index, status: Status.UNKNOWN));
      debugPrint("==Index===${state.checkBoxIndex}====");
    }
  }

  void getStudentInfo() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _studentInfoUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      if (success.isOrdered == "no_order") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 1, status: Status.UNKNOWN));
      } else if (success.isOrdered == "in_expertise") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 2, status: Status.UNKNOWN));
      } else if (success.isOrdered == "cancelled" ||
          success.isOrdered == "accepted") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 3, status: Status.UNKNOWN));
      } else {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 1, status: Status.UNKNOWN));
      }
    });
  }
}
