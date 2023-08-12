import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/models/payment_story.dart/payment_story_response.dart';
import 'package:dartz/dartz.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/core/usecase/usecase.dart';

class PaymentStoryUseCase extends UseCase<PaymentStoryResponse, NoParams> {
  final IMainRepository _iMainRepository;
  PaymentStoryUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, PaymentStoryResponse>> call(NoParams params) =>
      _iMainRepository.getPaymentStory();
}
