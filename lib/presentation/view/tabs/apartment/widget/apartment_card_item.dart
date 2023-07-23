import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class ApartmentCardItem extends StatelessWidget {
  const ApartmentCardItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.img,
      this.width,
      this.height});
  final String title;
  final String subTitle;
  final String img;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: AppColors.transparent,
      splashFactory: NoSplash.splashFactory,
      hoverColor: AppColors.transparent,
      child: Container(
        width: width ?? null,
        height: height ?? null,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                  width: context.w,
                  height: ResponsiveWidget.isMobileLarge(context) ? 180 : 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(img),fit: BoxFit.cover)),
                )),
            Padding(
              padding: EdgeInsets.all(
                  ResponsiveWidget.isMobileLarge(context) ? 16 : 26),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: AppColors.whiteColor,
                                    fontSize:
                                        ResponsiveWidget.isMobileLarge(context)
                                            ? 22
                                            : 38)),
                        Text(subTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.whiteColor,
                                  fontSize:
                                      ResponsiveWidget.isMobileLarge(context)
                                          ? 14
                                          : 16,
                                )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ).paddingSymmetric(horizontal: 12);
  }
}
