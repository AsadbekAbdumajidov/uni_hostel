import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/petition/request/petition_request.dart';
import 'package:UniHostel/data/models/petition/response/petition_response.dart';

class PetitionUseCase extends UseCase<PetitionResponseModel, PetitionParams> {
  final IMainRepository _iMainRepository;
  PetitionUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, PetitionResponseModel>> call(PetitionParams params) =>
      _iMainRepository.petition(params.request, params.file);
}

class PetitionParams {
  final PetitionRequestModel request;
  final PlatformFile? file;

  PetitionParams(this.file, {required this.request});
}
