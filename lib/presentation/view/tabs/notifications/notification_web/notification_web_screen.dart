import 'package:UniHostel/core/themes/app_icons.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/presentation/components/loading_widget.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/notifications/notifications_cubit.dart';
import 'package:UniHostel/presentation/view/tabs/notifications/widget/times_item_mobile_widget.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/status_widget.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/presentation/view/tabs/notifications/widget/times_item_web_widget.dart';

class NotificationWebScreen extends StatelessWidget {
  const NotificationWebScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(
            color: AppColors.primaryColor.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: AppColors.bodyTextColor.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          if (state.status == Status.LOADING) {
            return LoadingWidget();
          }
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(AppStrings.strNotification,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w500)),
                ).paddingOnly(bottom: 30),
                (state.responseList!.isEmpty)
                    ? StepStatusWidget(img: AppIcons.iconBgRejected, title: AppStrings.strIsEmptyNotifications)
                    : Expanded(
                        flex: 13,
                        child: DataTable2(
                          horizontalMargin: 0,
                          columnSpacing: 20,
                          dataRowHeight: 70,
                          columns: [
                            DataColumn2(
                                size: ColumnSize.L,
                                label: Text(AppStrings.strNames,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontSize: 18))),
                            DataColumn2(
                                size: ColumnSize.S,
                                label: Text(AppStrings.strTimes,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontSize: 18))),
                          ],
                          rows: List<DataRow>.generate(
                              state.responseList!.length,
                              (index) => DataRow(
                                    cells: [
                                      DataCell(Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              state.responseList?[index]
                                                      .title ??
                                                  "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall),
                                          SizedBox(height: 4),
                                          Text(
                                              state.responseList?[index].text ??
                                                  "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium
                                                  ?.copyWith(fontSize: 12)),
                                        ],
                                      ).paddingSymmetric(vertical: 8)),
                                      DataCell(ResponsiveWidget.isMobileLarge(
                                              context)
                                          ? TimesItemMobileWidget()
                                          : TimeItemWebWidget(
                                              data: "06.07.2023",
                                              time: "16:48")),
                                    ],
                                  )),
                        ),
                      ),
              ]).paddingAll(ResponsiveWidget.isMobileLarge(context) ? 0 : 20);
        },
      ),
    ).paddingSymmetric(vertical: 25, horizontal: 16);
  }
}
