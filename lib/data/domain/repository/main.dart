import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:UniHostel/core/error/error.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:UniHostel/data/models/dormitory_selected/dormitory_selected_response_model.dart';
import 'package:UniHostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:UniHostel/data/models/petition/request/petition_request.dart';
import 'package:UniHostel/data/models/petition/response/petition_response.dart';
import 'package:UniHostel/data/models/statistic/statistic_response.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';

abstract class IMainRepository {
  Future<Either<Failure, BookingInfoResponse>> getInfo();

  Future<Either<Failure, StudentInfoResponseModel>> getProfile();

  Future<Either<Failure, PetitionResponseModel>> petition(
      PetitionRequestModel requestModel, PlatformFile? file);

  Future<Either<Failure, StudentInfoResponseModel>> editProfile(
    PlatformFile? file,
    StudentInfoResponseModel? request,
  );

  Future<Either<Failure, DormitorysResponseModel>> getDormitorys(int? page);

  Future<Either<Failure, DormitorySelected>> getDormitory(int id);

  Future<Either<Failure, StatisticResponse>> getStatistic();
}
