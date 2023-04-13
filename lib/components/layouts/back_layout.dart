import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class BdBackLayout extends StatelessWidget {
  const BdBackLayout({
    Key? key,
    required this.child,
    this.title,
    this.elevation,
    this.padding,
    this.onPressed,
    this.bottomBanner,
    this.backgroundColor,
  }) : super(key: key);

  final Widget child;
  final Widget? title, bottomBanner;
  final double? elevation;
  final EdgeInsets? padding;
  final Function? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return BdLayout(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: BdColor.blackDark,
          onPressed: () {
            if (onPressed != null) {
              onPressed!();
            } else {
              Navigator.pop(context);
            }
          },
        ),
        title: title,
        elevation: elevation ?? 0,
        backgroundColor: Colors.transparent,
      ),
      padding: padding,
      bottomBanner: bottomBanner,
      child: child,
    );
  }
}
