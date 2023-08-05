import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/dormitorys/dormitorys_response_model.dart';

class DormitoryUseCase
    extends UseCase<DormitorysResponseModel, DormitoryParams> {
  final IMainRepository _iMainRepository;
  DormitoryUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, DormitorysResponseModel>> call(
          DormitoryParams params) =>
      _iMainRepository.getDormitorys(params.page ?? 0);
}

class DormitoryParams {
  final int? page;
  DormitoryParams({this.page});
}
