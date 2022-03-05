import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miale_ui/theming/color.dart';
import 'package:miale_ui/widgets/miale_box.dart';
import 'package:miale_ui/widgets/miale_text.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sizer/sizer.dart';

import '../miale_ui.dart';

class MialeButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  final bool isLoading;
  final bool isPrimaryButton;
  final Color backGroundColor;
  final Color textColor;
  const MialeButton(
      {Key? key,
      required this.title,
      this.onTap,
      this.isLoading = false,
      this.backGroundColor = kcGreenColor,
      this.textColor = kcWhiteColor,
      this.isPrimaryButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MialeBox(
        width: 90.0.w,
        height: 5.0.h,
        padding: const EdgeInsets.all(10.0),
        color: backGroundColor,
        child: isLoading
            ? JumpingDotsProgressIndicator(
                color: textColor,
                fontSize: 16.sp,
                milliseconds: 120,
              )
            : Center(
                child: isPrimaryButton
                    ? MialeText.body(
                        title,
                        color: textColor,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MialeText.body(
                            title,
                            color: textColor,
                          ),
                          SvgPicture.string(
                            kiChevronRightWhite,
                            color: textColor,
                          )
                        ],
                      )),
      ),
    );
  }
}
