import 'package:get/get_utils/src/extensions/internacionalization.dart';

enum RouteName {
  home(route: "/bosh sahifa"),
  payment(route: "/to'lov"),
  notification(route: "/bildirishnomalar"),

  login(route: "/login"),
  notFound(route: "/404"),
  splash(route: "/splash"),
  ;

  static RouteName? find(String name) =>
      values.firstWhereOrNull((routeName) => routeName.route == name);

  const RouteName({required this.route});

  final String route;
}


abstract class AppRoutes {
  static const homeFirst = '/homeFirst';
  static const apartmentScreen = '/apartmentScreen';
  static const applicationSenderScreen = '/applicationSenderScreen';

}
