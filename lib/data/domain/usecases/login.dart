

import 'package:dartz/dartz.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel/data/models/login/response/login_response_model.dart';

import '../../../core/error/error.dart';

class LoginUseCase extends UseCase<LoginResponseModel, LoginParams> {
  final IMainRepository _iLoginRepository;
  LoginUseCase(this._iLoginRepository);

  @override
  Future<Either<Failure, LoginResponseModel>> call(LoginParams params) =>
      _iLoginRepository.login(params.request);
}

class LoginParams {
  final LoginRequestModel request;
  LoginParams({required this.request});
}
