import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void localDateFormat(BuildContext context,
    TextEditingController? textEditingController) async {
  DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), //get today's date
      firstDate: DateTime(
          2000), //DateTime.now() - not to allow to choose before today.
      lastDate: DateTime(2101));
  if (pickedDate != null) {
    print(pickedDate);
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    print(formattedDate);

    textEditingController?.text = formattedDate;
  } else {
    print("Date is not selected");
  }
}