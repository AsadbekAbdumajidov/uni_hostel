import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/data/models/dormitorys/dormitorys_response_model.dart';
import 'package:uni_hostel/presentation/cubit/dormitory/dormitory_cubit.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';

class CardListWeb extends StatelessWidget {
  const CardListWeb({super.key, required this.responseModel, required this.isSelected});
  final DormitorysResponseModel? responseModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Container(
      height: 390,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: SvgPicture.asset(AppIcons.iconArrowLeft),
            onTap: () {
              scrollController.animateTo(
                  scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn);
            },
          ).paddingOnly(right: 10),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    List.generate(responseModel?.results?.length ?? 0, (index) {
                  var response = responseModel?.results?[index];
                  
                  return ApartmentCardItem(
                    width: 320,
                    height: 340,
                    onTap:isSelected ? (){}: () {
                      context
                          .read<DormitoryCubit>()
                          .getDormitorySelected(response?.id ?? 0);
                      context.read<DormitoryCubit>().isSelected();
                    },
                    title: response?.name ?? "",
                    subTitle: response?.description ?? "",
                    img: response?.image ?? "",
                  ).paddingSymmetric(horizontal: 10);
                }),
              ),
            ).paddingOnly(bottom: 30),
          ),
          GestureDetector(
            child: SvgPicture.asset(AppIcons.iconArrowRight),
            onTap: () {
              scrollController.animateTo(
                  scrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn);
            },
          ).paddingOnly(left: 9),
        ],
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
