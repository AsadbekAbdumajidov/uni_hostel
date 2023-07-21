import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/error_img_profile.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';

class ActionItems extends StatelessWidget {
  const ActionItems({super.key, this.onTapProfileDrawer});
  final Function()? onTapProfileDrawer;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmitApplicationCubit, SubmitApplicationState>(
        builder: (context, state) {
      return Row(
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
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: NetworkImageWidget(
                onTap: onTapProfileDrawer, size: 50, img: ""),
          ),
          ResponsiveWidget.isTablet(context)
              ? const SizedBox.shrink()
              : Container(
                width: 200,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(state.infoResponse?.fullName ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontWeight: FontWeight.w500,fontSize: 14)),
                      Text(state.infoResponse?.group ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: AppColors.bodyTextColor,
                                  fontWeight: FontWeight.w400)),
                    ],
                  ).paddingOnly(right: 16),
              ),
          SizedBox(width: 20)
        ],
      ).paddingOnly(top: ResponsiveWidget.isMobile(context) ? 0 : 16);
    });
  }
}
