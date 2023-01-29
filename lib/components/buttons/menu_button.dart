import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.title,
    required this.desc,
    required this.onTap,
    this.imageWidget,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  final String title, desc;
  final Widget? imageWidget;
  final Function onTap;
  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return BdButton(
      backgroundColor: backgroundColor ?? BdColor.blackLight,
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
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
