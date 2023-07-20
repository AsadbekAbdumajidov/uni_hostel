import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/di.dart';
import 'package:uni_hostel/presentation/components/loading_widget.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:uni_hostel/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel/presentation/view/tabs/request/mobile/app_sender_mobile_screen.dart';
import 'package:uni_hostel/presentation/view/tabs/request/web/app_sender_web_screen.dart';

class ApplicationSenderScreen extends StatelessWidget {
  const ApplicationSenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavBar(buildContext: context),
      // bottomNavigationBar:ResponsiveWidget.isMobile(context) ? CustomBottomBar() : null,
      body: BlocProvider(
        create: (context) => inject<SubmitApplicationCubit>()..getStudentInfo(),
        child: BlocBuilder<SubmitApplicationCubit, SubmitApplicationState>(
            builder: (context, state) {
          if (state.status == Status.LOADING) {
            return LoadingWidget();
          }
          return SingleChildScrollView(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: maxWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ResponsiveWidget(
                      mobile: AppSenderMobileScreen(infoResponse: state.infoResponse,currentIndex: state.currentIndex),
                      desktop: AppSenderWebScreen(infoResponse: state.infoResponse,currentIndex: state.currentIndex)),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
