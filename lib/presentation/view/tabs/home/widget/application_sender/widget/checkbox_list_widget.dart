import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/view/tabs/home/widget/application_sender/widget/checkbox_item_widget.dart';

class CheckboxListWidget extends StatelessWidget {
  const CheckboxListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CheckboxItemWidget(
               onChange: (v){},
             
              title: AppStrings.strIronNotebook,
              value: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CheckboxItemWidget(
                 onChange: (v){},
                title: AppStrings.strWomenNotebook,
                value: true,
              ),
            ),
            CheckboxItemWidget(
               onChange: (v){},
              title: AppStrings.strYouthNotebook,
              value: false,
            ),
          ],
        ),
        Row(
          children: [
            CheckboxItemWidget(
               onChange: (v){},
              title: AppStrings.strFosterCareHome,
              value: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CheckboxItemWidget(
                 onChange: (v){},
                title: AppStrings.strParentsDead,
                value: false,
              ),
            ),
          ],
        ),
        CheckboxItemWidget(
           onChange: (v){},
          title: AppStrings.strOneParentsDead,
          value: false,
        ),
      ],
    );
  }
}
