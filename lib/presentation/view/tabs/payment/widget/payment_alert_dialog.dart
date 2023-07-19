import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/formater.dart';
import 'package:uni_hostel/core/utils/validator.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/core/widget/custom_text_field.dart';

class PaymentAlertDialog extends StatelessWidget {
  const PaymentAlertDialog(
      {super.key, required this.cost, required this.onTap});
  final String cost;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 400,
        width: 524,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.strPaymentType,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.pop(context),
                  child: Icon(CupertinoIcons.xmark),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(AppStrings.strPaymentQuantity,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.bodyTextColor)),
                SizedBox(height: 6),
                CustomTextField(initialValue: cost, readOnly: true),
                SizedBox(height: 20),
                Text(AppStrings.strCardDate,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.bodyTextColor)),
                SizedBox(height: 6),
                CustomTextField(
                  textInputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CardNumberInputFormatter(),
                  ],
                  validator: (dynamic v) => Validator.fieldChecker(
                      value: v, message: AppStrings.strEnterCardDate),
                  hintText: AppStrings.strEnterCardDate,
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(AppStrings.strValidityPeriod,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.w400,color: AppColors.bodyTextColor)),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(
                            textInputFormatter: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                              CardMonthInputFormatter(),
                            ],
                            validator: (dynamic v) => Validator.fieldChecker(
                                value: v, message: AppStrings.strEnterCardDate),
                            hintText: "MM/YY",
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 5, child: SizedBox.shrink())
                  ],
                ),
                SizedBox(height: 12),
              ],
            ),
            Spacer(),
            CustomButton(text: AppStrings.strPay, onTap: onTap)
          ],
        ).paddingAll(30),
      ),
    );
  }
}

