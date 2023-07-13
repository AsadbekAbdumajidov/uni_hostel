import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/view/404/error.dart';
import 'package:uni_hostel/presentation/view/auth/login_screen.dart';
import 'package:uni_hostel/presentation/view/home/home_screen.dart';
import 'package:uni_hostel/presentation/view/home/widget/apartment_screen/apartment_screen.dart';
import 'package:uni_hostel/presentation/view/home/widget/home_first/home_first_screen.dart';
import 'package:uni_hostel/presentation/view/payment/payment_screen.dart';
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
      case RouteName.payment:
        return _createPageRoute(const PaymentScreen(), routeName);
    }
  };
}

Route? innerNavigation(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homeFirst:
      return MaterialPageRoute(
        builder: (context) =>  const HomeFirstScreen(),
      );
      case AppRoutes.apartmentScreen:
      return MaterialPageRoute(
        builder: (context) =>  const ApartmentScreen(),
      );
  }
  return null;
}

pushInnerNavigationOffAll(String routeName) {
  return navigatorKey
      .currentState!
      .pushNamedAndRemoveUntil(routeName, ModalRoute.withName('/'));
}

pushInnerNavigation(String routeName, {args}) {
  return navigatorKey
      .currentState!
      .pushNamed(routeName, arguments: args);
}

popInnerNavigation() {
  return navigatorKey.currentState!.pop("update");
}

Route _createPageRoute(Widget page, RouteName routeName) {
  return MaterialPageRoute(
    builder: (_) => page,
    settings: RouteSettings(name: routeName.name),
  );
}
