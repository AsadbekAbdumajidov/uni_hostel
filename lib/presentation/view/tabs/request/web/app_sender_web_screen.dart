import 'package:flutter/material.dart';
import 'package:UniHostel/core/themes/app_icons.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:UniHostel/presentation/view/tabs/request/web/widget/request_web_screen.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/status_widget.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/step_widget.dart';

class AppSenderWebScreen extends StatelessWidget {
  const AppSenderWebScreen(
      {super.key,
      this.infoResponse,
      required this.currentIndex,
      required this.fileOnTap,
      required this.onTapNext,
      required this.fileName});
  final BookingInfoResponse? infoResponse;
  final int currentIndex;
  final Function() fileOnTap;
  final Function() onTapNext;
  final String fileName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepWidget(currentIndex: currentIndex),
        currentIndex == 1
            ? RequestWebScreen(
                infoResponse: infoResponse,
                fileOnTap: fileOnTap,
                onTapNext: onTapNext,
                fileName: fileName,
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
                    : infoResponse?.isOrdered == "in_queue"
                        ? StepStatusWidget(
                            img: AppIcons.iconInQueue,
                            title: AppStrings.strInQueue,
                          )
                        : StepStatusWidget(
                            img: AppIcons.iconSuccess,
                            title: AppStrings.strsuccessAbout,
                            onTap: () {
                              // context.read<TopNavBarCubit>().changeIndex(1);
                              // Navigator.pushNamed(
                              //     context, RouteName.payment.route);
                            })
      ],
    );
  }
}
