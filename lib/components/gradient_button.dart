import 'package:berryd/core/constants.dart';
import 'package:flutter/material.dart';

class BdGradientButton extends StatelessWidget {
  const BdGradientButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.backgroundColorList,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  final Widget child;
  final Function onTap;
  final List<Color>? backgroundColorList;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius ?? BdRadius.md);
    final innerMargin = margin ?? EdgeInsets.zero;
    final innerPadding = padding ?? EdgeInsets.all(BdSpace.sm);
    final innerBackgroundColorList =
        backgroundColorList ?? [BdPrimary.lightColor, BdSecondary.lightColor];

    return Container(
      margin: innerMargin,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  boxShadow: [
                    BoxShadow(
                      color: (innerBackgroundColorList[0]).withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(-1, -1),
                    ),
                  ],
                ),
                child: Container(
                  padding: innerPadding,
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: innerBackgroundColorList,
                    ),
                    borderRadius: borderRadius,
                    boxShadow: [
                      BoxShadow(
                        color: (innerBackgroundColorList[1]).withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: child,
                ),
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
