import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/checkbox_item_widget.dart';

class CheckboxListWidget extends StatelessWidget {
  const CheckboxListWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              CheckboxItemWidget(
                onChange: (v) =>
                    context.read<SubmitApplicationCubit>().checkBox(1),
                title: AppStrings.strIronNotebook,
                value: index == 1 ? true : false,
              ),
              SizedBox(width: 20),
              CheckboxItemWidget(
                onChange: (v) =>
                    context.read<SubmitApplicationCubit>().checkBox(2),
                title: AppStrings.strWomenNotebook,
                value: index == 2 ? true : false,
              ),
              CheckboxItemWidget(
                onChange: (v) =>
                    context.read<SubmitApplicationCubit>().checkBox(3),
                title: AppStrings.strYouthNotebook,
                value: index == 3 ? true : false,
              ),
              SizedBox(width: 20),
              CheckboxItemWidget(
                onChange: (v) =>
                    context.read<SubmitApplicationCubit>().checkBox(4),
                title: AppStrings.strFosterCareHome,
                value: index == 4 ? true : false,
              ),
              ResponsiveWidget.isMobile(context)
                  ? Column(
                      children: [
                        CheckboxItemWidget(
                          onChange: (v) => context
                              .read<SubmitApplicationCubit>()
                              .checkBox(5),
                          title: AppStrings.strParentsDead,
                          value: index == 5 ? true : false,
                        ),
                        SizedBox(width: 20),
                        CheckboxItemWidget(
                          onChange: (v) => context
                              .read<SubmitApplicationCubit>()
                              .checkBox(6),
                          title: AppStrings.strOneParentsDead,
                          value: index == 6 ? true : false,
                        ),
                        CheckboxItemWidget(
                          onChange: (v) => context
                              .read<SubmitApplicationCubit>()
                              .checkBox(7),
                          title: AppStrings.strDisabledGroup,
                          value: index == 7 ? true : false,
                        ),
                        SizedBox(width: 20),
                        CheckboxItemWidget(
                          onChange: (v) => context
                              .read<SubmitApplicationCubit>()
                              .checkBox(8),
                          title: AppStrings.strGiftedStudent,
                          value: index == 8 ? true : false,
                        ),
                      ],
                    )
                  : SizedBox.shrink()
            ],
          ),
        ),
        ResponsiveWidget.isMobile(context)
            ? SizedBox.shrink()
            : Expanded(
                child: Column(
                  children: [
                    CheckboxItemWidget(
                      onChange: (v) =>
                          context.read<SubmitApplicationCubit>().checkBox(5),
                      title: AppStrings.strParentsDead,
                      value: index == 5 ? true : false,
                    ),
                    SizedBox(width: 20),
                    CheckboxItemWidget(
                      onChange: (v) =>
                          context.read<SubmitApplicationCubit>().checkBox(6),
                      title: AppStrings.strOneParentsDead,
                      value: index == 6 ? true : false,
                    ),
                    CheckboxItemWidget(
                      onChange: (v) =>
                          context.read<SubmitApplicationCubit>().checkBox(7),
                      title: AppStrings.strDisabledGroup,
                      value: index == 7 ? true : false,
                    ),
                    SizedBox(width: 20),
                    CheckboxItemWidget(
                      onChange: (v) =>
                          context.read<SubmitApplicationCubit>().checkBox(8),
                      title: AppStrings.strGiftedStudent,
                      value: index == 8 ? true : false,
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
