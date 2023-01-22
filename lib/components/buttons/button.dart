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
  }) : super(key: key);

  final Widget child;
  final Function onTap;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius ?? BdRadius.md);
    final innerMargin = margin ?? EdgeInsets.zero;
    final innerPadding = padding ?? EdgeInsets.all(BdSpace.sm);
    final innerBackgroundColor = backgroundColor ?? BdPrimary.color;

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
                  boxShadow: backgroundColor == Colors.transparent
                      ? null
                      : [
                          BoxShadow(
                            color: (innerBackgroundColor).withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 3,
                            offset: const Offset(2, 2),
                          ),
                        ],
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
