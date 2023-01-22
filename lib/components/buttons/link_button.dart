import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdLinkButton extends StatelessWidget {
  const BdLinkButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  final String label;
  final Function onTap;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;

  @override
  Widget build(BuildContext context) {
    return BdButton(
      onTap: onTap,
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      radius: radius,
      backgroundColor: Colors.transparent,
      child: Text(
        label,
        style: TextStyle(color: BdPrimary.color),
      ),
    );
  }
}
