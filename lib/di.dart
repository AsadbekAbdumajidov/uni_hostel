import 'package:UniHostel/data/domain/usecases/main/notifications.dart';
import 'package:UniHostel/data/domain/usecases/main/payment_story.dart';
import 'package:UniHostel/presentation/cubit/notifications/notifications_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:UniHostel/core/network_client/network_client.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/data_source/provider.dart';
import 'package:UniHostel/data/domain/repository/authorization.dart';
import 'package:UniHostel/data/domain/repository/main.dart';
import 'package:UniHostel/data/domain/usecases/auth/check_user_auth.dart';
import 'package:UniHostel/data/domain/usecases/auth/login.dart';
import 'package:UniHostel/data/domain/usecases/auth/logout.dart';
import 'package:UniHostel/data/domain/usecases/main/dormitory.dart';
import 'package:UniHostel/data/domain/usecases/main/dormitory_selected.dart';
import 'package:UniHostel/data/domain/usecases/main/image_upload.dart';
import 'package:UniHostel/data/domain/usecases/main/petition.dart';
import 'package:UniHostel/data/domain/usecases/main/profile.dart';
import 'package:UniHostel/data/domain/usecases/main/statistic.dart';
import 'package:UniHostel/data/domain/usecases/main/student_info.dart';
import 'package:UniHostel/data/repository/authorization.dart';
import 'package:UniHostel/data/repository/main.dart';
import 'package:UniHostel/presentation/cubit/auth/auth_cubit.dart';
import 'package:UniHostel/presentation/cubit/dormitory/dormitory_cubit.dart';
import 'package:UniHostel/presentation/cubit/login/login_cubit.dart';
import 'package:UniHostel/presentation/cubit/payment/payment_cubit.dart';
import 'package:UniHostel/presentation/cubit/profile/profile_cubit.dart';
import 'package:UniHostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:UniHostel/presentation/cubit/tob_bar/top_nav_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubits need register
  inject.registerFactory(() => TopNavBarCubit());
  inject.registerFactory(() => PaymentCubit(inject()));
  inject.registerFactory(() => AuthCubit(inject(), inject()));
  inject.registerFactory(() => LoginCubit(inject()));
  inject.registerFactory(() => NotificationCubit(inject()));
  inject.registerFactory(() => DormitoryCubit(inject(), inject(), inject()));
  inject.registerFactory(() => SubmitApplicationCubit(inject(), inject()));
  inject.registerFactory(() => ProfileCubit(inject(), inject()));

  // use case need to register
  inject.registerLazySingleton(() => LoginUseCase(inject()));
  inject.registerLazySingleton(() => DormitoryUseCase(inject()));
  inject.registerLazySingleton(() => PetitionUseCase(inject()));
  inject.registerLazySingleton(() => StudentInfoUseCase(inject()));
  inject.registerLazySingleton(() => CheckUserToAuthUseCase(inject()));
  inject.registerLazySingleton(() => LogoutUseCase(inject()));
  inject.registerLazySingleton(() => DormitorySelectedUseCase(inject()));
  inject.registerLazySingleton(() => StatisticUseCase(inject()));
  inject.registerLazySingleton(() => ProfileInfoUseCase(inject()));
  inject.registerLazySingleton(() => EditProfileUseCase(inject()));
  inject.registerLazySingleton(() => PaymentStoryUseCase(inject()));
  inject.registerLazySingleton(() => NotificationsUseCase(inject()));


  // repository init
  inject.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(inject(), inject()));
  inject.registerLazySingleton<IMainRepository>(
      () => MainRepository(inject(), inject()));

  // local source init
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests
  inject.registerFactory(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
