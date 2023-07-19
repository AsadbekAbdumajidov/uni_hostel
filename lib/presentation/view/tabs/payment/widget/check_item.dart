import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class CheckItem extends StatelessWidget {
  const CheckItem({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.bodyTextColor.withOpacity(0.5)),
        ),
        SizedBox(height: 12),
        Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.w600),
        )
      ],
    ).paddingOnly(bottom: 20);
  }
}
