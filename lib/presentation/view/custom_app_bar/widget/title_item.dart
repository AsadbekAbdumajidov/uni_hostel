import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/presentation/components/flush_bars.dart';

import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/widget/hover_tab_bar.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    var state = context.watch<SubmitApplicationCubit>().state;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(AppIcons.iconLogo, height: 55, width: 55),
        SizedBox(width: ResponsiveWidget.isDesktop(context) ? 30 : 20),
        Flexible(
          flex: 5,
          child: TopTabItem(
              title: AppStrings.strHome,
              currentIndex: currentIndex,
              index: 0,
              onTap: () {
                if (currentIndex != 0) {
                  context.read<TopNavBarCubit>().changeIndex(0);
                  Navigator.pushNamed(context, RouteName.home.route);
                }
              }),
        ),
        TopTabItem(
                title: AppStrings.strPayment,
                currentIndex: currentIndex,
                index: 1,
                onTap: () {
                  // if (currentIndex != 1) {
                  //   context.read<TopNavBarCubit>().changeIndex(1);
                  //   Navigator.pushNamed(context, RouteName.payment.route);
                  // }
                })
            .paddingSymmetric(
                horizontal: ResponsiveWidget.isTablet(context) ? 10 : 14),
        Flexible(
          flex: 5,
          child: TopTabItem(
              title: AppStrings.strNotification,
              currentIndex: currentIndex,
              index: 2,
              onTap: () {
                // if (currentIndex != 2) {
                //   context.read<TopNavBarCubit>().changeIndex(2);
                //   Navigator.pushNamed(context, RouteName.notification.route);
                // }
              }),
        ),
        SizedBox(width: ResponsiveWidget.isTablet(context) ? 10 : 14),
        Flexible(
          flex: 5,
          child: TopTabItem(
              title: AppStrings.strSubmitApplication,
              currentIndex: currentIndex,
              index: 3,
              onTap: () {
                
                if (currentIndex != 3) {
                  if (state.infoResponse == null) {
                    showErrorMessage(
                        context, state.failure.getLocalizedMessage(context));
                  } else {
                    context.read<TopNavBarCubit>().changeIndex(3);
                    Navigator.pushNamed(context, RouteName.request.route);
                  }
                }
              }),
        ),
      ],
    ).paddingOnly(top: ResponsiveWidget.isMobile(context) ? 0 : 16);
  }
}
