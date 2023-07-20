import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/data/models/student_information/student_info_response_model.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/text_item_widget.dart';

class FillerMobileWidget extends StatelessWidget {
  const FillerMobileWidget({super.key, required this.response});
  final StudentInfoResponseModel? response;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strFullName,
              initialValue: response?.fullName ?? "-",
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strPassportSeries,
              initialValue: response?.passportSeries ?? "-",

            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strJSH,
              initialValue: response?.jshir ?? "-",

            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strDateOfBirth,
              initialValue: response?.dateOfBirth ?? "-",

            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strProvince,
              initialValue: response?.region ?? "-",

            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strDistrict,
              initialValue: response?.district ?? "-",

            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              initialValue: response?.neighborhood ?? "-",
              hintText: AppStrings.strStreetAndHouseNumber,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 3,
              initialValue: response?.faculty ?? "-",
              hintText: AppStrings.strFaculty,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 3,
              initialValue: response?.course ?? "-",
              hintText: AppStrings.strCourse,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              initialValue: response?.group ?? "-",
              hintText: AppStrings.strGroup,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
      ],
    );
  }
}
