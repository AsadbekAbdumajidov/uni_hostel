import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/tabs/payment/widget/check_alert_dialog.dart';

class PaymentStoryCard extends StatelessWidget {
  const PaymentStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.strPaymentStory,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Container(
            height: 500,
            width: ResponsiveWidget.isMobileLarge(context) ? context.w : 500,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.strPaymentDate,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontSize:
                                  ResponsiveWidget.isTablet(context) ? 16 : 18),
                    ),
                    Text(
                      AppStrings.strAmountPayment,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontSize:
                                  ResponsiveWidget.isTablet(context) ? 16 : 18),
                    ),
                  ],
                ).paddingOnly(bottom: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (_, __) {
                      return InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CheckAlertDialog();
                              });
                        },
                        child: Container(
                          width: context.w,
                          decoration: BoxDecoration(
                              color: __.isEven
                                  ? AppColors.backgroundColour
                                  : AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1-oy",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "06.07.2023",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            fontSize: ResponsiveWidget.isTablet(
                                                    context)
                                                ? 14
                                                : 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "200 000 so'm",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: ResponsiveWidget.isTablet(
                                                    context)
                                                ? 14
                                                : 16),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    CupertinoIcons.check_mark_circled,
                                    color: AppColors.greenColour,
                                  )
                                ],
                              ),
                            ],
                          ).paddingAll(12),
                        ),
                      );
                    },
                  ),
                )
              ],
            ).paddingAll(30),
          ),
        ],
      ),
    );
  }
}
