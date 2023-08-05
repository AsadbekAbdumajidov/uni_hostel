import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';

class MainTextWidget extends StatelessWidget {
  const MainTextWidget(
      {super.key, required this.mainFirst, required this.mainSecond});
  final String mainFirst;
  final String mainSecond;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: mainFirst,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: ResponsiveWidget.isMobileLarge(context)
                        ? 30
                        : ResponsiveWidget.isTablet(context)
                            ? 40
                            : 55,
                  )),
          TextSpan(
              text: mainSecond,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: ResponsiveWidget.isMobileLarge(context)
                        ? 30
                        : ResponsiveWidget.isTablet(context)
                            ? 40
                            : 55,
                  )),
        ],
      ),
    ).paddingSymmetric(horizontal: 12);
  }
}
