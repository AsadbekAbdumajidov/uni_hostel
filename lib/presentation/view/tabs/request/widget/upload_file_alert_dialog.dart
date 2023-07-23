import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';

class UploadFileAlertDialod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: BlocBuilder<SubmitApplicationCubit, SubmitApplicationState>(
          builder: (context, state) {
        return Container(
          width: 600,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.strUploadTheFile,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(CupertinoIcons.xmark),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: context.w,
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.backgroundColour,
                    ),
                    child: Center(
                        child: state.name == null
                            ? GestureDetector(
                                onTap: () => context
                                        .read<SubmitApplicationCubit>()
                                        .pickFile(),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.cloud_upload,
                                        color: AppColors.blackColor),
                                    Text(
                                      "PDF",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              decoration:
                                                  TextDecoration.underline),
                                    )
                                  ],
                                ),
                              )
                            : Text(state.name ?? "",
                                style:
                                    Theme.of(context).textTheme.displaySmall)),
                  ).paddingOnly(top: 30, bottom: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlineButton(
                          ounLineColour: AppColors.redColour,
                          onTap: () => context
                              .read<SubmitApplicationCubit>()
                              .clearFile(),
                          width: 100,
                          radius: 10,
                          text: AppStrings.strCancellation,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: AppColors.redColour)),
                      SizedBox(width: 30),
                      CustomButton(
                        onTap: () => Navigator.pop(context),
                        width: 100,
                        radius: 10,
                        text: AppStrings.strSave,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ).paddingAll(30),
        );
      }),
    );
  }
}
