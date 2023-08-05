import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:UniHostel/core/extension/for_context.dart';
import 'package:UniHostel/core/themes/app_colors.dart';
import 'package:UniHostel/presentation/components/responsiveness.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget(
      {super.key,
      required this.index,
      required this.list,
      required this.onChanged,
      this.width});
  final String index;
  final double? width;

  final List<String> list;
  final Function(dynamic v) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        items: list
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Center(
                    child: Text(
                      item,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: item == index
                              ? AppColors.whiteColor
                              : AppColors.blackColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ))
            .toList(),
        selectedItemBuilder: (context) {
          return List.generate(
            list.length,
            (index) {
              return Center(
                child: Text(
                  list[index],
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: ResponsiveWidget.isTablet(context) ? 14 : 16),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          );
        },
        value: index,
        onChanged: onChanged,
        buttonStyleData: ButtonStyleData(
          width: width ?? context.w,
          padding: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.bodyTextColor.withOpacity(0.8)),
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          padding: EdgeInsets.all(0),
          width: 150,
          maxHeight: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.whiteColor,
          ),
          elevation: 1,
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(5),
            thickness: MaterialStateProperty.all(6),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        style: Theme.of(context).textTheme.displaySmall,
        menuItemStyleData: MenuItemStyleData(
            selectedMenuItemBuilder: (context, child) {
              return Container(
                color: AppColors.primaryColor,
                child: child,
              );
            },
            overlayColor: MaterialStateProperty.all(
                AppColors.primaryColor.withOpacity(0.3))),
      ),
    );
  }
}
