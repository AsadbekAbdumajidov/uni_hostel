import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_theme.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/404/error.dart';
import 'package:uni_hostel/presentation/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TopNavBarCubit>(
          create: (BuildContext context) => TopNavBarCubit(),
        ),
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
        initialRoute: RouteName.splash.route,
        home: const SplashPage(),
        theme: appThemeData,
      ),
    );
  }
}
