import 'package:flutter/material.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNavBar(),
      bottomNavigationBar:Container(height: he(104),color: AppColors.primaryColor,constraints:  BoxConstraints(maxWidth: context.w),),
      body: ResponsiveWidget(
        mobile: const Column(
          children: [],
        ),
        desktop: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: maxWidth,maxHeight: maxHeight-104),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: he(120)),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: AppStrings.strMainFirst,
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            TextSpan(
                                text: AppStrings.strMainSecond,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(color: AppColors.primaryColor)),
                          ],
                        ),
                      ),
                      SizedBox(height: he(30)),
                      Text(AppStrings.strWebsiteIsForYou,
                          style: Theme.of(context).textTheme.titleSmall),
                      SizedBox(height: he(60)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                              width: 200,
                              text: AppStrings.strReservePlace,
                              onTap: () {}),
                          SizedBox(width: wi(20)),
                          CustomOutlineButton(
                              width: 200,
                              text: AppStrings.strSignAccount,
                              onTap: () {})
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(AppStrings.strUniversitiesThatTrustUs,style: Theme.of(context)
                                    .textTheme
                                    .displaySmall),
                      SizedBox(height: he(10))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
