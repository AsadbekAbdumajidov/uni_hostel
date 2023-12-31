import 'package:flutter/cupertino.dart';
import 'package:UniHostel/core/themes/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(color: color ?? AppColors.primaryColor),
    );
  }
}
