import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/text_item_widget.dart';

class FillerMobileWidget extends StatelessWidget {
  const FillerMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strSurname,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strName,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strFatherName,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strPassportSeries,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strJSH,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strDateOfBirth,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strProvince,
              suffixOnTap: () {},
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strDistrict,
              suffixOnTap: () {},
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strStreetAndHouseNumber,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 3,
              hintText: AppStrings.strFaculty,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 3,
              hintText: AppStrings.strCourse,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strGroup,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
      ],
    );
  }
}
