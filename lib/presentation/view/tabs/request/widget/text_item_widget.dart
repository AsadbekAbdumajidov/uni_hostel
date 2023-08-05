import 'package:flutter/material.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/utils/validator.dart';
import 'package:UniHostel/core/widget/custom_text_field.dart';

class TextItemWidget extends StatelessWidget {
  const TextItemWidget(
      {super.key,
      required this.hintText,
      required this.flex,
      this.isReadOnly = true,
      this.initialValue,
      this.onchange,
      this.onTap,
      this.textEditingController});
  final String hintText;
  final String? initialValue;
  final Function(dynamic v)? onchange;
  final int flex;
  final bool? isReadOnly;
  final Function()? onTap;
  final TextEditingController? textEditingController;

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
            onChange: onchange,
            readOnly: isReadOnly ?? true,
            initialValue: initialValue,
            textEditingController: textEditingController,
            hintText: "${hintText} ${AppStrings.strEnter}",
            validator: (dynamic v) => Validator.notEmpty(value: v),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
