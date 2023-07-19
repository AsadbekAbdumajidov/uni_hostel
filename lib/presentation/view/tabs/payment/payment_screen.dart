import 'package:flutter/material.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomNavBar(buildContext: context),
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
