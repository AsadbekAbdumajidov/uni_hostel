// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/themes/app_icons.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/utils.dart';
import 'package:uni_hostel/presentation/components/flush_bars.dart';
import 'package:uni_hostel/presentation/components/loading_widget.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';
import 'package:uni_hostel/presentation/cubit/dormitory/dormitory_cubit.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/apartment_card_item.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/main_text.dart';
import 'package:uni_hostel/presentation/view/tabs/apartment/widget/web_card_list.dart';
import 'package:uni_hostel/presentation/view/tabs/request/widget/status_widget.dart';

class ApartmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth,maxHeight: maxHeight),
          child: BlocBuilder<DormitoryCubit, DormitoryState>(
              builder: (context, state) {
            if (state.status == Status.LOADING) {
              return LoadingWidget();
            }
            if (state.status == Status.ERROR) {
              showErrorMessage(
                  context, state.failure.getLocalizedMessage(context));
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height:ResponsiveWidget.isMobileLarge(context) ? 250 : 400,
                    child: Column(
                  children: [
                    SizedBox(
                        height:
                            ResponsiveWidget.isMobileLarge(context) ? 40 : 100),
                    MainTextWidget(
                        mainFirst: AppStrings.strMainFirst,
                        mainSecond: AppStrings.strMainSecond),
                    SizedBox(height: 30),
                    Text(AppStrings.strWebsiteIsForYou,
                        style: Theme.of(context).textTheme.titleSmall),
                    SizedBox(height: 60),
                  ],
                )),
                ResponsiveWidget.isMobileLarge(context)
                    ? state.responseModel!.results!.isEmpty
                        ? StepStatusWidget(
                            img: AppIcons.iconRejected,
                            title: AppStrings.strBedroomsAreNotYetAvailable)
                        : Expanded(
                          flex: 8,
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 275,
                                crossAxisCount: 2,
                                mainAxisSpacing: 10
                              ),
                              itemCount: state.responseModel?.results?.length,
                              itemBuilder: (BuildContext ctx, index) {
                                var response =
                                    state.responseModel?.results?[index];
                                return ApartmentCardItem(
                                  title: response?.name ?? "",
                                  subTitle: response?.description ?? "",
                                  img: response?.image ?? "",
                                );
                              },
                            ),
                          )
                    : CardListWeb(responseModel: state.responseModel)
              ],
            );
          }),
        ),
      ),
    );
  }
}
