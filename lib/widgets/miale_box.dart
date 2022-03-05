import 'package:flutter/material.dart';

import '../theming/color.dart';

class MialeBox extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;
  final double height;
  final EdgeInsets padding;
  const MialeBox(
      {Key? key,
      required this.child,
      required this.color,
      required this.width,
      required this.height,
      this.padding = const EdgeInsets.all(10)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        height: height,
        width: width,
        child: child,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            boxShadow: const [
              BoxShadow(color: kcGreyLight, offset: Offset(2, 5)),
              BoxShadow(color: kcGreyLight, offset: Offset(-2, 5)),
              BoxShadow(color: kcGreyLight, offset: Offset(2, -3))
            ]));
  }
}
