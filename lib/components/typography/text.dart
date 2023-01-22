import 'package:flutter/material.dart';
import 'package:berryd/berryd.dart';

class BdText extends StatelessWidget {
  const BdText(this.text, {Key? key, this.color} ) : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: color ?? BdBlack.darkColor,
    ),
    );
  }
}
