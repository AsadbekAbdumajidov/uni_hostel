import 'package:flutter/cupertino.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  CupertinoActivityIndicator(color: color ?? AppColors.whiteColor),
    );
  }
}
