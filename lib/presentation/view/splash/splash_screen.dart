import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';
import 'package:uni_hostel/presentation/cubit/auth/auth_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        Future.delayed(Duration(seconds: 3), () {
          if (state is AuthenticatedState) {
            Navigator.pushNamedAndRemoveUntil(
                context, RouteName.home.route, (route) => false);
          }
          if (state is UnAuthenticatedState) {
            Navigator.pushNamedAndRemoveUntil(
                context, RouteName.login.route, (route) => false);
          }
        });
      },
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(AppIcons.iconLogo),
        ),
      ),
    );
  }
}
