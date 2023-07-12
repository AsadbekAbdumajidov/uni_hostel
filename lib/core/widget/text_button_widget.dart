import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, this.onHover, this.onTap, required this.title});
final Function(bool v)? onHover;
  final Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: onHover,
      onPressed: onTap,
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: AppColors.bodyTextColor)),
    );
  }
}
