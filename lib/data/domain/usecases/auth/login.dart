import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/authorization.dart';
import 'package:UniHostel/data/models/login/request/login_request_model.dart';
import 'package:UniHostel/data/models/login/response/login_response_model.dart';
import '../../../../core/error/error.dart';

class LoginUseCase extends UseCase<LoginResponseModel, LoginParams> {
  final IAuthRepository _iAuthRepository;
  LoginUseCase(this._iAuthRepository);

  @override
  Future<Either<Failure, LoginResponseModel>> call(LoginParams params) =>
      _iAuthRepository.login(params.request);
}

class LoginParams {
  final LoginRequestModel request;
  LoginParams({required this.request});
}
