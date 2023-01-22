import 'package:berryd/berryd.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BdLayout(
      appBar: AppBar(
        title: const BdText(
          "Home",
          color: Colors.white,
        ),
      ),
      padding: EdgeInsets.all(BdSpace.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BdPrimaryButton(
              label: "Buttons",
              onTap: () {
                Navigator.pushNamed(context, '/button');
              }),
          SizedBox(height: BdSpace.sm),
          BdPrimaryButton(
              label: "Typography",
              onTap: () {
                Navigator.pushNamed(context, '/typography');
              }),
        ],
      ),
    );
  }
}
