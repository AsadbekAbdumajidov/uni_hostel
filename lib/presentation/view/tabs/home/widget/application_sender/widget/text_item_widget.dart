import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_text_field.dart';

class TextItemWidget extends StatelessWidget {
  const TextItemWidget(
      {super.key,
      required this.hintText,
      this.suffixOnTap,
      required this.flex,  this.isReadOnly = false});
  final String hintText;
  final Function()? suffixOnTap;
  final int flex;
  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hintText, style: Theme.of(context).textTheme.displaySmall),
          SizedBox(height: 10),
          CustomTextField(
            readOnly: isReadOnly,
            hintText: "$hintText ${AppStrings.strEnter}",
            suffixIcon: suffixOnTap == null
                ? null
                : GestureDetector(
                    child: Icon(CupertinoIcons.chevron_down,
                        color: AppColors.primaryColor),
                    onTap: suffixOnTap,
                  ),
          ),
        ],
      ),
    );
  }
}
