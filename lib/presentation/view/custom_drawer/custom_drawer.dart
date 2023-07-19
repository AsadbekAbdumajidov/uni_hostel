import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

import '../../../core/widget/error_img_profile.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: context.h,
        child:

      Drawer(
        backgroundColor: const Color.fromRGBO(12, 114, 100, 40),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const NetworkImageWidget(
                    size: 42,
                    img:
                        "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                Column(
                  children: [
                    Text("Asadbek",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                    Text("Abdumajidov",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                    SizedBox(height: 4),
                    Text("+998339540690",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColors.whiteColor)),
                  ],
                )
              ],
            )
          ],
        )));
  }
}
