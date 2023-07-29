import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel/core/constants/constants.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';
import 'package:uni_hostel/core/themes/app_text.dart';
import 'package:uni_hostel/core/utils/service_link.dart';
import 'package:uni_hostel/presentation/components/responsiveness.dart';

class SupportItemWidget extends StatefulWidget {
  @override
  State<SupportItemWidget> createState() => _SupportItemWidgetState();
}

class _SupportItemWidgetState extends State<SupportItemWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Container(
            constraints:
                const BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
            child: FloatingActionBubble(
              items: <Bubble>[
                Bubble(
                  title: AppStrings.strTgCanal,
                  iconColor: AppColors.whiteColor,
                  bubbleColor: AppColors.primaryColor,
                  icon: Icons.message,
                  titleStyle: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.whiteColor),
                  onPress: () {
                    ServiceUrl.launchInBrow("https://t.me/UniHostel");
                    _animationController.reverse();
                  },
                ),
                Bubble(
                  title: AppStrings.strGroup,
                  iconColor: AppColors.whiteColor,
                  bubbleColor: AppColors.primaryColor,
                  icon: Icons.people,
                  titleStyle: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.whiteColor),
                  onPress: () {
                    ServiceUrl.launchInBrow("https://t.me/unihostel_chat");
                    _animationController.reverse();
                  },
                ),
                Bubble(
                  title: AppStrings.strSupport,
                  iconColor: AppColors.whiteColor,
                  bubbleColor: AppColors.primaryColor,
                  icon: Icons.person_pin_circle_outlined,
                  titleStyle: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.whiteColor),
                  onPress: () {
                    ServiceUrl.launchInBrow("https://t.me/unihostel_support");

                    _animationController.reverse();
                  },
                ),
              ],
              animation: _animation,
              onPress: () => _animationController.isCompleted
                  ? _animationController.reverse()
                  : _animationController.forward(),
              iconColor: AppColors.whiteColor,
              iconData: Icons.send_rounded,
              backGroundColor: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    ).paddingAll(ResponsiveWidget.isMobile(context) ? 14 : 30);
  }
}
