import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_theme.dart';
import 'package:uni_hostel/di.dart';
import 'package:uni_hostel/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel/presentation/cubit/dormitory/dormitory_cubit.dart';
import 'package:uni_hostel/presentation/cubit/payment/payment_cubit.dart';
import 'package:uni_hostel/presentation/cubit/profile/profile_cubit.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/404/error.dart';
import 'package:uni_hostel/presentation/view/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // usePathUrlStrategy();
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => inject<TopNavBarCubit>()),
        BlocProvider(create: (context) => inject<PaymentCubit>()),
        BlocProvider( 
            create: (context) => inject<AuthCubit>()..checkUserToAuth()),
        BlocProvider(
            create: (context) => inject<DormitoryCubit>()..getDormitory()),
        BlocProvider(create: (context) => inject<ProfileCubit>()..getProfile()),
        BlocProvider(
            create: (context) =>
                inject<SubmitApplicationCubit>()..getStudentInfo()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Uni hostel',
        onGenerateRoute: generateRoute(),
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => PageNotFound(),
          );
        },
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          );
        },
        initialRoute: RouteName.splash.route,
        home: const SplashPage(),
        theme: appThemeData,
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}
