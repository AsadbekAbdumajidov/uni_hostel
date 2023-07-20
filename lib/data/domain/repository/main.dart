
import 'package:dartz/dartz.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';

abstract class IMainRepository {
 Future<Either<Failure, StudentInfoResponseModel>> getInfo();
}
