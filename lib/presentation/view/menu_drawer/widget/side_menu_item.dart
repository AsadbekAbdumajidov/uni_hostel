import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/cubit/on_hover/on_hover_cubit.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem(
      {super.key,
      this.onTap,
      required this.currentIndex,
      required this.index,
      required this.title});
  final Function()? onTap;
  final int currentIndex;
  final int index;
  final String title;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnHoverCubit(),
      child: BlocBuilder<OnHoverCubit, OnHoverState>(builder: (context, state) {
        return InkWell(
          splashFactory: NoSplash.splashFactory,
          highlightColor: AppColors.transparent,
          onHover: (value) => context.read<OnHoverCubit>().getHover(value),
          onTap: onTap,
          child: index == currentIndex
              ? Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.darkPrimaryColour),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(title,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: AppColors.whiteColor)),
                      ),
                    ],
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:state.hover ? AppColors.darkPrimaryColour.withOpacity(0.5): AppColors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(title,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: AppColors.whiteColor)),
                      ),
                    ],
                  ),
                )
        ).paddingOnly(bottom: 7);
      }),
    );
  }
}
