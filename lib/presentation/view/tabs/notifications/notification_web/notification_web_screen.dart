import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/view/tabs/notifications/widget/times_item_widget.dart';

class NotificationWebScreen extends StatelessWidget {
  const NotificationWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 16, left: 16, bottom: 20),
      child: Container(
        height: 800,
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
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Expanded(
            flex: 2,
            child:  Text(AppStrings.strNotification,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w500)),
          ).paddingOnly(bottom: 30),
          Expanded(
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
                  size: ColumnSize.M,
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
                          DataCell(Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("To‘lov qilinganlik haqida",
                                  style:
                                      Theme.of(context).textTheme.displaySmall),
                              SizedBox(height: 4),
                              Text(
                                  "Yotoqxonadan joy oldingiz va 5-sentabrdan joylashishingiz mumkin",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(fontSize: 12)),
                            ],
                          ).paddingSymmetric(vertical: 8)),
                          DataCell(TimeItemWidget(
                              data: "06.07.2023", time: "16:48")),
                        ],
                      )),
            ),
          ),
        ]).paddingAll(30),
      ),
    );
  }
}
