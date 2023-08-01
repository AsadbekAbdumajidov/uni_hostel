import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/presentation/cubit/on_hover/on_hover_cubit.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget(
      {super.key,
      required this.img,
      required this.size,
      this.onTap,
      this.backgroundColor,
      this.lineColour,
      this.isEdit});
  final String img;
  final double size;
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
            borderRadius: BorderRadius.circular(30),
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl: img,
                    width: size,
                    height: size,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => ErrorImageProfile(
                      backgroundColor: backgroundColor,
                      lineColour: lineColour,
                      errorIcon:isEdit == true && state.hover
                          ? CupertinoIcons.add
                          : Icons.person_outline,
                    ),
                  )),
              Positioned.fill(
                child: isEdit == true && state.hover
                    ? Icon(CupertinoIcons.add, color: AppColors.whiteColor)
                    : SizedBox.shrink(),
              )
            ]));
      }),
    );
  }
}

class ErrorImageProfile extends StatelessWidget {
  const ErrorImageProfile(
      {super.key,
      required this.backgroundColor,
      required this.lineColour,
      this.errorIcon});
  final Color? backgroundColor;
  final Color? lineColour;
  final IconData? errorIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            color: lineColour ?? AppColors.primaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.all(1),
          child: CircleAvatar(
              backgroundColor: backgroundColor ?? AppColors.whiteColor,
              child: Icon(errorIcon ?? Icons.person_outline,
                  color: lineColour ?? AppColors.blackColor)),
        ),
      ),
    );
  }
}
