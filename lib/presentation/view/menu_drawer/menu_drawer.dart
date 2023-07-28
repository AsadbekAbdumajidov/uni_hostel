import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/menu_drawer/widget/side_menu_item.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopNavBarCubit, TopNavBarState>(
        builder: (context, state) {
      return Drawer(
          backgroundColor: AppColors.primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcons.iconWhiteLogo, height: 53, width: 53),
              SizedBox(height: 50),
              SideMenuItem(
                  index: 0,
                  title: AppStrings.strHome,
                  currentIndex: state.currentIndex,
                  onTap: () {
                    if (state.currentIndex != 0) {
                      context.read<TopNavBarCubit>().changeIndex(0);
                      Navigator.pop(context);
                      Navigator.pushNamed(context, RouteName.home.route);
                    }
                  }),
              SideMenuItem(
                  index: 1,
                  title: AppStrings.strPayment,
                  currentIndex: state.currentIndex,
                  onTap: () {
                    // if (state.currentIndex != 1) {
                    //   context.read<TopNavBarCubit>().changeIndex(1);
                    //   Navigator.pop(context);
                    //   Navigator.pushNamed(context, RouteName.payment.route);
                    // }
                  }),
              SideMenuItem(
                  index: 2,
                  title: AppStrings.strNotification,
                  currentIndex: state.currentIndex,
                  onTap: () {
                    // if (state.currentIndex != 2) {
                    //   context.read<TopNavBarCubit>().changeIndex(2);
                    // Navigator.pop(context);
                    //   Navigator.pushNamed(context, RouteName.notification.route);
                    // }
                  }),
              SideMenuItem(
                index: 3,
                title: AppStrings.strSubmitApplication,
                currentIndex: state.currentIndex,
                onTap: () {
                  if (state.currentIndex != 3) {
                    context.read<TopNavBarCubit>().changeIndex(3);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, RouteName.request.route);
                  }
                },
              ),
            ],
          ).paddingSymmetric(
              vertical: ResponsiveWidget.isMobile(context) ? 40 : 30,
              horizontal: 20));
    });
  }
}
