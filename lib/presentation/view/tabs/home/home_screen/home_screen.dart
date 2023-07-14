import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/bottom_container/bottom_container.dart';
import 'package:uni_hostel/presentation/view/tabs/home/home_screen/mobile/home_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/home/home_screen/web/home_web_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomContainer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
                maxWidth: maxWidth, maxHeight: maxHeight - 120),
            child: ResponsiveWidget(
              mobile:HomeMobileScreen(),
              desktop: HomeWebScreen()
            ),
          ),
        ),
      ),
    );
  }
}
