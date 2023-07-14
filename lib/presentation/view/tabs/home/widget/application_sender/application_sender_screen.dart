import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/tabs/home/widget/application_sender/widget/down_buttons_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/home/widget/application_sender/widget/filler_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/home/widget/application_sender/widget/step_widget.dart';
import 'widget/checkbox_list_widget.dart';

class ApplicationSenderScreen extends StatelessWidget {
  const ApplicationSenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ResponsiveWidget(
              mobile: Column(
                children: [],
              ),
              desktop: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StepWidget(currentIndex: 1),
                  Text(
                    AppStrings.strInformationYourself,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 40),
                    child: Text(
                      AppStrings.strYourself,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.bodyTextColor),
                    ),
                  ),
                  FillerWidget(),
                  CheckboxListWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CustomButton(
                        radius: 30,
                        width: 180,
                        text: AppStrings.strUploadFile,
                        onTap: () {}),
                  ),
                  Divider(color: AppColors.bodyTextColor),
                  DownButtonsWidget(
                    onTapBack: () => Navigator.pop(context),
                    onTapNext: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
