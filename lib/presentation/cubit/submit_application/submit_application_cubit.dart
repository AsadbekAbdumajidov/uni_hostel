// ignore_for_file: unnecessary_null_comparison
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/domain/usecases/main/petition.dart';
import 'package:UniHostel/data/domain/usecases/main/student_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:UniHostel/data/models/petition/request/petition_request.dart';
import 'package:UniHostel/data/models/petition/response/petition_response.dart';
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
          ironNotebook: state.ironNotebook,
          womensBook: state.womensBook,
          youthsNotebook: state.youthsNotebook,
          fosterHome: state.fosterHome,
          noBreadWinner: state.noBreadWinner,
          oneParentsIsDead: state.oneParentsIsDead,
          disabled: state.disabled,
          giftedStudent: state.giftedStudent,
          hasManyChildrenFamily: state.hasManyChildrenFamily,
        ),
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
    try {
      var result = (await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowMultiple: false,
              allowedExtensions: ["pdf"]))
          ?.files;

      var name = result?.first.name;
      var file = result!.first;
      emit(state.copyWith(file: file, name: name, status: Status.UNKNOWN));
    } on PlatformException catch (e) {
      debugPrint("Unsopperted operation $e");
    } catch (e) {
      debugPrint("Path error $e");
    }
  }

  Future<void> clearFile() async {
    emit(state.copyWith(file: null, name: null, status: Status.UNKNOWN));
  }

  // -----------------------------------

  Future<void> checkBox(int index) async {
    switch (index) {
      case 1:
        emit(state.copyWith(
            ironNotebook: !state.ironNotebook, status: Status.UNKNOWN));
        debugPrint(state.ironNotebook.toString());
        break;
      case 2:
        emit(state.copyWith(
            womensBook: !state.womensBook, status: Status.UNKNOWN));
        break;
      case 3:
        emit(state.copyWith(
            youthsNotebook: !state.youthsNotebook, status: Status.UNKNOWN));
        break;
      case 4:
        emit(state.copyWith(
            fosterHome: !state.fosterHome, status: Status.UNKNOWN));
        break;
      case 5:
        emit(state.copyWith(
            noBreadWinner: !state.noBreadWinner, status: Status.UNKNOWN));
        break;
      case 6:
        emit(state.copyWith(
            oneParentsIsDead: !state.oneParentsIsDead, status: Status.UNKNOWN));
        break;
      case 7:
        emit(state.copyWith(disabled: !state.disabled, status: Status.UNKNOWN));
        break;
      case 8:
        emit(state.copyWith(
            giftedStudent: !state.giftedStudent, status: Status.UNKNOWN));
        break;
      case 9:
        emit(state.copyWith(
            hasManyChildrenFamily: !state.hasManyChildrenFamily,
            status: Status.UNKNOWN));
        debugPrint(state.hasManyChildrenFamily.toString());
        break;
      default:
    }
  }

  bool cheack() {
    if (state.ironNotebook == false &&
        state.womensBook == false &&
        state.youthsNotebook == false &&
        state.fosterHome == false &&
        state.noBreadWinner == false &&
        state.oneParentsIsDead == false &&
        state.disabled == false &&
        state.giftedStudent == false &&
        state.hasManyChildrenFamily == false) {
      return false;
    } else {
      return true;
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
          success.isOrdered == "accepted" ||
          success.isOrdered == "in_queue") {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 3, status: Status.UNKNOWN));
      } else {
        emit(state.copyWith(
            infoResponse: success, currentIndex: 1, status: Status.UNKNOWN));
      }
    });
  }
}
