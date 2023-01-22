import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BdLayout(
      appBar: AppBar(
        title: const BdText(
          "Typography",
          color: Colors.white,
        ),
      ),
      padding: EdgeInsets.all(BdSpace.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          BdText("default text"),
        ],
      ),
    );
  }
}
