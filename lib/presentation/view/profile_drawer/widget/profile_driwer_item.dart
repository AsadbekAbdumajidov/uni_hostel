import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class ProfileDriwerItem extends StatelessWidget {
  const ProfileDriwerItem(
      {super.key, required this.title, required this.subTitle});
  final String? title;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title ?? "",
              maxLines: 2,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.whiteColor)),
          SizedBox(height: 10),
          Text(subTitle ?? "",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: AppColors.whiteColor)),
        ],
      ).paddingOnly(left: 6);
  }
}
