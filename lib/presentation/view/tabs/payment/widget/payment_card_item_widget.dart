// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class PaymentCardItemWidget extends StatelessWidget {
  const PaymentCardItemWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.onTap,
      required this.currentIndex,
      required this.index});
  final String icon;
  final String title;
  final Function()? onTap;
  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        width: context.w,
        decoration: BoxDecoration(
            color: index == currentIndex
                ? AppColors.primaryColor.withOpacity(0.8)
                : AppColors.backgroundColour,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  color: index == currentIndex
                      ? AppColors.whiteColor
                      : AppColors.primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: ResponsiveWidget.isTablet(context) ? 14 : 16,
                        color: index == currentIndex
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                      ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.right_chevron,
              color: index == currentIndex
                  ? AppColors.whiteColor
                  : AppColors.blackColor,
            )
          ],
        ).paddingAll(16),
      ).paddingOnly(bottom: 12),
    );
  }
}
