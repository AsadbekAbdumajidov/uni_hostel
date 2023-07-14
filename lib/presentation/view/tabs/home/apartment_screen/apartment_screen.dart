import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/tabs/home/apartment_screen/mobile/apartment_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/home/apartment_screen/web/apartment_web_wcreen.dart';

class ApartmentScreen extends StatelessWidget {
  const ApartmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
        child: Center(
      child: Container(
        constraints: const BoxConstraints(
            maxWidth: maxWidth, maxHeight: maxHeight),
        child: ResponsiveWidget(
          mobile: ApartmentMobileCreen(),
          desktop: ApartmentWebScreen()
        ),
      ),
    ));
  }
}
