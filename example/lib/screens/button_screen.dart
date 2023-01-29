import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BdLayout(
      appBar: AppBar(
          title: const BdText(
        "Buttons",
        color: Colors.white,
      )),
      padding: EdgeInsets.all(BdSpace.sm),
      child: Wrap(
        direction: Axis.vertical,
        spacing: BdSpace.sm,
        children: [
          BdButton(
            backgroundColor: BdColor.black,
            onTap: () {
              print("clicked default button!");
            },
            child: Text(
              "Default button",
              style: TextStyle(color: Colors.white, fontSize: BdFontSize.md),
            ),
          ),
          BdSolidButton(
            label: "Solid button",
            onTap: () {
              print("clicked solid button!");
            },
          ),
          BdLightSolidButton(
            label: "Secondary button",
            onTap: () {
              print("clicked secondary button!");
            },
          ),
          BdLinkButton(
            label: "Link button",
            onTap: () {
              print("clicked link button!");
            },
          ),
        ],
      ),
    );
  }
}
