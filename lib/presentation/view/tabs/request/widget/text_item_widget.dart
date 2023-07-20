import 'package:flutter/material.dart';
import 'package:uni_hostel/core/widget/custom_text_field.dart';

class TextItemWidget extends StatelessWidget {
  const TextItemWidget(
      {super.key,
      required this.hintText,
      required this.flex,  this.isReadOnly = true,  this.initialValue});
  final String hintText;
  final String? initialValue;

  final int flex;
  final bool? isReadOnly;

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
            readOnly: isReadOnly ?? true,
            initialValue: initialValue,
            
          ),
        ],
      ),
    );
  }
}
