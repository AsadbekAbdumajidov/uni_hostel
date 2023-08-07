import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_images.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/on_hover/on_hover_cubit.dart';

class ApartmentCardItem extends StatelessWidget {
  const ApartmentCardItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.img,
      this.width,
      this.height,
      this.onTap});
  final String title;
  final String subTitle;
  final String img;
  final double? width;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnHoverCubit(),
      child: BlocBuilder<OnHoverCubit, OnHoverState>(builder: (context, state) {
        double responsiveHeight = ResponsiveWidget.isMobileLarge(context)
            ? 185
            : state.hover
                ? 250
                : 235;
        return InkWell(
          splashFactory: NoSplash.splashFactory,
          highlightColor: AppColors.transparent,
          hoverColor: AppColors.transparent,
          onHover: (value) => context.read<OnHoverCubit>().getHover(value),
          onTap: onTap,
          child: Container(
            width: width ?? null,
            height: state.hover ? 350 : height ?? null,
            decoration: BoxDecoration(
                color: state.hover
                    ? AppColors.primaryColor
                    : AppColors.darkPrimaryColour,
                boxShadow: !state.hover
                    ? null
                    : [
                        BoxShadow(
                            offset: const Offset(0, 6),
                            color: AppColors.bodyTextColor.withOpacity(.1),
                            blurRadius: 12)
                      ],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    img,
                    height: responsiveHeight,
                    width: context.w,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      AppImages.imgDeafult,
                      height: responsiveHeight,
                      fit: BoxFit.cover,
                      width: context.w,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                      color: AppColors.whiteColor,
                                      fontSize: ResponsiveWidget.isMobileLarge(
                                              context)
                                          ? 20
                                          : 24)),
                                          SizedBox(height: 8),
                          Text(
                            "${subTitle.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '')}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.whiteColor,
                                  fontSize:
                                      ResponsiveWidget.isMobileLarge(context)
                                          ? 13
                                          : 15,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).paddingOnly(left: 16,right: 16,bottom: 16),
              ],
            ),
          ),
        );
      }),
    );
  }
}
