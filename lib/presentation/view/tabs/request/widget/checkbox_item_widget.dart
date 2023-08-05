import 'package:flutter/material.dart';
import 'package:UniHostel/core/themes/app_colors.dart';

class CheckboxItemWidget extends StatelessWidget {
  const CheckboxItemWidget(
      {super.key, required this.title, required this.value, this.onChange});
  final String title;
  final bool value;
  final Function(bool? v)? onChange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            activeColor: AppColors.primaryColor,
            value: value,
            onChanged: onChange),
        Expanded(
          child: Text(title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displaySmall),
        ),
      ],
    );
  }
}
