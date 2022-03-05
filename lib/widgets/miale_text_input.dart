import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miale_ui/theming/color.dart';
import 'package:miale_ui/theming/text.dart';

import 'package:sizer/sizer.dart';

import '../theming/icons.dart';

class MialeTextInput extends StatelessWidget {
  final String Function(String string) validator;
  final String hint;
  final bool hasSuffix;
  final bool obscureText;
  final bool hasLongInput;
  final TextEditingController controller;
  final Color inputTextColor;
  final Color outlineColor;
  final Color color;
  final String svgIcon;

  const MialeTextInput({
    Key? key,
    required this.validator,
    this.hint = 'hint',
    this.hasSuffix = false,
    required this.controller,
    this.obscureText = false,
    this.hasLongInput = false,
    this.inputTextColor = kcBlackColor,
    this.svgIcon = kiSearchBlack,
    this.color = kcWhiteColor,
    this.outlineColor = kcDarkGreyColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      maxLines: hasLongInput ? 10 : 1,
      style: bodyStyle.copyWith(color: inputTextColor),
      decoration: InputDecoration(
        suffixIcon: hasSuffix
            ? SizedBox(
                width: 2.w,
                height: 2.w,
                child: SvgPicture.string(
                  svgIcon,
                ))
            : null,
        hintStyle: bodyStyle.copyWith(color: inputTextColor.withOpacity(0.7)),
        hintText: hint,
        fillColor: color,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: kcGreyLight)),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: outlineColor)),
        filled: true,
      ),
    );
  }
}
