import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer(
      {Key? key,
      required this.child,
      this.boxShadow,
      this.color,
      this.padding,
      this.margin,
      this.borderRadius,
      this.width,
      this.height})
      : super(key: key);

  final Widget child;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final EdgeInsets? padding, margin;
  final BorderRadius? borderRadius;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      padding: padding ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        boxShadow: boxShadow ??
            <BoxShadow>[
              BoxShadow(
                offset: const Offset(2, 2),
                blurRadius: 3,
                color: BdColor.blackLight,
              )
            ],
        color: color,
        borderRadius: borderRadius,
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
