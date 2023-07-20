import 'package:flutter/material.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';

class CardListMobile extends StatelessWidget {
  const CardListMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: ApartmentCardItem(
                  title: "1-TTJ",
                  subTitle: "117 ta o’ringa mo’ljallangan",
                  img:
                      "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg"),
            ),
            Expanded(
              child: ApartmentCardItem(
                  title: "1-TTJ",
                  subTitle: "117 ta o’ringa mo’ljallangan",
                  img:
                      "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg"),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: ApartmentCardItem(
                  title: "1-TTJ",
                  subTitle: "117 ta o’ringa mo’ljallangan",
                  img:
                      "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg"),
            ),
            Expanded(
              child: ApartmentCardItem(
                  title: "1-TTJ",
                  subTitle: "117 ta o’ringa mo’ljallangan ",
                  img:
                      "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg"),
            ),
          ],
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
