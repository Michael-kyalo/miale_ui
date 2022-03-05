import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miale_ui/widgets/miale_box.dart';
import 'package:miale_ui/widgets/miale_text.dart';

import 'package:sizer/sizer.dart';

import '../miale_ui.dart';
import '../theming/color.dart';

class MialeFilterChip extends StatelessWidget {
  final Color color;
  final Color filterIndicatorBackgroundColor;
  final Color filterIndicatorTextColor;
  final Color filterTextColor;
  final Color filterIconColor;
  final bool isFilterSelected;
  final int numberOfFiltersSelected;
  const MialeFilterChip(
      {Key? key,
      this.isFilterSelected = false,
      this.numberOfFiltersSelected = 0,
      this.color = kcWhiteColor,
      this.filterIndicatorBackgroundColor = kcGreenColor,
      this.filterIndicatorTextColor = kcWhiteColor,
      this.filterIconColor = kcBlackColor,
      this.filterTextColor = kcBlackColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MialeBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isFilterSelected
                ? Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: filterIndicatorBackgroundColor,
                    ),
                    child: MialeText.body(
                      '$numberOfFiltersSelected',
                      color: filterIndicatorTextColor,
                    ),
                  )
                : SvgPicture.string(
                    kiSlidersBlack,
                    color: filterIconColor,
                  ),
            MialeText.body(
              'Filter',
              color: filterTextColor,
            )
          ],
        ),
        color: color,
        width: 25.w,
        height: 5.h);
  }
}
