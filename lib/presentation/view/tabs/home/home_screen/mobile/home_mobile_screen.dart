import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      style: Theme.of(context).textTheme.displayMedium),
                  TextSpan(
                      text: AppStrings.strMainSecond,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
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
                    onTap: () =>
                        pushInnerNavigation(AppRoutes.apartmentScreen)),
                ],
            ),
          ],
        ),
        SizedBox(height: he(120)),
        Column(
          children: [
            Text(AppStrings.strUniversitiesThatTrustUs,
                style: Theme.of(context).textTheme.displaySmall),
            SizedBox(height: he(80))
          ],
        )
      ],
    );
  }
}
