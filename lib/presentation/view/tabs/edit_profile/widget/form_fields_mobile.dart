import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/data/models/student_information/student_info_response_model.dart';
import 'package:UniHostel/presentation/components/drobdown_widget.dart';
import 'package:UniHostel/presentation/cubit/profile/profile_cubit.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/text_item_widget.dart';

class FormFieldsMobile extends StatelessWidget {
  FormFieldsMobile({super.key, this.response, required this.course});
  final StudentInfoResponseModel? response;
  final String course;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ProfileCubit>();
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Row(
                children: [
                  TextItemWidget(
                    flex: 5,
                    isReadOnly: true,
                    hintText: AppStrings.strFullName,
                    initialValue: response?.fullName ?? "-",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  TextItemWidget(
                    flex: 5,
                    isReadOnly: false,
                    hintText: AppStrings.strPhoneNumber,
                    initialValue: response?.phoneNumber ?? "-",
                    onchange: (v) => bloc.getPhoneNumber(v),
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
                ],
              ).paddingSymmetric(vertical: 20),
              Row(
                children: [
                  TextItemWidget(
                    flex: 5,
                    isReadOnly: true,
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
                    isReadOnly: false,
                    hintText: AppStrings.strRegion,
                    initialValue: response?.region ?? "-",
                    onchange: (v) => bloc.getRegion(v),
                  ),
                ],
              ),
              Row(
                children: [
                  TextItemWidget(
                    flex: 4,
                    isReadOnly: false,
                    hintText: AppStrings.strDistrict,
                    initialValue: response?.district ?? "-",
                    onchange: (v) => bloc.getDistrict(v),
                  ),
                ],
              ).paddingSymmetric(vertical: 20),
              Row(
                children: [
                  TextItemWidget(
                    flex: 5,
                    isReadOnly: false,
                    initialValue: response?.neighborhood ?? "-",
                    hintText: AppStrings.strStreetAndHouseNumber,
                    onchange: (v) => bloc.getNeighborhood(v),
                  ),
                ],
              ),
              Row(
                children: [
                  TextItemWidget(
                    flex: 3,
                    isReadOnly: true,
                    initialValue: response?.faculty ?? "-",
                    hintText: AppStrings.strFaculty,
                  ),
                ],
              ).paddingSymmetric(vertical: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.strCourse,
                      style: Theme.of(context).textTheme.displaySmall),
                  SizedBox(height: 10),
                  DropDownWidget(
                      index: course,
                      list: coursesList,
                      onChanged: (v) => bloc.getCourse(v)),
                ],
              ),
              Row(
                children: [
                  TextItemWidget(
                    flex: 4,
                    isReadOnly: false,
                    initialValue: response?.group ?? "-",
                    hintText: AppStrings.strGroup,
                    onchange: (v) => bloc.getGroup(v),
                  ),
                ],
              ).paddingSymmetric(vertical: 20),
            ],
          ),
        ),
        Expanded(flex: 1, child: SizedBox.shrink())
      ],
    );
  }
}
