import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem(
      {super.key,
      this.onTap,
      required this.currentIndex,
      required this.index,
      required this.title});
  final Function()? onTap;
  final int currentIndex;
  final int index;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: index == currentIndex
          ? Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.darkPrimaryColour),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(title,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.whiteColor)),
                  ),
                ],
              ),
            )
          : Text(title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.whiteColor)).paddingOnly(left: 10),
    ).paddingOnly(bottom: 20);
  }
}
