import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_hostel/core/network_client/network_client.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/data/data_source/provider.dart';
import 'package:uni_hostel/data/domain/repository/main.dart';
import 'package:uni_hostel/data/domain/usecases/login.dart';
import 'package:uni_hostel/data/repository/main.dart';
import 'package:uni_hostel/presentation/cubit/login/login_cubit.dart';
import 'package:uni_hostel/presentation/cubit/payment/payment_cubit.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubits need register
  inject.registerFactory(() => TopNavBarCubit());
  inject.registerFactory(() => PaymentCubit());

  inject.registerFactory(() => LoginCubit(inject()));

  // use case need to register
  inject.registerFactory(() => LoginUseCase(inject()));

  // repository init
  inject.registerLazySingleton<IMainRepository>(
      () => MainRepository(inject(),inject()));

  // local source init
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests
  inject.registerFactory(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
