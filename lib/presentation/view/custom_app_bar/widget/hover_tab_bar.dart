import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class TopTabItem extends StatelessWidget {
  final Function()? onTap;
  final int currentIndex;
  final int index;
  final String title;
  const TopTabItem({
    super.key,
    this.onTap,
    required this.title,
    required this.currentIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: index == currentIndex
          ? Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.primaryColor.withOpacity(0.1)),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.bodyTextColor)),
              ),
            )
          : Text(title,
          overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.bodyTextColor)),
    );
  }
}
