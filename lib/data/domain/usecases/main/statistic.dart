import 'package:dartz/dartz.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/statistic/statistic_response.dart';

class StatisticUseCase extends UseCase<StatisticResponse, NoParams> {
  final IMainRepository _iMainRepository;
  StatisticUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, StatisticResponse>> call(NoParams params) =>
      _iMainRepository.getStatistic();
}
