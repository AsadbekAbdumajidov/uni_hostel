import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/statistic/statistic_response.dart';

class StatisticUseCase extends UseCase<StatisticResponse, NoParams> {
  final IMainRepository _iMainRepository;
  StatisticUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, StatisticResponse>> call(NoParams params) =>
      _iMainRepository.getStatistic();
}
