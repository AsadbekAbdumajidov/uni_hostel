import 'package:flutter/cupertino.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/view/tabs/home/widget/application_sender/widget/step_item_widget.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80, left: 80, top: 60, bottom: 40),
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
              StepItemWidget(
                title: AppStrings.strSubmitApplication,
                index: 1,
                currentIndex: currentIndex,
              ),
              Image.asset(AppIcons.iconArrow),
              StepItemWidget(
                title: AppStrings.strSent,
                currentIndex: currentIndex,
                index: 2,
              ),
              Image.asset(AppIcons.iconArrow),
              StepItemWidget(
                title: AppStrings.strExpertise,
                currentIndex: currentIndex,
                index: 3,
              ),
              Image.asset(AppIcons.iconArrow),
              StepItemWidget(
                title: AppStrings.strReviewed,
                currentIndex: currentIndex,
                index: 4,
              ),
            ],
          )),
    );
  }
}
