import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_icons.dart';
import '../../../../../core/themes/app_text.dart';

class NotificationMobileScreen extends StatelessWidget {
  const NotificationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Container(
        height: maxHeight,
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(AppStrings.strNotification,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w500)),
            ),
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: DataTable2(
                horizontalMargin: 0,
                columnSpacing: 20,
                dataRowHeight: 70,
                columns: [
                  DataColumn2(
                      label: Text(AppStrings.strNames,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontSize: 18))),
                  DataColumn(
                      label: Text(AppStrings.strTimes,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontSize: 18))),
                ],
                rows: List<DataRow>.generate(
                    15,
                    (index) => DataRow(
                          cells: [
                            DataCell(Text("To‘lov qilinganlik haqida",
                                style:
                                    Theme.of(context).textTheme.displaySmall)),
                            DataCell(Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  SvgPicture.asset(AppIcons.iconCalendar),
                                  SizedBox(width: 5),
                                  Text("06.07.2023",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(fontSize: 18)),
                                ],
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(AppIcons.iconTime),
                                  SizedBox(width: 5),
                                  Text(
                                    "16:48",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontSize: 18),
                                  ),
                                ],
                              )
                            ]).paddingOnly(bottom: 4)),
                          ],
                        )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
