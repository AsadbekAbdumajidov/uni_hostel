import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:uni_hostel/presentation/view/tabs/request/mobile/widget/filler_widget_mobile.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/checkbox_list_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/down_buttons_widget.dart';

class RequestMobileScreen extends StatelessWidget {
  const RequestMobileScreen(
      {super.key,
      this.infoResponse,
      required this.fileOnTap,
      required this.onTapNext,  required this.fileName});
  final BookingInfoResponse? infoResponse;
  final Function() fileOnTap;
  final Function() onTapNext;
  final String fileName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        FillerMobileWidget(response: infoResponse),
        CheckboxListWidget(),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomButton(
              radius: 30,
              width: 180,
              text: AppStrings.strUploadFile,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.whiteColor),
              onTap: fileOnTap,
            ),
            SizedBox(width: 14),
            Text(
              fileName ,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.bodyTextColor),
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Divider(color: AppColors.bodyTextColor),
        DownButtonsWidget(
          onTapBack: () {},
          onTapNext: onTapNext,
        ),
      ],
    );
  }
}
