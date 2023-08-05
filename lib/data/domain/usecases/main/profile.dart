import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';

class ProfileInfoUseCase extends UseCase<StudentInfoResponseModel, NoParams> {
  final IMainRepository _iMainRepository;
  ProfileInfoUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, StudentInfoResponseModel>> call(NoParams params) =>
      _iMainRepository.getProfile();
}
