import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';


showErrorMessage(BuildContext bc, String error, {int duration = 2}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Flushbar(
      title: 'Error',
      backgroundColor: AppColors.redColour,
      message: error,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      borderRadius: BorderRadius.circular(8),
      duration: Duration(seconds: duration),
    ).show(bc);
  });
}

showMessage(BuildContext bc, String message) {
  Flushbar(
    title: 'Success',
    backgroundColor: AppColors.primaryColor,
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    borderRadius: BorderRadius.circular(8),
    duration: const Duration(seconds: 2),
  ).show(bc);
}

showBlueMessage(BuildContext bc, String message) {
  Flushbar(
    title: 'Success',
    backgroundColor: AppColors.primaryColor,
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    borderRadius: BorderRadius.circular(8),
    duration: const Duration(seconds: 2),
  ).show(bc);
}
