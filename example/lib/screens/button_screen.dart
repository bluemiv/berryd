import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);
  static const String routeName = "/button";

  @override
  Widget build(BuildContext context) {
    return BdBackLayout(
      title: const BdBoldText("Buttons"),
      padding: EdgeInsets.all(BdSpace.sm),
      child: BdSpaceWrapper(
        vertical: true,
        spacing: BdSpace.sm,
        children: [
          BdButton(
            backgroundColor: BdColor.black,
            onTap: () {
              print("Clcked button!");
            },
            child: Text(
              "Normal button",
              style: TextStyle(color: Colors.white, fontSize: BdFontSize.md),
            ),
          ),
        ],
      ),
    );
  }
}
