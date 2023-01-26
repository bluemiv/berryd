import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdText extends StatelessWidget {
  const BdText(this.text,
      {Key? key, this.size, this.color, this.weight, this.shadows})
      : super(key: key);

  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? BdFontSize.md,
        color: color ?? BdBlack.darkColor,
        fontWeight: weight ?? FontWeight.normal,
        shadows: shadows,
      ),
    );
  }
}
