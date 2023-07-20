import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class StepItemWidget extends StatelessWidget {
  const StepItemWidget(
      {super.key,
      required this.index,
      required this.title,
      required this.currentIndex});
  final int index;
  final int currentIndex;
  final String title;
  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isTablet(context) ? 14 : 16;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: currentIndex == index
                  ? AppColors.primaryColor
                  : AppColors.whiteColor,
              border: Border.all(color: AppColors.primaryColor),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: currentIndex == index
                  ? Icon(CupertinoIcons.check_mark,
                      color: AppColors.whiteColor, size: textSize + 4)
                  : Text(
                      index.toString(),
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.primaryColor, fontSize: textSize),
                    ),
            ),
          ),
        ),
        ResponsiveWidget.isMobileLarge(context)
            ? SizedBox.shrink()
            : Container(
                child: Text(title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: textSize)),
              ).paddingOnly(left: 10),
      ],
    );
  }
}
