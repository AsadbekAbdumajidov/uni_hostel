import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/constants/constants.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:UniHostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:UniHostel/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:UniHostel/presentation/components/support_item_widget.dart';
import 'package:UniHostel/presentation/view/tabs/notifications/notification_mobile/notification_mobile_screen.dart';
import 'package:UniHostel/presentation/view/tabs/notifications/notification_web/notification_web_screen.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomNavBar(buildContext: context),
        drawer: MenuDrawer(),
        endDrawer: ProfileDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SupportItemWidget().paddingAll(30),
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
