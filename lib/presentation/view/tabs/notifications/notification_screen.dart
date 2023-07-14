import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel/presentation/view/tabs/notifications/widget/notification_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/notifications/widget/notification_web_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomNavBar(),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                  maxWidth: maxWidth, maxHeight: maxHeight),
              child: ResponsiveWidget(
                  mobile: NotificationMobileScreen(),
                  desktop: NotificationWebScreen()),
            ),
          ),
        ));
  }
}
