import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/authorization.dart';

class CheckUserToAuthUseCase extends UseCase<bool, NoParams> {
  final IAuthRepository _authRepository;
  CheckUserToAuthUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      _authRepository.checkUserToAuth();
}
