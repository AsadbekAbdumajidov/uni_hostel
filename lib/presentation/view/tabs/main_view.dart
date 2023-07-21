import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel/presentation/view/profile_drawer/profile_drawer.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: MenuDrawer(),
        endDrawer: ProfileDrawer(),

        appBar: CustomNavBar(buildContext: context),
        body: _innerNavigationBody());
  }
}

Widget _innerNavigationBody() => Navigator(
    key: navigatorKey,
    initialRoute: AppRoutes.apartmentScreen,
    onGenerateRoute: innerNavigation);
