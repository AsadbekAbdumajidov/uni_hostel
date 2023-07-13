import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/presentation/view/404/error.dart';
import 'package:uni_hostel/presentation/view/auth/login_screen.dart';
import 'package:uni_hostel/presentation/view/home/home_screen.dart';
import 'package:uni_hostel/presentation/view/splash/splash_screen.dart';

RouteFactory generateRoute() {
  return (settings) {
    final name = settings.name;
    if (name == null) {
      return MaterialPageRoute(builder: (_) => const SplashPage());
    }
    final routeName = RouteName.find(name);
    if (routeName == null) {
      return MaterialPageRoute(builder: (_) => const SplashPage());
    }
    switch (routeName) {
      case RouteName.home:
        return _createPageRoute(const HomeScreen(), routeName);
      case RouteName.login:
        return _createPageRoute(const LoginPage(), routeName);
     case RouteName.splash:
        return _createPageRoute(const SplashPage(), routeName);
     case RouteName.notFound:
        return _createPageRoute(PageNotFound(), routeName);
     
    }
  };
}

Route _createPageRoute(Widget page, RouteName routeName) {
  return MaterialPageRoute(
    builder: (_) => page,
    settings: RouteSettings(name: routeName.name),
  );
}
