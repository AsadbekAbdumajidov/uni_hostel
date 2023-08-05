import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/constants/constants.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/presentation/components/flush_bars.dart';
import 'package:UniHostel/presentation/components/loading_widget.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:UniHostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:UniHostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:UniHostel/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:UniHostel/presentation/components/support_item_widget.dart';
import 'package:UniHostel/presentation/view/tabs/request/mobile/app_sender_mobile_screen.dart';
import 'package:UniHostel/presentation/view/tabs/request/web/app_sender_web_screen.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/upload_file_alert_dialog.dart';

class ApplicationSenderScreen extends StatelessWidget {
  const ApplicationSenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavBar(buildContext: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SupportItemWidget(),
      drawer: MenuDrawer(),
      endDrawer: ProfileDrawer(),
      body: BlocBuilder<SubmitApplicationCubit, SubmitApplicationState>(
          builder: (context, state) {
        if (state.status == Status.LOADING) {
          return LoadingWidget();
        }
        if (state.status == Status.ERROR) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
        if (state.status == Status.SUCCESS) {
          context.read<SubmitApplicationCubit>().getStudentInfo();
        }
        var cheack = context.read<SubmitApplicationCubit>().cheack();
        return SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: maxWidth),
              child: ResponsiveWidget(
                mobile: AppSenderMobileScreen(
                  infoResponse: state.infoResponse,
                  currentIndex: state.currentIndex,
                  onTapNext: () {
                    debugPrint("${cheack} == ${state.file?.name}");
                    if (cheack == true && state.file == null) {
                      showErrorMessage(context, AppStrings.strUploadDoc);
                    } else if (cheack == false && state.file == null ||
                        cheack == true && state.file != null) {
                      context.read<SubmitApplicationCubit>().petition();
                    }
                  },
                  fileOnTap: () {
                    cheack == false
                        ? null
                        : showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return UploadFileAlertDialod();
                            });
                  },
                  fileName: state.name ?? "",
                ),
                desktop: AppSenderWebScreen(
                  infoResponse: state.infoResponse,
                  currentIndex: state.currentIndex,
                  onTapNext: () {
                    debugPrint("${cheack} == ${state.file?.name}");
                    if (cheack == true && state.file == null) {
                      showErrorMessage(context, AppStrings.strUploadDoc);
                    } else if (cheack == false && state.file == null ||
                        cheack == true && state.file != null) {
                      context.read<SubmitApplicationCubit>().petition();
                    }
                  },
                  fileOnTap: () {
                    debugPrint(cheack.toString());
                    cheack == false
                        ? null
                        : showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return UploadFileAlertDialod();
                            },
                          );
                  },
                  fileName: state.name ?? "",
                ),
              ).paddingOnly(left: 16, right: 16, bottom: 40),
            ),
          ),
        );
      }),
    );
  }
}
