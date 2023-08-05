import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';

class EditProfileUseCase
    extends UseCase<StudentInfoResponseModel, EditProfileParams> {
  final IMainRepository _iMainRepository;
  EditProfileUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, StudentInfoResponseModel>> call(
          EditProfileParams params) =>
      _iMainRepository.editProfile(params.file, params.request);
}

class EditProfileParams {
  final PlatformFile? file;
  final StudentInfoResponseModel? request;

  EditProfileParams(this.file, {this.request});
}
