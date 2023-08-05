import 'package:flutter/material.dart';
import 'package:UniHostel/core/routes/app_pages.dart';
import 'package:UniHostel/core/routes/app_routes.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:UniHostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:UniHostel/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:UniHostel/presentation/components/support_item_widget.dart';

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
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SupportItemWidget(),
        body: _innerNavigationBody());
  }
}

Widget _innerNavigationBody() => Navigator(
    key: navigatorKey,
    initialRoute: AppRoutes.apartmentScreen,
    onGenerateRoute: innerNavigation);
