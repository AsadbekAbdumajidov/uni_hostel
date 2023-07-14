import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

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
    return Row(
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
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: currentIndex == index
                  ? const Icon(CupertinoIcons.check_mark,
                      color: AppColors.whiteColor)
                  : Text(
                      index.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.primaryColor),
                    ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(title, style: Theme.of(context).textTheme.displaySmall),
      ],
    );
  }
}
