import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/widget/error_img_profile.dart';
import 'package:uni_hostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/widget/hover_tab_bar.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TopNavBarCubit(),
        child: BlocBuilder<TopNavBarCubit, TopNavBarState>(
            builder: (context, state) {
          return   AppBar(
            toolbarHeight: he(100),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: he(16)),
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
                      padding: EdgeInsets.symmetric(horizontal: wi(40)),
                      child: SvgPicture.asset(AppIcons.iconNotification,
                          height: he(24), width: wi(24)),
                    ),
                    const NetworkImageWidget(
                        size: 42,
                        img:
                            "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                    SizedBox(width: wi(16)),
                  ],
                ),
              )
            ],
            title: Padding(
              padding: EdgeInsets.only(top: he(16)),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.iconLogo,
                      height: he(53), width: wi(53)),
                  SizedBox(width: wi(40)),
                  Flexible(
                    flex: 5,
                    child: TopTabItem(
                      title: AppStrings.strHome,
                      currentIndex: state.currentIndex,
                      index: 0,
                      onTap: () =>
                          context.read<TopNavBarCubit>().changeIndex(0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: wi(40)),
                    child: TopTabItem(
                      title: AppStrings.strPayment,
                      currentIndex: state.currentIndex,
                      index: 1,
                      onTap: () =>
                          context.read<TopNavBarCubit>().changeIndex(1),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: TopTabItem(
                      title: AppStrings.strProfile,
                      currentIndex: state.currentIndex,
                      index: 2,
                      onTap: () =>
                          context.read<TopNavBarCubit>().changeIndex(2),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
