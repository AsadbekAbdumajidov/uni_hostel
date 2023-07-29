import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
import 'package:uni_hostel/presentation/view/tabs/request/mobile/widget/request_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/status_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/step_widget.dart';

class AppSenderMobileScreen extends StatelessWidget {
  const AppSenderMobileScreen(
      {super.key,
      this.infoResponse,
      required this.currentIndex,
      required this.fileOnTap,
      required this.onTapNext});
  final StudentInfoResponseModel? infoResponse;
  final int currentIndex;
  final Function() fileOnTap;
  final Function() onTapNext;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepWidget(currentIndex: currentIndex),
        currentIndex == 1
            ? RequestMobileScreen(
                infoResponse: infoResponse,
                fileOnTap: fileOnTap,
                onTapNext: onTapNext,
              )
            : currentIndex == 2
                ? StepStatusWidget(
                    img: AppIcons.iconExpertise,
                    title: AppStrings.strExpertiseAbout)
                : infoResponse?.isOrdered == "cancelled"
                    ? StepStatusWidget(
                        img: AppIcons.iconBgRejected,
                        title: AppStrings.strRejectedAbout,
                      )
                    : StepStatusWidget(
                        img: AppIcons.iconSuccess,
                        title: AppStrings.strsuccessAbout,
                        onTap: () {},
                      )
      ],
    ).paddingSymmetric(horizontal: 8);
  }
}
