import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/widget/custom_button.dart';
import 'package:UniHostel/presentation/view/tabs/payment/widget/check_item.dart';

class CheckAlertDialog extends StatelessWidget {
  const CheckAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 524,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.strPaymentCheck,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(CupertinoIcons.xmark),
                )
              ],
            ),
            SizedBox(height: 23),
            CheckItem(
              title: AppStrings.strPaymentId,
              subTitle: "7128",
            ),
            CheckItem(
              title: AppStrings.strDatePaid,
              subTitle: "13.07.2023",
            ),
            CheckItem(
              title: AppStrings.strFiskalChekNumber,
              subTitle: "180012",
            ),
            CheckItem(
              title: AppStrings.strPaymentId,
              subTitle: "64afc7f1408412368874",
            ),
            CheckItem(
              title: AppStrings.strPay,
              subTitle: "200 000 so'm",
            ),
            Spacer(),
            Divider(color: AppColors.bodyTextColor.withOpacity(0.2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                    icon: Icon(CupertinoIcons.arrow_down_to_line,
                        color: AppColors.whiteColor),
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontSize: 16, color: AppColors.whiteColor),
                    width: 137,
                    text: AppStrings.strDownload,
                    onTap: () {})
              ],
            ).paddingOnly(top: 14)
          ],
        ).paddingAll(ResponsiveWidget.isMobile(context) ? 16 : 40),
      ),
    ).paddingSymmetric(vertical: 60);
  }
}
