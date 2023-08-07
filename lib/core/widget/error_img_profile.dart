import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/on_hover/on_hover_cubit.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget(
      {super.key,
      required this.img,
      required this.size,
      this.onTap,
      this.backgroundColor,
      this.lineColour,
      this.isEdit,
      this.radius});
  final String img;
  final double size;
  final double? radius;

  final Function()? onTap;
  final Color? backgroundColor;
  final Color? lineColour;
  final bool? isEdit;

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
            borderRadius: BorderRadius.circular(radius ?? 30),
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(radius ?? 30),
                  child: CachedNetworkImage(
                    imageUrl: img,
                    width: size,
                    height: size,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => ErrorImageProfile(
                      backgroundColor: backgroundColor,
                      lineColour: lineColour,
                      radius: radius ?? 20,
                      errorIcon:
                          (isEdit == true && ResponsiveWidget.isMobile(context))
                              ? CupertinoIcons.add
                              : (isEdit == true && state.hover)
                                  ? CupertinoIcons.add
                                  : Icons.person_outline,
                    ),
                  )),
              Positioned.fill(
                child: isEdit == true && ResponsiveWidget.isMobile(context)
                    ? Icon(CupertinoIcons.add,
                        color: lineColour ?? AppColors.primaryColor)
                    : isEdit == true && state.hover
                        ? Icon(CupertinoIcons.add,
                            color: lineColour ?? AppColors.whiteColor)
                        : SizedBox.shrink(),
              )
            ]));
      }),
    );
  }
}

class ErrorImageProfile extends StatelessWidget {
  const ErrorImageProfile({
    super.key,
    required this.backgroundColor,
    required this.lineColour,
    this.errorIcon,
    required this.radius,
  });
  final Color? backgroundColor;
  final double radius;
  final Color? lineColour;
  final IconData? errorIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: lineColour ?? AppColors.primaryColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(radius)),
      child: Container(
        padding: const EdgeInsets.all(1),
        margin: const EdgeInsets.all(1),
        child: CircleAvatar(
            backgroundColor: backgroundColor ?? AppColors.whiteColor,
            child: Icon(errorIcon ?? Icons.person_outline,
                color: lineColour ?? AppColors.blackColor)),
      ),
    );
  }
}
