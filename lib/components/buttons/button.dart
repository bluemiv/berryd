import 'package:berryd/berryd.dart';
import 'package:berryd/core/constants.dart';
import 'package:flutter/material.dart';

class BdButton extends StatelessWidget {
  const BdButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
    this.boxShadow,
  }) : super(key: key);

  final Widget child;
  final Function onTap;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius ?? BdRadius.sm);
    final innerMargin = margin ?? EdgeInsets.zero;
    final innerPadding = padding ?? EdgeInsets.all(BdSpace.sm);
    final innerBackgroundColor = backgroundColor ?? Colors.transparent;

    return Container(
      margin: innerMargin,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                padding: innerPadding,
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: innerBackgroundColor,
                  borderRadius: borderRadius,
                  boxShadow: boxShadow,
                ),
                alignment: Alignment.center,
                child: child,
              ),
              Positioned.fill(
                top: 0,
                left: 0,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: borderRadius,
                    onTap: () {
                      onTap();
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
