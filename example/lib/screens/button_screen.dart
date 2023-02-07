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
          BdSpaceWrapper(
            vertical: false,
            spacing: BdSpace.sm,
            children: [
              BdSolidButton(
                label: "Solid",
                onTap: () {
                  print("Clicked solid button!");
                },
              ),
              BdSolidButton(
                label: "Solid thin",
                thin: true,
                onTap: () {
                  print("Clicked solid button!");
                },
              ),
              BdSolidButton(
                label: "Solid radius lg",
                radius: BdRadius.lg,
                onTap: () {
                  print("Clicked solid button!");
                },
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: BdSpaceWrapper(
              vertical: false,
              spacing: BdSpace.sm,
              children: [
                BdLightSolidButton(
                  label: "Light solid",
                  onTap: () {
                    print("Clicked light solid button!");
                  },
                ),
                BdLightSolidButton(
                  label: "Light solid thin",
                  thin: true,
                  onTap: () {
                    print("Clicked light solid button!");
                  },
                ),
                BdLightSolidButton(
                  label: "Light solid radius lg",
                  radius: BdRadius.lg,
                  onTap: () {
                    print("Clicked light solid button!");
                  },
                ),
              ],
            ),
          ),
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
