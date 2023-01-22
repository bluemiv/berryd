import 'package:flutter/material.dart';

class ColorService {
  static List<Color> createMaterialColor(Color color) {
    List strengths = <double>[.05];
    List<Color> colorList = [];
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (final strength in strengths) {
      final double ds = 0.5 - strength;
      colorList.add(Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      ));
    }

    return colorList;
  }
}
