import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({Key? key}) : super(key: key);
  static const String routeName = "/typography";

  @override
  Widget build(BuildContext context) {
    return BdBackLayout(
      title: const BdBoldText("Typography"),
      padding: EdgeInsets.all(BdSpace.sm),
      child: BdSpaceWrapper(
        vertical: true,
        spacing: BdSpace.sm,
        children: const [
          BdText("Default text"),
          BdBoldText("Bold text"),
          BdBoldText(
              "Very looooooooooooooooooooooooooooooooooooooooooooooooooooooooooog text"),
        ],
      ),
    );
  }
}
