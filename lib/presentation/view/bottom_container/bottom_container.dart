import 'package:flutter/material.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(104),
      color: AppColors.primaryColor,
      constraints: BoxConstraints(maxWidth: context.w),
    );
  }
}
