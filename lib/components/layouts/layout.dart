import 'package:flutter/material.dart';

class BdLayout extends StatelessWidget {
  const BdLayout({Key? key, required this.child, this.appBar, this.padding}) : super(key: key);

  final EdgeInsets? padding;
  final AppBar? appBar;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Padding(
          padding: padding ?? const EdgeInsets.all(0),
          child: child,
        ),
      ),
    );
  }
}
