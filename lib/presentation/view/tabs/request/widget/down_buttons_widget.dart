import 'package:flutter/material.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/widget/custom_button.dart';

class DownButtonsWidget extends StatelessWidget {
  const DownButtonsWidget(
      {super.key, required this.onTapBack, required this.onTapNext});
  final Function() onTapBack;
  final Function() onTapNext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              bgColor: AppColors.transparent,
              text: AppStrings.strCancellation,
              onTap: onTapBack,
              width: 100,
              style: Theme.of(context).textTheme.displaySmall),
          SizedBox(width: 20),
          CustomButton(
            text: AppStrings.strSent,
            onTap: onTapNext,
            width: 100,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
