import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class PaymentCardItemWidget extends StatelessWidget {
  const PaymentCardItemWidget(
      {super.key, required this.icon, required this.title, this.onTap});
  final String icon;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: AppColors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        width: context.w,
        decoration: BoxDecoration(
            color: AppColors.backgroundColour,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                SizedBox(width: 10),
                Text(
                  title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: ResponsiveWidget.isTablet(context) ? 14 : 16),
                ),
              ],
            ),
            Icon(CupertinoIcons.right_chevron)
          ],
        ).paddingAll(16),
      ).paddingOnly(bottom: 12),
    );
  }
}
