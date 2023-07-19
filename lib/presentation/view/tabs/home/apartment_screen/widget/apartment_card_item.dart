import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';

class ApartmentCardItem extends StatelessWidget {
  const ApartmentCardItem(
      {super.key, required this.title, required this.subTitle, required this.img});
  final String title;
  final String subTitle;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wi(20)),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              highlightColor: AppColors.transparent,
              splashFactory: NoSplash.splashFactory,
              hoverColor: AppColors.transparent,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: CachedNetworkImage(
                  imageUrl: img,
                  height: 230,
                  width: context.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: AppColors.whiteColor)),
                  Text(subTitle,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.whiteColor)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
