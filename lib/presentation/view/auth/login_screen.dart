import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/core/widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 474),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.iconLogo),
              SizedBox(height: he(30)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  AppStrings.strSignInYourAcc,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.strLogin,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.bodyTextColor)),
                  SizedBox(height: he(10)),
                  const CustomTextField(
                    hintText: AppStrings.strEnterEmail,
                  ),
                  SizedBox(height: he(30)),
                  Text(AppStrings.strPassword,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.bodyTextColor)),
                  SizedBox(height: he(10)),
                  CustomTextField(
                      hintText: AppStrings.strEnterPass,
                      suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.remove_red_eye))),
                  SizedBox(height: he(30)),
                  CustomButton(text: AppStrings.strAcces, onTap: () {})
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
