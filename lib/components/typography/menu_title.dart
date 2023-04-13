import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdMenuTitle extends StatelessWidget {
  const BdMenuTitle(this.text, {Key? key, this.left, this.bottom, this.color})
      : super(key: key);

  final String text;
  final double? left, bottom;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left ?? 0, bottom: bottom ?? BdSpace.sm),
      child: BdBoldText(
        text,
        color: color,
        size: BdFontSize.md,
      ),
    );
  }
}
