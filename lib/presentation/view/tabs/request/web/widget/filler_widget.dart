import 'package:flutter/cupertino.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/data/models/booking_information/booking_info_response_model.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/text_item_widget.dart';

class FillerWidget extends StatelessWidget {
  const FillerWidget({super.key, this.response});
  final BookingInfoResponse? response;
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
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strPhoneNumber,
              initialValue: response?.phoneNumber ?? "-",
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
                initialValue: response?.passportSeries ?? "-",
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 5,
                hintText: AppStrings.strJSH,
                initialValue: response?.jshir,
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 4,
                hintText: AppStrings.strDateOfBirth,
                initialValue: response?.dateOfBirth ?? "-",
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
              hintText: AppStrings.strRegion,
              initialValue: response?.region ?? "-",
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strDistrict,
              initialValue: response?.district ?? "-",
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              hintText: AppStrings.strStreetAndHouseNumber,
              initialValue: response?.neighborhood ?? "-",
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
                initialValue: response?.faculty ?? "-",
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 3,
                hintText: AppStrings.strCourse,
                initialValue: response?.course ?? "-",
              ),
              SizedBox(width: 20),
              TextItemWidget(
                flex: 4,
                hintText: AppStrings.strGroup,
                initialValue: response?.group ?? "-",
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
