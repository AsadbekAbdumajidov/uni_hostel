import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/view/bottom_container/bottom_container.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //  final GlobalKey<NavigatorState> navigatorKeyHome = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomNavBar(),
        bottomNavigationBar: const BottomContainer(),
        body: _innerNavigationBody());
  }
}

Widget _innerNavigationBody() => Navigator(
    key: navigatorKey,
    initialRoute: AppRoutes.homeFirst,
    onGenerateRoute: innerNavigation);
