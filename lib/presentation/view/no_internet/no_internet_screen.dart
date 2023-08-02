import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import '../../../core/themes/app_text.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key, required this.onTap});
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 440),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Image.asset(AppIcons.iconNoInternet,
                      height: 300, fit: BoxFit.contain),
                  SizedBox(height: 25),
                  Text(AppStrings.strConnectionFailure,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize:
                              ResponsiveWidget.isTablet(context) ? 16 : 20)),
                  SizedBox(height: 30),
                  CustomButton(
                      width: 400, text: AppStrings.strPaymentIs, onTap: onTap)
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
