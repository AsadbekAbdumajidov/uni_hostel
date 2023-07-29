import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/extension/for_context.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/components/flush_bars.dart';
import 'package:uni_hostel/presentation/components/loading_widget.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/dormitory/dormitory_cubit.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/dormitory_description.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/main_text.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/stat_item_widget.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/web_card_list.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/status_widget.dart';

class ApartmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DormitoryCubit, DormitoryState>(
        builder: (context, state) {
      if (state.status == Status.LOADING) {
        return Container(height: context.h, child: LoadingWidget());
      }
      if (state.status == Status.ERROR) {
        showErrorMessage(context, state.failure.getLocalizedMessage(context));
      }
      var lenght = state.responseModel?.results!.length ?? 0;

      return SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Column(
              children: [
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
                            StatItemWidget().paddingOnly(bottom: 30, top: 20),
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
                        :FadeInUp(
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
                            },)
                          ).paddingOnly(bottom: 100)
                    : FadeInUp(
                        child:CardListWeb(
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
