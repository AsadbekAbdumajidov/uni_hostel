import 'package:UniHostel/core/themes/app_text.dart';

class Validator {
  static String? fieldChecker(
      {required String value, required String message}) {
    if (value.toString().trim().isEmpty) {
      return message;
    }
    return null;
  }

  static String? notEmpty({required String value}) {
    if (value.toString().trim().isEmpty) {
      return AppStrings.strNotEmoty;
    }
    return null;
  }
}
