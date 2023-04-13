import 'package:flutter/material.dart';

class BdLayout extends StatelessWidget {
  const BdLayout({
    Key? key,
    required this.child,
    this.appBar,
    this.padding,
    this.topBannerHeight,
    this.topBanner,
    this.bottomBannerHeight,
    this.bottomBanner,
    this.backgroundColor,
  }) : super(key: key);

  final EdgeInsets? padding;
  final AppBar? appBar;
  final Widget child;
  final Widget? topBanner;
  final Widget? bottomBanner;
  final Color? backgroundColor;
  final double? topBannerHeight;
  final double? bottomBannerHeight;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height,
              color: backgroundColor ?? Colors.transparent,
              padding: padding ?? const EdgeInsets.all(0),
              margin: EdgeInsets.only(
                top: topBanner != null ? topBannerHeight ?? 80 : 0,
                bottom: bottomBanner != null ? bottomBannerHeight ?? 80 : 0,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: child,
              ),
            ),
            if (topBanner != null)
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  height: topBannerHeight ?? 80,
                  width: size.width,
                  child: topBanner,
                ),
              ),
            if (bottomBanner != null)
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  height: bottomBannerHeight ?? 80,
                  width: size.width,
                  child: bottomBanner,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
