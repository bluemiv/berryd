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
    this.bottomBannerContainer,
  }) : super(key: key);

  final Widget child;
  final Widget? title, bottomBannerContainer;
  final double? elevation;
  final EdgeInsets? padding;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return BdLayout(
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
      bottomBannerContainer: bottomBannerContainer,
      child: child,
    );
  }
}
