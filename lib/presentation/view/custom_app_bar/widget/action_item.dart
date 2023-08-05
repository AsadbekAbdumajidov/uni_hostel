import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/widget/error_img_profile.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/profile/profile_cubit.dart';

class ActionItems extends StatelessWidget {
  const ActionItems({super.key, this.onTapProfileDrawer});
  final Function()? onTapProfileDrawer;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NetworkImageWidget(
                  onTap: onTapProfileDrawer,
                  size: 50,
                  img: state.profileResponse?.image ?? "")
              .paddingSymmetric(horizontal: 12),
          ResponsiveWidget.isTablet(context)
              ? const SizedBox.shrink()
              : Container(
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(state.profileResponse?.fullName ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 14)),
                      Text(state.profileResponse?.group ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: AppColors.bodyTextColor,
                                  fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
        ],
      ).paddingOnly(top: ResponsiveWidget.isMobile(context) ? 0 : 16);
    });
  }
}
