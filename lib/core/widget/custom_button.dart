import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/presentation/components/loading_widget.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/on_hover/on_hover_cubit.dart';
import '../../../core/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.textColor,
      this.isLoading = false,
      this.bgColor,
      this.width,
      this.radius,
      this.style,
      this.icon})
      : super(key: key);

  final String text;
  final Function() onTap;
  final Color? textColor;
  final bool isLoading;
  final double? width;
  final double? radius;
  final Color? bgColor;
  final Widget? icon;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(radius ?? 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius ?? 5),
        onTap: onTap,
        child: Ink(
          height: 40,
          width: width ?? context.w,
          decoration: BoxDecoration(
            color: bgColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? SizedBox.shrink(),
              isLoading
                  ? SizedBox(
                      height: 30,
                      width: 30,
                      child: const LoadingWidget(color: AppColors.whiteColor))
                  : Text(text,
                      style: style ??
                          Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: AppColors.whiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width,
    this.style,
    this.ounLineColour,
    this.radius,
    this.isLoading = false,
  }) : super(key: key);
  final String text;
  final double? width;
  final bool isLoading;
  final Function() onTap;
  final TextStyle? style;
  final Color? ounLineColour;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnHoverCubit(),
      child: BlocBuilder<OnHoverCubit, OnHoverState>(builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(radius ?? 5),
          onHover: (v) => context.read<OnHoverCubit>().getHover(v),
          onTap: onTap,
          child: Container(
            height: 40,
            width: width ?? null,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 5),
                border: Border.all(color: AppColors.primaryColor, width: 0.7),
                color: ResponsiveWidget.isMobile(context)
                    ? AppColors.primaryColor
                    : state.hover
                        ? AppColors.primaryColor
                        : AppColors.whiteColor),
            child: Center(
              child: isLoading
                  ? SizedBox(
                      height: 30,
                      width: 30,
                      child: LoadingWidget(
                          color: ResponsiveWidget.isMobile(context)
                              ? AppColors.whiteColor
                              : state.hover
                                  ? AppColors.whiteColor
                                  : AppColors.primaryColor))
                  : Text(text,
                      overflow: TextOverflow.ellipsis,
                      style: style ??
                          Theme.of(context).textTheme.displaySmall?.copyWith(
                              color: ResponsiveWidget.isMobile(context)
                                  ? AppColors.whiteColor
                                  : state.hover
                                      ? AppColors.whiteColor
                                      : AppColors.blackColor,
                              fontWeight: FontWeight.w300)),
            ).paddingSymmetric(
                vertical: 4,
                horizontal: ResponsiveWidget.isMobile(context) ? 8 : 16),
          ),
        );
      }),
    );
  }
}
