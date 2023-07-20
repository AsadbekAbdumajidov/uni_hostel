import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/checkbox_item_widget.dart';

class CheckboxListWidget extends StatelessWidget {
  const CheckboxListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              CheckboxItemWidget(
                onChange: (v) {},
                title: AppStrings.strIronNotebook,
                value: true,
              ),
              SizedBox(width: 20),
              CheckboxItemWidget(
                onChange: (v) {},
                title: AppStrings.strWomenNotebook,
                value: true,
              ),
              CheckboxItemWidget(
                onChange: (v) {},
                title: AppStrings.strYouthNotebook,
                value: false,
              ),
              SizedBox(width: 20),
              CheckboxItemWidget(
                onChange: (v) {},
                title: AppStrings.strFosterCareHome,
                value: false,
              ),
              ResponsiveWidget.isMobile(context)
                  ? Column(
                      children: [
                        CheckboxItemWidget(
                          onChange: (v) {},
                          title: AppStrings.strParentsDead,
                          value: false,
                        ),
                        SizedBox(width: 20),
                        CheckboxItemWidget(
                          onChange: (v) {},
                          title: AppStrings.strOneParentsDead,
                          value: false,
                        ),
                        CheckboxItemWidget(
                          onChange: (v) {},
                          title: AppStrings.strDisabledGroup,
                          value: false,
                        ),
                        SizedBox(width: 20),
                        CheckboxItemWidget(
                          onChange: (v) {},
                          title: AppStrings.strGiftedStudent,
                          value: false,
                        ),
                      ],
                    ):SizedBox.shrink()
            ],
          ),
        ),
        ResponsiveWidget.isMobile(context)
            ? SizedBox.shrink()
            : Expanded(
                child: Column(
                  children: [
                    CheckboxItemWidget(
                      onChange: (v) {},
                      title: AppStrings.strParentsDead,
                      value: false,
                    ),
                    SizedBox(width: 20),
                    CheckboxItemWidget(
                      onChange: (v) {},
                      title: AppStrings.strOneParentsDead,
                      value: false,
                    ),
                    CheckboxItemWidget(
                      onChange: (v) {},
                      title: AppStrings.strDisabledGroup,
                      value: false,
                    ),
                    SizedBox(width: 20),
                    CheckboxItemWidget(
                      onChange: (v) {},
                      title: AppStrings.strGiftedStudent,
                      value: false,
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
