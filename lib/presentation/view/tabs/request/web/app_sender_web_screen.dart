import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
import 'package:uni_hostel/presentation/view/tabs/request/web/widget/request_web_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/status_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/step_widget.dart';

class AppSenderWebScreen extends StatelessWidget {
  const AppSenderWebScreen(
      {super.key, this.infoResponse, required this.currentIndex});
  final StudentInfoResponseModel? infoResponse;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepWidget(currentIndex: currentIndex),
        currentIndex == 1
            ? RequestWebScreen(infoResponse: infoResponse)
            : currentIndex == 2
                ? StatusWidget(
                    img: AppIcons.iconExpertise,
                    title: AppStrings.strExpertiseAbout)
                : infoResponse?.type == "rejected"
                    ? StatusWidget(
                        img: AppIcons.iconRejected,
                        title: AppStrings.strRejectedAbout,
                      )
                    : StatusWidget(
                        img: AppIcons.iconSuccess,
                        title: AppStrings.strsuccessAbout,
                        onTap: () {},
                      )
      ],
    );
  }
}
