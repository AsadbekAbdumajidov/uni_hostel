

import 'package:get_it/get_it.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubits need register
  inject.registerFactory(() => TopNavBarCubit());


  // use case need to register
  // inject.registerFactory(() => LoginUseCase(inject()));

  // repository init
  // inject.registerLazySingleton<IBlockReportRepository>(
  //     () => BlockReportRepository(inject()));

  // local source init
  // var pref = await SharedPreferences.getInstance();
  // inject.registerLazySingleton(() => pref);

  // api client init for network requests
  // inject.registerFactory(() => NetworkClient());
  // var dio = await inject<NetworkClient>().init(inject());
  // inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
