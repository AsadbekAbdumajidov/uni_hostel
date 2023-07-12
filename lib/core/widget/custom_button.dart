import 'package:flutter/material.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/presentation/components/loading_widget.dart';
import '../../../core/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.textColor,
      this.isLoading = false,
      this.bgColor})
      : super(key: key);

  final String text;
  final Function() onTap;
  final Color? textColor;
  final bool isLoading;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Ink(
          height: 50,
          width: context.w,
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(5),
              gradient: bgColor != null
                  ? null
                  : const LinearGradient(
                      colors: [Color(0xFF3A75FF), Color(0xFF004CFD)])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      height: he(30),
                      width: he(30),
                      child: const LoadingWidget())
                  : Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge?.copyWith(color: AppColors.whiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}

