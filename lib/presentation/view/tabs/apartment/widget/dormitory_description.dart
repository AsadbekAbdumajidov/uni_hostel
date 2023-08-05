import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_images.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/on_hover/on_hover_cubit.dart';

class DormiotryDescriptionWidget extends StatelessWidget {
  const DormiotryDescriptionWidget(
      {super.key,
      required this.name,
      required this.descrip,
      required this.img,
      this.onBack});
  final String? name;
  final String? descrip;
  final String? img;
  final Function()? onBack;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: ResponsiveWidget.isMobileLarge(context) ? 0 : 15),
          Text(name ?? "", style: Theme.of(context).textTheme.headlineSmall)
              .paddingOnly(bottom: 15),
          Image.network(
            img ?? "",
            height: 500,
            width: context.w,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Image.asset(
              AppImages.imgDeafult,
              height: 500,
              width: context.w,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(CupertinoIcons.book_circle, color: AppColors.primaryColor),
              SizedBox(width: 4),
              Text(AppStrings.strOnTheSubject,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600)),
            ],
          ).paddingOnly(bottom: 7, top: 15),
          Text("${descrip?.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '')}",
              style: Theme.of(context).textTheme.displaySmall),
          BlocProvider(
            create: (context) => OnHoverCubit(),
            child: BlocBuilder<OnHoverCubit, OnHoverState>(
              builder: (context, state) {
                return InkWell(
                  hoverColor: AppColors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: AppColors.transparent,
                  onHover: (v) => context.read<OnHoverCubit>().getHover(v),
                  onTap: onBack,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: state.hover
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(CupertinoIcons.chevron_left_circle,
                              color: state.hover
                                  ? AppColors.whiteColor
                                  : AppColors.primaryColor),
                          SizedBox(width: 4),
                          Text(AppStrings.strReturnBack,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      fontWeight: state.hover
                                          ? FontWeight.w500
                                          : FontWeight.w600,
                                      color: state.hover
                                          ? AppColors.whiteColor
                                          : AppColors.blackColor)),
                        ],
                      ).paddingSymmetric(horizontal: 6, vertical: 4)),
                ).paddingOnly(top: 30);
              },
            ),
          ),
        ],
      ).paddingSymmetric(
          horizontal: ResponsiveWidget.isMobileLarge(context) ? 10 : 60,
          vertical: 20),
    );
  }
}
