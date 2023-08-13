import 'package:UniHostel/core/themes/app_icons.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class TimesItemMobileWidget extends StatelessWidget {
  const TimesItemMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(AppIcons.iconCalendar),
          SizedBox(width: 5),
          Text("06.07.2023",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: ResponsiveWidget.isMobileLarge(context) ? 15 : 16)),
        ],
      ),
      SizedBox(height: 6),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(AppIcons.iconTime),
          SizedBox(width: 5),
          Text(
            "16:48",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: ResponsiveWidget.isMobileLarge(context) ? 15 : 16),
          ),
        ],
      )
    ]).paddingOnly(bottom: 4, top: 12);
  }
}
