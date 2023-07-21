import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/widget/error_img_profile.dart';

class FullNameInformation extends StatelessWidget {
  const FullNameInformation(
      {super.key, required this.title, required this.subTitle, required this.img});
  final String? title;
  final String? subTitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NetworkImageWidget(size: 55, img: img),
        Flexible(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? "",
                  maxLines: 2,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor)),
              SizedBox(height: 10),
              Text(subTitle ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColors.whiteColor,fontSize: 10)),
            ],
          ).paddingOnly(left: 6),
        ),
      ],
    );
  }
}
