import 'package:flutter/material.dart';

class BdLayout extends StatelessWidget {
  const BdLayout({
    Key? key,
    required this.child,
    this.appBar,
    this.padding,
    this.bottomBannerContainer,
  }) : super(key: key);

  final EdgeInsets? padding;
  final AppBar? appBar;
  final Widget child;
  final Widget? bottomBannerContainer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: padding ?? const EdgeInsets.all(0),
              margin: EdgeInsets.only(
                  bottom: bottomBannerContainer != null ? 80 : 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: child,
              ),
            ),
            if (bottomBannerContainer != null)
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: bottomBannerContainer,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
