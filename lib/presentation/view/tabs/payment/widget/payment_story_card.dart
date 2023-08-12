import 'package:UniHostel/data/models/payment_story.dart/payment_story_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/view/tabs/payment/widget/check_alert_dialog.dart';

class PaymentStoryCard extends StatelessWidget {
  const PaymentStoryCard({super.key, required this.paymentStory});
  final List<PaymentStory> paymentStory;
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
                    itemCount: paymentStory.length,
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
                                    "${__ + 1}-${AppStrings.strMonth}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    paymentStory[__].paymentDate ?? "-",
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
                                    "${paymentStory[__].monthlyPaymentPrice} ${AppStrings.strMony}",
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
