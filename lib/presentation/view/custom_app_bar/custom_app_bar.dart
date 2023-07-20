import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/error_img_profile.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/widget/hover_tab_bar.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavBar({Key? key, this.onTapDrawer, required this.buildContext})
      : super(key: key);
  final Function()? onTapDrawer;

  final BuildContext buildContext;
  @override
  Widget build(buildContextt) {
    return BlocBuilder<TopNavBarCubit, TopNavBarState>(
        builder: (context, state) {
      return Center(
          child: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(AppStrings.strUzb,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.bodyTextColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GestureDetector(
                      onTap: onTapDrawer,
                      child: const NetworkImageWidget(
                          size: 40,
                          img:
                              "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                    ),
                  ),
                  ResponsiveWidget.isTablet(context)
                      ? const SizedBox.shrink()
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Asadbek Abdumajidov",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(fontWeight: FontWeight.w500)),
                              Text("7b - guruh",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                          color: AppColors.bodyTextColor,
                                          fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                  SizedBox(width: 20)
                ],
              ),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcons.iconLogo, height: 53, width: 53),
              SizedBox(width: ResponsiveWidget.isDesktop(context) ? 30 : 20),
              Flexible(
                flex: 5,
                child: TopTabItem(
                    title: AppStrings.strHome,
                    currentIndex: state.currentIndex,
                    index: 0,
                    onTap: () {
                      if (state.currentIndex != 0) {
                        context.read<TopNavBarCubit>().changeIndex(0);
                        Navigator.pushNamed(context, RouteName.home.route);
                      }
                    }),
              ),
              TopTabItem(
                      title: AppStrings.strPayment,
                      currentIndex: state.currentIndex,
                      index: 1,
                      onTap: () {
                        if (state.currentIndex != 1) {
                          context.read<TopNavBarCubit>().changeIndex(1);
                          Navigator.pushNamed(context, RouteName.payment.route);
                        }
                      })
                  .paddingSymmetric(
                      horizontal: ResponsiveWidget.isTablet(context) ? 20 : 30),
              Flexible(
                flex: 5,
                child: TopTabItem(
                    title: AppStrings.strNotification,
                    currentIndex: state.currentIndex,
                    index: 2,
                    onTap: () {
                      if (state.currentIndex != 2) {
                        context.read<TopNavBarCubit>().changeIndex(2);
                        Navigator.pushNamed(
                            context, RouteName.notification.route);
                      }
                    }),
              ),
              SizedBox(width: ResponsiveWidget.isTablet(context) ? 20 : 30),
              Flexible(
                flex: 5,
                child: TopTabItem(
                    title: AppStrings.strPaymentIs,
                    currentIndex: state.currentIndex,
                    index: 3,
                    onTap: () {
                      if (state.currentIndex != 3) {
                        context.read<TopNavBarCubit>().changeIndex(3);
                        Navigator.pushNamed(context, RouteName.request.route);
                      }
                    }),
              ),
            ],
          ).paddingOnly(top: he(16)),
        ),
      ));
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
