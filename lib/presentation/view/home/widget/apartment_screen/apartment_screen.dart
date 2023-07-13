import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class ApartmentScreen extends StatelessWidget {
  const ApartmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return SingleChildScrollView(
        child: Center(
      child: Container(
        constraints: const BoxConstraints(
            maxWidth: maxWidth, maxHeight: maxHeight - 120),
        child: ResponsiveWidget(
          mobile: const Column(
            children: [],
          ),
          desktop: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: he(80), bottom: he(30), left: wi(30)),
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
                    child:
                        const Icon(CupertinoIcons.arrow_left_circle, size: 70),
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
                          (index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: wi(20)),
                            child: Container(
                              height: 342,
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
                                        imageUrl:
                                            "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg",
                                        height: 230,
                                        width: context.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(26),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("1 - TTJ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium
                                                ?.copyWith(
                                                    color:
                                                        AppColors.whiteColor)),
                                        Text("117 ta o’ringa mo’ljallangan...",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall
                                                ?.copyWith(
                                                    color:
                                                        AppColors.whiteColor)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child:
                        const Icon(CupertinoIcons.arrow_right_circle, size: 70),
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
                    onTap: () {}),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
