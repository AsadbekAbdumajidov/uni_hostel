import 'package:dartz/dartz.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/dormitory_selected/dormitory_selected_response_model.dart';

class DormitorySelectedUseCase
    extends UseCase<DormitorySelected, DormitorySelectedParams> {
  final IMainRepository _iMainRepository;
  DormitorySelectedUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, DormitorySelected>> call(
          DormitorySelectedParams params) =>
      _iMainRepository.getDormitory(params.id);
}

class DormitorySelectedParams {
  final int id;
  DormitorySelectedParams({required this.id});
}
