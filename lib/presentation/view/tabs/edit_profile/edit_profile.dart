import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/constants/constants.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/core/widget/custom_button.dart';
import 'package:UniHostel/core/widget/error_img_profile.dart';
import 'package:UniHostel/presentation/components/flush_bars.dart';
import 'package:UniHostel/presentation/components/loading_widget.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/profile/profile_cubit.dart';
import 'package:UniHostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:UniHostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:UniHostel/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:UniHostel/presentation/components/support_item_widget.dart';
import 'package:UniHostel/presentation/view/tabs/edit_profile/widget/form_fields_mobile.dart';
import 'package:UniHostel/presentation/view/tabs/edit_profile/widget/form_fields_web.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 0 : 40;

    return Scaffold(
      appBar: CustomNavBar(buildContext: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SupportItemWidget(),
      drawer: MenuDrawer(),
      endDrawer: ProfileDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
              if (state.status == Status.SUCCESS) {
                showMessage(context, AppStrings.strSuccesfullyUpdated);
                context.read<ProfileCubit>().statusUpdae();
              }
              if (state.status == Status.ERROR) {
                showErrorMessage(
                    context, state.failure.getLocalizedMessage(context));
              }
              if (state.status == Status.LOADING) {
                return Container(
                    height: context.h, child: Center(child: LoadingWidget()));
              }

              return Form(
                key: formGlobalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NetworkImageWidget(
                      isEdit: true,
                      radius: 80,
                      size: 120,
                      img: state.profileResponse?.image ?? "",
                      onTap: () => context.read<ProfileCubit>().pickFile(),
                      backgroundColor: AppColors.whiteColor,
                      lineColour: state.profileResponse?.image != ""
                          ? AppColors.whiteColor
                          : AppColors.primaryColor,
                    ).paddingOnly(bottom: 40, top: paddingSize),
                    ResponsiveWidget.isMobileLarge(context)
                        ? FormFieldsMobile(
                            response: state.profileResponse,
                            course: state.course,
                          )
                        : FormFieldsWeb(
                            response: state.profileResponse,
                            course: state.course,
                          ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomOutlineButton(
                          isLoading: state.status == Status.LOADING,
                          text: AppStrings.strSave,
                          onTap: () {
                            if (formGlobalKey.currentState!.validate()) {
                              context.read<ProfileCubit>().editProfile();
                            }
                          },
                          width: 200,
                        )
                      ],
                    ).paddingOnly(bottom: 110, top: 14)
                  ],
                ).paddingSymmetric(horizontal: 20),
              );
            }),
          ),
        ),
      ),
    );
  }
}
