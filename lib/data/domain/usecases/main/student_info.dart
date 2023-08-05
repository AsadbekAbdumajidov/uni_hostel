import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';

class StudentInfoUseCase extends UseCase<BookingInfoResponse, NoParams> {
  final IMainRepository _iMainRepository;
  StudentInfoUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, BookingInfoResponse>> call(NoParams params) =>
      _iMainRepository.getInfo();
}
