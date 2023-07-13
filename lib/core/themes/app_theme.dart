import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';


final appThemeData = ThemeData(
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
  appBarTheme: const AppBarTheme(
    color: AppColors.whiteColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.whiteColor,
      systemNavigationBarColor: AppColors.whiteColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 60.0, fontWeight: FontWeight.bold, color: AppColors.blackColor),
    displayMedium: TextStyle(
        fontSize: 30.0, fontWeight: FontWeight.w700, color: AppColors.blackColor),
    displaySmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor),
    headlineMedium: TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: AppColors.blackColor),
    headlineSmall: TextStyle(
        fontSize: 34.0, fontWeight: FontWeight.w600, color: AppColors.blackColor),
    titleLarge: TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.blackColor),
    titleMedium: TextStyle(
        fontSize: 26, fontWeight: FontWeight.w700, color: AppColors.blackColor),
    titleSmall: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.blackColor),
    bodyLarge: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.blackColor),
    bodyMedium: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.blackColor),
  ),
  fontFamily: 'Inter',
  scaffoldBackgroundColor: AppColors.whiteColor,
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
