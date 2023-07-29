import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/animated_progress_indicator.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class StatItemWidget extends StatelessWidget {
  const StatItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double responsiveText = ResponsiveWidget.isMobileLarge(context) ? 20 : 60;
    return ResponsiveWidget.isMobileLarge(context)
        ? Container(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                AnimatedCircularProgressIndicator(
                  count: 50,
                  label: AppStrings.strRequests,
                ),
                AnimatedCircularProgressIndicator(
                  count: 2,
                  label: AppStrings.strApproveds,
                ).paddingSymmetric(horizontal: responsiveText),
                AnimatedCircularProgressIndicator(
                  count: 5,
                  label: AppStrings.strRejected,
                ),
                AnimatedCircularProgressIndicator(
                  count: 12,
                  label: AppStrings.strWaited,
                ).paddingOnly(left: responsiveText),
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCircularProgressIndicator(
                count: 50,
                label: AppStrings.strRequests,
              ),
              AnimatedCircularProgressIndicator(
                count: 11,
                label: AppStrings.strApproveds,
              ).paddingSymmetric(horizontal: responsiveText),
              AnimatedCircularProgressIndicator(
                count: 2,
                label: AppStrings.strRejected,
              ),
              AnimatedCircularProgressIndicator(
                count: 12,
                label: AppStrings.strWaited,
              ).paddingOnly(left: responsiveText),
            ],
          );
  }
}
