import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel/presentation/view/tabs/notifications/notification_mobile/notification_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/notifications/notification_web/notification_web_screen.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomNavBar(buildContext: context),
        drawer: MenuDrawer(),
        endDrawer: ProfileDrawer(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: maxWidth),
              child: ResponsiveWidget(
                mobile: NotificationMobileScreen(),
                  desktop: NotificationWebScreen()),
            ),
          ),
        ));
  }
}
