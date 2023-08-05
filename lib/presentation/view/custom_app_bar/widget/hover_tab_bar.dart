import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/presentation/cubit/on_hover/on_hover_cubit.dart';

class TopTabItem extends StatelessWidget {
  final Function()? onTap;
  final int currentIndex;
  final int index;
  final String title;
  const TopTabItem({
    super.key,
    this.onTap,
    required this.title,
    required this.currentIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnHoverCubit(),
      child: BlocBuilder<OnHoverCubit, OnHoverState>(builder: (context, state) {
        return InkWell(
            splashFactory: NoSplash.splashFactory,
            highlightColor: AppColors.transparent,
            focusColor: AppColors.transparent,
            onHover: (v) => context.read<OnHoverCubit>().getHover(v),
            onTap: onTap,
            child: index == currentIndex
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.primaryColor.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(title,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.whiteColor,
                              )),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: state.hover
                            ? AppColors.primaryColor.withOpacity(0.1)
                            : AppColors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(title,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: AppColors.bodyTextColor)),
                    ),
                  ));
      }),
    );
  }
}
