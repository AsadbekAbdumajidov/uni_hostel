import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/constants/constants.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/tob_bar/top_nav_cubit.dart';
import 'package:UniHostel/presentation/view/custom_app_bar/widget/action_item.dart';
import 'package:UniHostel/presentation/view/custom_app_bar/widget/title_item.dart';

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
          toolbarHeight: 80,
          centerTitle: false,
          leading: !ResponsiveWidget.isMobileLarge(context)
              ? null
              : Builder(
                  builder: (context) => GestureDetector(
                    child: Icon(Icons.menu,
                        color: AppColors.primaryColor, size: 30),
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
          actions: [
            ActionItems(
              onTapProfileDrawer: () => Scaffold.of(context).openEndDrawer(),
            )
          ],
          title: ResponsiveWidget.isMobileLarge(context)
              ? const SizedBox.shrink()
              : TitleItem(currentIndex: state.currentIndex),
        ),
      ));
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
