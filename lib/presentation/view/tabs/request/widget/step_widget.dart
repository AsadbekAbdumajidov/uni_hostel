import 'package:flutter/cupertino.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_icons.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/step_item_widget.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: ResponsiveWidget.isTablet(context) ? 0 : 80,
          left: ResponsiveWidget.isTablet(context) ? 0 : 80,
          top: 60,
          bottom: 40),
      child: Container(
          width: context.w,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.bodyTextColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 60),
              Flexible(
                flex: 5,
                child: StepItemWidget(
                  title: AppStrings.strSubmitApplication,
                  index: 1,
                  currentIndex: currentIndex,
                ),
              ),
              Image.asset(AppIcons.iconArrow),
              Flexible(
                  flex: 5,
                  child: StepItemWidget(
                    title: AppStrings.strExpertise,
                    currentIndex: currentIndex,
                    index: 2,
                  )),
              Image.asset(AppIcons.iconArrow),
              Flexible(
                  flex: 5,
                  child: StepItemWidget(
                    title: AppStrings.strReviewed,
                    currentIndex: currentIndex,
                    index: 3,
                  )),
            ],
          )),
    );
  }
}
