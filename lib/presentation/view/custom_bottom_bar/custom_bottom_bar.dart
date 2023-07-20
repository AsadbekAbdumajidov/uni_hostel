import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_bottom_bar/widget/bottom_tab_item.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopNavBarCubit, TopNavBarState>(
        builder: (context, state) {
      return Container(
        // height: 64,
        decoration:  BoxDecoration(
          color: AppColors.whiteColor,
           boxShadow: [
      BoxShadow(
        color: Color(0xffDDDDDD),
        blurRadius: 6.0,
        spreadRadius: 2.0,
        offset: Offset(0.0, 0.0),
      )
    ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: SafeArea(
          child: Row(
            children: [
              BottomTabItem(
                currentIndex: state.currentIndex,
                icon: CupertinoIcons.home,
                onTap: () {
                  if (state.currentIndex != 0) {
                    context.read<TopNavBarCubit>().changeIndex(0);
                    Navigator.pushNamed(context, RouteName.home.route);
                  }
                },
                index: 0,
                label: AppStrings.strHome,
              ),
              BottomTabItem(
                currentIndex: state.currentIndex,
                icon: CupertinoIcons.shopping_cart,
                onTap: () {
                  if (state.currentIndex != 1) {
                    context.read<TopNavBarCubit>().changeIndex(1);
                    Navigator.pushNamed(context, RouteName.payment.route);
                  }
                },
                index: 1,
                label: AppStrings.strPayment,
              ),
              BottomTabItem(
                currentIndex: state.currentIndex,
                icon: Icons.circle_notifications_outlined,
                onTap: () {
                  if (state.currentIndex != 2) {
                    context.read<TopNavBarCubit>().changeIndex(2);
                    Navigator.pushNamed(context, RouteName.notification.route);
                  }
                },
                index: 2,
                label: AppStrings.strNotification,
              ),
              BottomTabItem(
                currentIndex: state.currentIndex,
                icon: Icons.dashboard_customize_outlined,
                onTap: () {
                  if (state.currentIndex != 3) {
                    context.read<TopNavBarCubit>().changeIndex(3);
                    Navigator.pushNamed(context, RouteName.request.route);
                  }
                },
                index: 3,
                label: AppStrings.strPaymentIs,
              ),
            ],
          ),
        ),
      );
    });
  }
}
