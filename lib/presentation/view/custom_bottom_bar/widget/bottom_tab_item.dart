// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class BottomTabItem extends StatelessWidget {
  const BottomTabItem(
      {Key? key,
      required int currentIndex,
      required this.onTap,
      required this.label,
      required this.icon,
      required this.index})
      : _currentIndex = currentIndex,
        super(key: key);

  final int _currentIndex;
  final int index;
  final Function() onTap;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 12),
            // SvgPicture.asset(
            //   icon,
            //   color: index == _currentIndex
            //       ? AppColors.primaryColor
            //       : AppColors.blackColor,
            // ),
            Icon(
              icon,
              size: 26,
              color: index == _currentIndex
                  ? AppColors.primaryColor
                  : AppColors.bodyTextColor,
            ),
            SizedBox(height: 20),
            // Text(label,
            //     overflow: TextOverflow.ellipsis,
            //     maxLines: 1,
            //     style: Theme.of(context).textTheme.displaySmall?.copyWith(
            // color: index == _currentIndex
            //     ? AppColors.primaryColor
            //     : AppColors.blackColor,
            //         fontWeight: index == _currentIndex
            //             ? FontWeight.w600
            //             : FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
