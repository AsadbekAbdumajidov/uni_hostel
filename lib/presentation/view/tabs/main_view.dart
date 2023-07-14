import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';


class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomNavBar(),
        body: _innerNavigationBody());
  }
}

Widget _innerNavigationBody() => Navigator(
    key: navigatorKey,
    initialRoute: AppRoutes.homeScreen,
    onGenerateRoute: innerNavigation);
