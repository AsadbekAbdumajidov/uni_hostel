import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
import 'package:uni_hostel/presentation/view/tabs/request/web/widget/filler_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/checkbox_list_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/down_buttons_widget.dart';

class RequestWebScreen extends StatelessWidget {
  const RequestWebScreen({super.key, this.infoResponse});
final StudentInfoResponseModel? infoResponse;
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
        FillerWidget(response: infoResponse),
        CheckboxListWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: CustomButton(
              radius: 30,
              width: 180,
              text: AppStrings.strUploadFile,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.whiteColor),
              onTap: () {}),
        ),
        Divider(color: AppColors.bodyTextColor),
        DownButtonsWidget(
          onTapBack: () => Navigator.pop(context),
          onTapNext: () {},
        ),
      ],
    );
  }
}
