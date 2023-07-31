import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/petition/request/petition_request.dart';
import 'package:uni_hostel/data/models/petition/response/petition_response.dart';

class PetitionUseCase
    extends UseCase<PetitionResponseModel, PetitionParams> {
  final IMainRepository _iMainRepository;
  PetitionUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, PetitionResponseModel>> call(
          PetitionParams params) =>
      _iMainRepository.petition(params.request,params.file);
}

class PetitionParams {
  final PetitionRequestModel request;
  final PlatformFile? file;

  PetitionParams(this.file, {required this.request});
}
