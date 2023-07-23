import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/core/utils/validator.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/core/widget/custom_text_field.dart';
import 'package:uni_hostel/di.dart';
import 'package:uni_hostel/presentation/components/flush_bars.dart';
import 'package:uni_hostel/presentation/cubit/login/login_cubit.dart';

class LoginPage extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => inject<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
        if (state.status == Status.SUCCESS) {
          Navigator.pushNamedAndRemoveUntil(
              context, RouteName.home.route, (route) => false);
        }
        if (state.status == Status.ERROR) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      }, builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
              child: Form(
            key: formGlobalKey,
            child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 440,maxHeight: maxHeight),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.iconLogo),
                      SizedBox(height: he(30)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Text(
                          AppStrings.strSignInYourAcc,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings.strTalabaId,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: AppColors.bodyTextColor)),
                          SizedBox(height: he(10)),
                          CustomTextField(
                            onChange: (value) =>
                                context.read<LoginCubit>().getStudentID(value),
                            hintText: AppStrings.strEnterStudentId,
                            validator: (dynamic v) => Validator.fieldChecker(
                                value: v,
                                message: AppStrings.strValidateStudentId),
                          ),
                          SizedBox(height: he(30)),
                          Text(AppStrings.strPassport,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: AppColors.bodyTextColor)),
                          SizedBox(height: he(10)),
                          CustomTextField(
                            obscure: state.changeEye,
                              validator: (dynamic v) => Validator.fieldChecker(
                                  value: v,
                                  message: AppStrings.strValidatePassportSeries),
                              onChange: (value) => context
                                  .read<LoginCubit>()
                                  .getPassportSeries(value),
                              hintText: AppStrings.strPassportSeries,
                              suffixIcon: GestureDetector(
                                  onTap: () =>
                                      context.read<LoginCubit>().changeEye(),
                                  child: const Icon(Icons.remove_red_eye))),
                          SizedBox(height: he(30)),
                          CustomButton(
                              isLoading: state.status == Status.LOADING,
                              text: AppStrings.strAcces,
                              onTap: () {
                                if (formGlobalKey.currentState!.validate()) {
                                  context.read<LoginCubit>().login();
                                }
                              })
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
