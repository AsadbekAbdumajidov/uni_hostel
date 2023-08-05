import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/data/models/statistic/statistic_response.dart';
import 'package:UniHostel/presentation/components/animated_progress_indicator.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';

class StatItemWidget extends StatelessWidget {
  const StatItemWidget({super.key, required this.response});
  final StatisticResponse? response;
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
                  count: response?.allOrders ?? 0,
                  percantage: response?.allOrdersPercentage ?? 0,
                  label: AppStrings.strRequests,
                ),
                AnimatedCircularProgressIndicator(
                  count: response?.acceptedOrders ?? 0,
                  percantage: response?.acceptedOrdersPercentage ?? 0,
                  label: AppStrings.strApproveds,
                ).paddingSymmetric(horizontal: responsiveText),
                AnimatedCircularProgressIndicator(
                  count: response?.cancelledOrders ?? 0,
                  percantage: response?.cancelledOrdersPercentage ?? 0,
                  label: AppStrings.strRejected,
                ),
                AnimatedCircularProgressIndicator(
                  count: response?.queuedOrders ?? 0,
                  percantage: response?.queuedOrdersPercentage ?? 0,
                  label: AppStrings.strWaited,
                ).paddingOnly(left: responsiveText),
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCircularProgressIndicator(
                count: response?.allOrders ?? 0,
                percantage: response?.allOrdersPercentage ?? 0,
                label: AppStrings.strRequests,
              ),
              AnimatedCircularProgressIndicator(
                count: response?.acceptedOrders ?? 0,
                percantage: response?.acceptedOrdersPercentage ?? 0,
                label: AppStrings.strApproveds,
              ).paddingSymmetric(horizontal: responsiveText),
              AnimatedCircularProgressIndicator(
                count: response?.cancelledOrders ?? 0,
                percantage: response?.cancelledOrdersPercentage ?? 0,
                label: AppStrings.strRejected,
              ),
              AnimatedCircularProgressIndicator(
                count: response?.queuedOrders ?? 0,
                percantage: response?.queuedOrdersPercentage ?? 0,
                label: AppStrings.strWaited,
              ).paddingOnly(left: responsiveText),
            ],
          ).paddingOnly(bottom: 30, top: 20);
  }
}
