import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:UniHostel/core/themes/app_icons.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';

class TimeItemWebWidget extends StatelessWidget {
  const TimeItemWebWidget({super.key, required this.data, required this.time});
  final String data;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(AppIcons.iconCalendar),
      SizedBox(width: 5),
      Text(data,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontSize: ResponsiveWidget.isMobileLarge(context) ? 15 : 16)),
      SizedBox(width: 20),
      SvgPicture.asset(AppIcons.iconTime),
      SizedBox(width: 5),
      Text(
        time,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontSize: ResponsiveWidget.isMobileLarge(context) ? 15 : 16),
      ),
    ]);
  }
}
