import 'package:flutter/cupertino.dart';
import 'package:miale_ui/theming/text.dart';

import '../theming/color.dart';

class MialeText extends StatelessWidget {
  final String text;
  final TextStyle style;

  MialeText.headingOne(this.text, {Key? key})
      : style = heading1Style,
        super(key: key);
  MialeText.headingTwo(this.text, {Key? key})
      : style = heading2Style,
        super(key: key);
  MialeText.headingThree(this.text, {Key? key})
      : style = heading3Style,
        super(key: key);
  MialeText.headline(this.text, {Key? key})
      : style = headlineStyle,
        super(key: key);
  MialeText.subHeading(this.text, {Key? key})
      : style = subheadingStyle,
        super(key: key);
  MialeText.caption(this.text, {Key? key})
      : style = captionStyle,
        super(key: key);

  MialeText.body(
    this.text, {
    Key? key,
    Color color = kcBlackColor,
  })  : style = bodyStyle.copyWith(
          color: color,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
