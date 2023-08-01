import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uni_hostel/core/error/error.dart';
import 'package:uni_hostel/core/usecase/usecase.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/models/image_upload/image_upload_response.dart';

class ImageUploadUseCase
    extends UseCase<ImageUploadResponse, ImageUploadParams> {
  final IMainRepository _iMainRepository;
  ImageUploadUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, ImageUploadResponse>> call(ImageUploadParams params) =>
      _iMainRepository.imageUpload(params.file);
}

class ImageUploadParams {
  final PlatformFile? file;
  ImageUploadParams(this.file);
}
