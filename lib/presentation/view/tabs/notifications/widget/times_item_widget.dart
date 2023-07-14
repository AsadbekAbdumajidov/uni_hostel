import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';

class TimeItemWidget extends StatelessWidget {
  const TimeItemWidget({super.key, required this.data, required this.time});
  final String data;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(AppIcons.iconCalendar),
      SizedBox(width: 5),
      Text(data,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontSize: 18)),
      SizedBox(width: 20),
      SvgPicture.asset(AppIcons.iconTime),
      SizedBox(width: 5),
      Text(
        time,
        style:
            Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 18),
      ),
    ]);
  }
}
