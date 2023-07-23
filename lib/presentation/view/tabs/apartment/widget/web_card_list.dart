import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';

class CardListWeb extends StatelessWidget {
  const CardListWeb({super.key, required this.responseModel});
  final DormitorysResponseModel? responseModel;
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: SvgPicture.asset(AppIcons.iconArrowLeft),
          onTap: () {
            scrollController.animateTo(scrollController.position.maxScrollExtent,
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
                  responseModel?.results?.length ?? 0,
                  (index) => ApartmentCardItem(
                      width: 320,
                      title: responseModel?.results?[index].name ?? "",
                      subTitle: responseModel?.results?[index].description ?? "",
                      img:
                          responseModel?.results?[index].image ?? "")),
            ),
          ),
        ),
        GestureDetector(
          child: SvgPicture.asset(AppIcons.iconArrowRight),
          onTap: () {
            scrollController.animateTo(scrollController.position.minScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          },
        ).paddingOnly(left: 9),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}
