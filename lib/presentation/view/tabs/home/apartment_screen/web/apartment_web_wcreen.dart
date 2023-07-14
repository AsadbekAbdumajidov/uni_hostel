import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/view/tabs/home/apartment_screen/widget/apartment_card_item.dart';

class ApartmentWebScreen extends StatelessWidget {
  const ApartmentWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80, bottom: 30, left: 30),
              child: Text(AppStrings.strHome,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontSize: 50)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(
                CupertinoIcons.arrow_left_circle,
                size: 70,
                color: AppColors.bodyTextColor.withOpacity(0.5),
              ),
              onTap: () {
                scrollController.animateTo(500,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              },
            ).paddingOnly(right: wi(40)),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4,
                      (index) => ApartmentCardItem(
                          title: "1-TTJ",
                          subTitle: "117 ta o’ringa mo’ljallangan...",
                          img:
                              "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg")),
                ),
              ),
            ),
            GestureDetector(
              child: Icon(
                CupertinoIcons.arrow_right_circle,
                size: 70,
                color: AppColors.bodyTextColor.withOpacity(0.5),
              ),
              onTap: () {
                scrollController.animateTo(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              },
            ).paddingOnly(left: wi(40)),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: he(80)),
          child: CustomButton(
              width: 440,
              text: AppStrings.strSubmitApplication,
              onTap: () =>
                  pushInnerNavigation(AppRoutes.applicationSenderScreen)),
        )
      ],
    );
  }
}
