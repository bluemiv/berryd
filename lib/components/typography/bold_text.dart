import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdBoldText extends StatelessWidget {
  const BdBoldText(this.text,
      {Key? key, this.size, this.color, this.shadows, this.fontFamily})
      : super(key: key);

  final String text;
  final double? size;
  final Color? color;
  final List<Shadow>? shadows;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return BdText(text,
        weight: FontWeight.bold,
        size: size,
        color: color,
        shadows: shadows,
        fontFamily: fontFamily);
  }
}
