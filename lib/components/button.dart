import 'package:flutter/material.dart';

class BdButton extends StatelessWidget {
  const BdButton({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
