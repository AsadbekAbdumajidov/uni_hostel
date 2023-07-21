import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/petition/request/petition_request.dart';
import 'package:uni_hostel/data/models/petition/response/petition_response.dart';

class PetitionUseCase
    extends UseCase<PetitionResponseModel, PetitionParams> {
  final IMainRepository _iProfileRepository;
  PetitionUseCase(this._iProfileRepository);

  @override
  Future<Either<Failure, PetitionResponseModel>> call(
          PetitionParams params) =>
      _iProfileRepository.petition(params.request,params.file);
}

class PetitionParams {
  final PetitionRequestModel request;
  final File? file;
  PetitionParams(this.file, {required this.request});
}
