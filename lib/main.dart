import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_theme.dart';
import 'package:uni_hostel/presentation/view/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uni hostel',
      theme: appThemeData,
      home: const LoginScreen(),
    );
  }
}

