import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/components/flush_bars.dart';
import 'package:uni_hostel/presentation/components/loading_widget.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel/presentation/components/support_item_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/request/mobile/app_sender_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/request/web/app_sender_web_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/upload_file_alert_dialog.dart';

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        }),
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
                                  });
                        })),
              ),
            ),
          ),
        );
      }),
    );
  }
}
