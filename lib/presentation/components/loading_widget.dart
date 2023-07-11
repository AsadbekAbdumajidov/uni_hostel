import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? CircularProgressIndicator(color: color ?? AppColors.whiteColor)
          : CupertinoActivityIndicator(color: color ?? AppColors.whiteColor),
    );
  }
}
