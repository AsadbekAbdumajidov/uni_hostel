import 'package:flutter/cupertino.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/text_item_widget.dart';

class FillerWidget extends StatelessWidget {
  const FillerWidget({super.key});

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
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strName,
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              hintText: AppStrings.strFatherName,
            ),
            Flexible(
              flex: 5,
              child: SizedBox.shrink(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              TextItemWidget(
                flex: 5,
                hintText: AppStrings.strPassportSeries,
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 5,
                hintText: AppStrings.strJSH,
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 4,
                hintText: AppStrings.strDateOfBirth,
              ),
              Flexible(
                flex: 2,
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strProvince,
              suffixOnTap: () {},
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strDistrict,
              suffixOnTap: () {},
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strStreetAndHouseNumber,
            ),
            Flexible(
              flex: 6,
              child: SizedBox.shrink(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              TextItemWidget(
                flex: 3,
                hintText: AppStrings.strFaculty,
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 3,
                hintText: AppStrings.strCourse,
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 4,
                hintText: AppStrings.strGroup,
              ),
              Flexible(
                flex: 6,
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
