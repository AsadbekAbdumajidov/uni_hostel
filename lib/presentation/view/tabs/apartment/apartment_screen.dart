import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:UniHostel/core/constants/constants.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_icons.dart';
import 'package:UniHostel/core/themes/app_text.dart';
import 'package:UniHostel/core/utils/utils.dart';
import 'package:UniHostel/presentation/components/loading_widget.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';
import 'package:UniHostel/presentation/cubit/dormitory/dormitory_cubit.dart';
import 'package:UniHostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';
import 'package:UniHostel/presentation/view/tabs/apartment/widget/dormitory_description.dart';
import 'package:UniHostel/presentation/view/tabs/apartment/widget/main_text.dart';
import 'package:UniHostel/presentation/view/tabs/apartment/widget/stat_item_widget.dart';
import 'package:UniHostel/presentation/view/tabs/apartment/widget/web_card_list.dart';
import 'package:UniHostel/presentation/view/tabs/request/widget/status_widget.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:text_scroll/text_scroll.dart';

class ApartmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DormitoryCubit, DormitoryState>(
        builder: (context, state) {
      if (state.status == Status.LOADING) {
        return Container(height: context.h, child: LoadingWidget());
      }

      var lenght = state.responseModel?.results!.length ?? 0;

      return SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Column(
              children: [
                TextScroll(
                  "sayt test rejimda ishlamoqda. Sayt ustida texnik ishlar olib borilmoqda",
                  velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                  pauseBetween: Duration(milliseconds: 1000),
                  mode: TextScrollMode.bouncing,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.redColour,
                      fontSize: ResponsiveWidget.isTablet(context) ? 14 : 16),
                  textAlign: TextAlign.right,
                  selectable: true,
                ).paddingOnly(left: 5),
                state.isSelected
                    ? DormiotryDescriptionWidget(
                        name: state.dormitory?.name,
                        descrip: state.dormitory?.description,
                        img: state.dormitory?.image,
                        onBack: () =>
                            context.read<DormitoryCubit>().isSelected(),
                      )
                    : FadeInDown(
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            StatItemWidget(response: state.statisticResponse),
                            MainTextWidget(
                              mainFirst: AppStrings.strMainFirst,
                              mainSecond: AppStrings.strMainSecond,
                            ),
                            SizedBox(height: 60),
                          ],
                        ),
                      ),
                ResponsiveWidget.isMobileLarge(context)
                    ? state.responseModel!.results!.isEmpty
                        ? StepStatusWidget(
                            img: AppIcons.iconBgRejected,
                            title: AppStrings.strBedroomsAreNotYetAvailable)
                        : FadeInUp(
                            child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 275,
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: lenght,
                            itemBuilder: (BuildContext ctx, index) {
                              var response =
                                  state.responseModel?.results?[index];
                              return ApartmentCardItem(
                                onTap: state.isSelected
                                    ? () {}
                                    : () {
                                        context
                                            .read<DormitoryCubit>()
                                            .getDormitorySelected(
                                                response?.id ?? 0);
                                        context
                                            .read<DormitoryCubit>()
                                            .isSelected();
                                      },
                                title: response?.name ?? "",
                                subTitle: response?.description ?? "",
                                img: response?.image ?? "",
                              ).paddingOnly(right: index.isEven ? 10 : 0);
                            },
                          )).paddingOnly(bottom: 100)
                    : FadeInUp(
                        child: CardListWeb(
                        isSelected: state.isSelected,
                        responseModel: state.responseModel,
                      ))
              ],
            ),
          ),
        ).paddingSymmetric(horizontal: 10),
      );
    });
  }
}
