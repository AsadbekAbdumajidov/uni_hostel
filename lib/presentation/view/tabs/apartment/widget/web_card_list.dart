import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';

class CardListWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: SvgPicture.asset(AppIcons.iconArrowLeft),
          onTap: () {
            scrollController.animateTo(500,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          },
        ).paddingOnly(right: 10),
        Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  4,
                  (index) => ApartmentCardItem(
                    width: 320,
                      title: "1-TTJ",
                      subTitle: "117 ta o’ringa mo’ljallangan",
                      img:
                          "https://upload.wikimedia.org/wikipedia/commons/d/db/Toshkent_tibbiyot_akademiyasi_bosh_o%27quv_binosi.jpg")),
            ),
          ),
        ),
        GestureDetector(
          child: SvgPicture.asset(AppIcons.iconArrowRight),
          onTap: () {
            scrollController.animateTo(0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          },
        ).paddingOnly(left: 9),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}
