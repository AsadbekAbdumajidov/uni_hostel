import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/notifications.dart/notifications_response.dart';
import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';

class NotificationsUseCase extends UseCase<NotificationsResponse, NoParams> {
  final IMainRepository _iMainRepository;
  NotificationsUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, NotificationsResponse>> call(NoParams params) =>
      _iMainRepository.getNotifications();
}
