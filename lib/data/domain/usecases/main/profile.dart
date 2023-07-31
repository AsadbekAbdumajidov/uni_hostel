import 'package:dartz/dartz.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';

class ProfileInfoUseCase extends UseCase<StudentInfoResponseModel, NoParams> {
  final IMainRepository _iMainRepository;
  ProfileInfoUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, StudentInfoResponseModel>> call(NoParams params) =>
      _iMainRepository.getProfile();
}
