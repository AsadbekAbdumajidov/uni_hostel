import 'package:flutter/material.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_nav_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomNavBar(),
        body: ResponsiveWidget(
          mobile: Column(
            children: [],
          ),
          desktop: Column(
            children: [],
          ),
        ));
  }
}