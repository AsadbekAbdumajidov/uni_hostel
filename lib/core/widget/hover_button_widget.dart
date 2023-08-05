import 'package:flutter/material.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/utils/size_konfig.dart';

class HoverButtonWidget extends StatelessWidget {
  const HoverButtonWidget(
      {super.key, this.onHover, this.onTap, required this.title});
  final Function(bool v)? onHover;
  final Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        clipBehavior: Clip.none,
        style: ElevatedButton.styleFrom(
          shadowColor: AppColors.transparent,
          padding: EdgeInsets.symmetric(horizontal: wi(6)),
          backgroundColor: AppColors.primaryColor.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onHover: onHover,
        onPressed: onTap,
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: AppColors.bodyTextColor)));
  }
}
