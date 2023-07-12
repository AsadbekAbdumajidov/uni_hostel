// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_images.dart';
import 'package:uni_hostel/core/utils/size_konfig.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.img404, width: wi(350)),
          SizedBox(height: he(10)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Page not found"),
            ],
          )
        ],
      ),
    );
  }
}
