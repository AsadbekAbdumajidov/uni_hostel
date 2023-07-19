import 'package:flutter/material.dart';
import 'package:uni_hostel/core/routes/app_pages.dart';
import 'package:uni_hostel/core/routes/app_routes.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/widget/custom_button.dart';
import 'package:uni_hostel/presentation/view/tabs/home/apartment_screen/widget/apartment_card_item.dart';

class ApartmentMobileCreen extends StatelessWidget {
  const ApartmentMobileCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 1200,
          child: ListView.separated(
            padding: EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 90),
            itemCount: 4,
            itemBuilder: (_, __) {
              return ApartmentCardItem(
                title: "1-TTJ",
                subTitle: "117 ta o’ringa mo’ljallangan...",
                img:
                    "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg",
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 30),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
              child: CustomButton(
                  text: AppStrings.strSubmitApplication,
                  onTap: () =>
                      pushInnerNavigation(AppRoutes.applicationSenderScreen)),
            ))
      ],
    );
  }
}
