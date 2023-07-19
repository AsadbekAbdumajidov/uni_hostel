import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/payment/payment_cubit.dart';
import 'package:uni_hostel/presentation/view/tabs/payment/widget/payment_alert_dialog.dart';
import 'package:uni_hostel/presentation/view/tabs/payment/widget/payment_card_item_widget.dart';

class PaymentToCard extends StatelessWidget {
  final int currentIndex;
  const PaymentToCard({super.key, required this.currentIndex});

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
                                fontSize: ResponsiveWidget.isTablet(context)
                                    ? 16
                                    : 18),
                      ),
                      Text(
                        AppStrings.strAmountPayment,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                fontSize: ResponsiveWidget.isTablet(context)
                                    ? 16
                                    : 18),
                      ),
                    ],
                  ).paddingOnly(bottom: 20),
                  PaymentCardItemWidget(
                    index: 1,
                    currentIndex: currentIndex,
                    icon: AppIcons.iconPay,
                    title: AppStrings.strOneYearPay,
                    onTap: () => context.read<PaymentCubit>().changePay(1),
                  ),
                  PaymentCardItemWidget(
                    index: 2,
                    currentIndex: currentIndex,
                    icon: AppIcons.iconPouch,
                    title: AppStrings.strThreeMonthPay,
                    onTap: () => context.read<PaymentCubit>().changePay(2),
                  ),
                  PaymentCardItemWidget(
                    index: 3,
                    currentIndex: currentIndex,
                    icon: AppIcons.iconPaymentDate,
                    title: AppStrings.strCheackPayDate,
                    onTap: () => context.read<PaymentCubit>().changePay(3),
                  ),
                  CustomButton(
                    width: 200,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: ResponsiveWidget.isTablet(context) ? 16 : 18,
                        color: AppColors.whiteColor),
                    text: AppStrings.strPay,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return PaymentAlertDialog(
                              cost: "200 000 so'm",
                              onTap: () {},
                            );
                          });
                    },
                  ).paddingOnly(top: 30, bottom: 10)
                ],
              ).paddingAll(30)),
        ],
      ),
    );
  }
}
