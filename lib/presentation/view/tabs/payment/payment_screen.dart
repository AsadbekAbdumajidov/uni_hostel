import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/payment/payment_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel/presentation/view/tabs/payment/widget/payment_story_card.dart';
import 'package:uni_hostel/presentation/view/tabs/payment/widget/payment_to_card.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColour,
      appBar: CustomNavBar(buildContext: context),
      // bottomNavigationBar:ResponsiveWidget.isMobile(context) ? CustomBottomBar() : null,
      body: BlocBuilder<PaymentCubit, PaymentState>(builder: (context, state) {
        return Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: ResponsiveWidget.isMobileLarge(context) ? 0 : 60),
              child: ResponsiveWidget.isMobileLarge(context)
                  ? ListView(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      children: [
                        PaymentToCard(currentIndex: state.currentIndex),
                        SizedBox(height: 30),
                        PaymentStoryCard(),
                        SizedBox(height: 20),
                      ],
                    )
                  : Row(
                      children: [
                        PaymentStoryCard(),
                        SizedBox(width: 30),
                        PaymentToCard(currentIndex: state.currentIndex),
                      ],
                    ),
            ),
          ),
        );
      }),
    );
  }
}
