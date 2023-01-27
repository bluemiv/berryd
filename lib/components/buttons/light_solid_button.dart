import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdLightSolidButton extends StatelessWidget {
  const BdLightSolidButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
    this.thin,
  }) : super(key: key);

  final String label;
  final Function onTap;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;
  final bool? thin;

  @override
  Widget build(BuildContext context) {
    return BdButton(
      onTap: onTap,
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      radius: radius,
      backgroundColor: BdColor.gray,
      child: thin == true
          ? BdText(
              label,
              color: BdColor.primary,
            )
          : BdBoldText(
              label,
              color: BdColor.primary,
            ),
    );
  }
}
