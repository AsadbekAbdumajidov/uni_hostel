
class Validator {


  static String? fieldChecker({required String value,required String message}) {
    if (value.toString().trim().isEmpty) {
      return message;
    }
    return null;
  }
}
