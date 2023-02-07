import 'package:flutter/material.dart';

class BdSpaceWrapper extends StatelessWidget {
  const BdSpaceWrapper(
      {Key? key,
      required this.vertical,
      required this.children,
      required this.spacing,
      this.crossAxisAlignment,
      this.mainAxisAlignment})
      : super(key: key);

  final bool vertical;
  final List<Widget> children;
  final double spacing;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    if (vertical) {
      return Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: List.generate(children.length, (index) {
          if (children.length - 1 == index) {
            return children[index];
          }

          return Container(
            margin: EdgeInsets.only(bottom: spacing),
            child: children[index],
          );
        }),
      );
    }
    return Row(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: List.generate(children.length, (index) {
        if (children.length - 1 == index) {
          return children[index];
        }

        return Container(
          margin: EdgeInsets.only(right: spacing),
          child: children[index],
        );
      }),
    );
  }
}
