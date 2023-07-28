import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/di.dart';
import 'package:uni_hostel/presentation/components/flush_bars.dart';
import 'package:uni_hostel/presentation/components/loading_widget.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel/presentation/cubit/submit_application/submit_application_cubit.dart';
import 'package:uni_hostel/presentation/view/profile_drawer/widget/full_name_information.dart';
import 'package:uni_hostel/presentation/view/profile_drawer/widget/profile_driwer_item.dart';

class ProfileDrawer extends StatelessWidget {
  ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: BlocBuilder<SubmitApplicationCubit, SubmitApplicationState>(
          builder: (context, state) {
        if (state.status == Status.LOADING) {
          return LoadingWidget();
        }
        if (state.status == Status.ERROR) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FullNameInformation(
              title: state.infoResponse?.fullName,
              subTitle: state.infoResponse?.passportSeries,
              img: "",
            ),
            SizedBox(height: 20),
            ProfileDriwerItem(
              title: "${AppStrings.strResidenceAddress}:",
              subTitle:
                  "${state.infoResponse?.region} ${state.infoResponse?.district}",
            ),
            ProfileDriwerItem(
              title: "${AppStrings.strFaculty}:",
              subTitle: state.infoResponse?.faculty,
            ).paddingSymmetric(vertical: 20),
            ProfileDriwerItem(
              title: "${AppStrings.strGroup}:",
              subTitle: state.infoResponse?.group,
            ),
            ProfileDriwerItem(
              title: "${AppStrings.strCourse}:",
              subTitle: state.infoResponse?.course,
            ).paddingSymmetric(vertical: 20),
            Spacer(),
            TextButton(
              onPressed: () async => await logout(context),
              child: Text(
                AppStrings.strExit,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.whiteColor),
              ),
            ),
           
          ],
        ).paddingSymmetric(vertical:ResponsiveWidget.isMobile(context) ? 40 : 30, horizontal: 20);
      }),
    );
  }

  Future<void> logout(BuildContext context) async {
    await inject<AuthCubit>().logout();

    /// Navigate to Sign in Screen
    Navigator.of(context).pushNamedAndRemoveUntil(
        RouteName.login.route, (Route<dynamic> route) => false);
  }
}
