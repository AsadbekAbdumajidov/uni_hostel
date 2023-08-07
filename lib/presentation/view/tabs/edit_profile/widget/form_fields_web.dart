import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/presentation/components/drobdown_widget.dart';
import 'package:UniHostel/presentation/cubit/profile/profile_cubit.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/text_item_widget.dart';

class FormFieldsWeb extends StatelessWidget {
  const FormFieldsWeb({super.key, this.response, required this.course});
  final StudentInfoResponseModel? response;
  final String course;
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ProfileCubit>();
    return Column(
      children: [
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              isReadOnly: true,
              hintText: AppStrings.strFullName,
              initialValue: response?.fullName ?? "-",
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              isReadOnly: false,
              hintText: AppStrings.strPhoneNumber,
              initialValue: response?.phoneNumber ?? "-",
              onchange: (v) => bloc.getPhoneNumber(v),
            ),
            Flexible(
              flex: 5,
              child: SizedBox.shrink(),
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              isReadOnly: true,
              hintText: AppStrings.strPassportSeries,
              initialValue: response?.passportSeries ?? "-",
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              isReadOnly: true,
              hintText: AppStrings.strJSH,
              initialValue: response?.jshir,
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              isReadOnly: true,
              hintText: AppStrings.strDateOfBirth,
              initialValue: response?.dateOfBirth ?? "-",
            ),
          ],
        ).paddingSymmetric(vertical: 30),
        Row(
          children: [
            TextItemWidget(
              flex: 4,
              isReadOnly: false,
              hintText: AppStrings.strRegion,
              initialValue: response?.region ?? "-",
              onchange: (v) => bloc.getRegion(v),
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              isReadOnly: false,
              hintText: AppStrings.strDistrict,
              initialValue: response?.district ?? "-",
              onchange: (v) => bloc.getDistrict(v),
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              isReadOnly: false,
              hintText: AppStrings.strStreetAndHouseNumber,
              initialValue: response?.neighborhood ?? "-",
              onchange: (v) => bloc.getNeighborhood(v),
            ),
            Flexible(
              flex: 4,
              child: SizedBox.shrink(),
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 6,
              isReadOnly: true,
              hintText: AppStrings.strFaculty,
              initialValue: response?.faculty ?? "-",
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.strCourse,
                    style: Theme.of(context).textTheme.displaySmall),
                SizedBox(height: 10),
                DropDownWidget(
                    width: 150,
                    index: course,
                    list: coursesList,
                    onChanged: (v) => bloc.getCourse(v)),
              ],
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 4,
              isReadOnly: false,
              hintText: AppStrings.strGroup,
              initialValue: response?.group ?? "-",
               onchange: (v) => bloc.getGroup(v),
            ),
            Flexible(
              flex: 2,
              child: SizedBox.shrink(),
            ),
          ],
        ).paddingSymmetric(vertical: 30),
      ],
    );
  }
}
