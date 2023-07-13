import 'package:get/get_utils/src/extensions/internacionalization.dart';

enum RouteName {
  home(route: "/bosh sahifa"),
  login(route: "/login"),
  notFound(route: "/404"),
  splash(route: "/splash"),
  ;

  static RouteName? find(String name) =>
      values.firstWhereOrNull((routeName) => routeName.route == name);

  const RouteName({required this.route});

  final String route;
}
