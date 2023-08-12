import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void showDate(BuildContext context,
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

String localDateFormat(String? date, {String format = "yyyy-MM-dd"}) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dateValue = DateFormat(
          date.contains('T') ? 'yyyy-MM-ddTHH:mm:ssZ' : "yyyy-MM-dd HH:mm:ssZ")
      .parse(date, true)
      .toLocal();
  return DateFormat(format).format(dateValue);
}

String localTimeFormat(String? date, {String format = "HH:mm"}) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dateValue = DateFormat(
          date.contains('T') ? 'yyyy-MM-ddTHH:mm:ssZ' : "yyyy-MM-dd HH:mm:ssZ")
      .parse(date, true)
      .toLocal();
  return DateFormat(format).format(dateValue);
}