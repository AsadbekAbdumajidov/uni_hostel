import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/extension/for_context.dart';

// We will modify it once we have our final design

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileSize;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileLargeSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopSize;

  @override
  Widget build(BuildContext context) {
    if (context.w >= 1024) {
      return desktop;
    } else if (context.w >= mobileLargeSize && tablet != null) {
      return tablet!;
    } else if (context.w   >= mobileSize && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
