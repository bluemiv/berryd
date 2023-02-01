import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.title,
    required this.desc,
    required this.onTap,
    this.width,
    this.height,
    this.imageWidget,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  final String title, desc;
  final Widget? imageWidget;
  final Function onTap;
  final Color? backgroundColor, textColor;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return BdButton(
      width: width ?? double.infinity,
      height: height,
      backgroundColor: backgroundColor ?? BdColor.blackLight,
      onTap: onTap,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BdBoldText(
                  title,
                  color: textColor ?? BdColor.blackDark,
                ),
                SizedBox(height: BdSpace.sm),
                BdText(
                  desc,
                  size: BdFontSize.sm,
                  color: textColor ?? BdColor.blackDark,
                ),
              ],
            ),
            if (imageWidget != null) imageWidget!,
          ],
        ),
      ),
    );
  }
}
