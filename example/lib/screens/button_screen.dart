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
          BdPrimaryButton(
            label: "Primary button",
            onTap: () {
              print("clicked primary button!");
            },
          ),
          BdSecondaryButton(
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
          BdGradientButton(
            child: Text(
              "Gradient button",
              style: TextStyle(color: Colors.white, fontSize: BdFontSize.md),
            ),
            onTap: () {
              print("clicked gradient button!");
            },
          ),
        ],
      ),
    );
  }
}
