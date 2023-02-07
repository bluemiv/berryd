import 'package:berryd/berryd.dart';
import 'package:example/screens/button_screen.dart';
import 'package:example/screens/typography_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return BdLayout(
      appBar: AppBar(
        title: const BdText(
          "Home",
          color: Colors.white,
        ),
        elevation: 0,
      ),
      padding: EdgeInsets.all(BdSpace.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BdSolidButton(
              label: "Buttons",
              onTap: () {
                Navigator.pushNamed(context, ButtonScreen.routeName);
              }),
          SizedBox(height: BdSpace.sm),
          BdSolidButton(
              label: "Typography",
              onTap: () {
                Navigator.pushNamed(context, TypographyScreen.routeName);
              }),
        ],
      ),
    );
  }
}
