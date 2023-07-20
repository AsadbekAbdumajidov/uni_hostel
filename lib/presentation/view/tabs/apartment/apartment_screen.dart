// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/mobile_card_list.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/web_card_list.dart';

class ApartmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: ResponsiveWidget.isMobileLarge(context) ? 40 : 100),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: AppStrings.strMainFirst,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: ResponsiveWidget.isMobileLarge(context)
                              ? 30
                              : 55)),
                  TextSpan(
                      text: AppStrings.strMainSecond,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: ResponsiveWidget.isMobileLarge(context)
                              ? 30
                              : 55)),
                ],
              ),
            ).paddingSymmetric(horizontal: 12),
            SizedBox(height: 30),
            Text(AppStrings.strWebsiteIsForYou,
                style: Theme.of(context).textTheme.titleSmall),
            SizedBox(height: 60),
            ResponsiveWidget.isMobileLarge(context)
                ? CardListMobile()
                : CardListWeb()
          ],
        ),
      ),
    ));
  }
}
