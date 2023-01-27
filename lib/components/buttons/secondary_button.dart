import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdSecondaryButton extends StatelessWidget {
  const BdSecondaryButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
    this.bold,
  }) : super(key: key);

  final String label;
  final Function onTap;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;
  final bool? bold;

  @override
  Widget build(BuildContext context) {
    return BdButton(
      onTap: onTap,
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      radius: radius,
      backgroundColor: BdColor.secondaryLight,
      child: bold == true
          ? BdBoldText(
              label,
              color: Colors.white,
            )
          : BdText(
              label,
              color: Colors.white,
            ),
    );
  }
}
