import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/tabs/payment/widget/payment_card_item_widget.dart';

class PaymentToCard extends StatelessWidget {
  const PaymentToCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.strPaymentIs,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Container(
              width: 500,
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
                            ?.copyWith(fontSize: ResponsiveWidget.isTablet(context) ? 16 : 18),
                      ),
                      Text(
                        AppStrings.strAmountPayment,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontSize: ResponsiveWidget.isTablet(context) ? 16 : 18),
                      ),
                    ],
                  ).paddingOnly(bottom: 20),
                  PaymentCardItemWidget(
                    icon: AppIcons.iconPay,
                    title: AppStrings.strOneYearPay,
                    onTap: () {},
                  ),
                  PaymentCardItemWidget(
                    icon: AppIcons.iconPouch,
                    title: AppStrings.strThreeMonthPay,
                    onTap: () {},
                  ),
                  PaymentCardItemWidget(
                    icon: AppIcons.iconPaymentDate,
                    title: AppStrings.strCheackPayDate,
                    onTap: () {},
                  ),
                  CustomButton(
                    width: 200,
                    text: AppStrings.strPay, onTap: (){}).paddingOnly(top: 30,bottom: 10)
                ],
              ).paddingAll(30)),
        ],
      ),
    );
  }
}
