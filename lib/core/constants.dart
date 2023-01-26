import 'package:berryd/core/color_service.dart';
import 'package:flutter/material.dart';

class BdSpace {
  static double sm = 14.0;
  static double md = 24.0;
  static double lg = 36.0;
}

class BdFontSize {
  static double sm = 10.0;
  static double md = 14.0;
  static double lg = 18.0;
}

class BdRadius {
  static double sm = 8.0;
  static double md = 12.0;
  static double lg = 18.0;
  static double circle = 500.0;
}

class BdBlack {
  static List<Color> colors =
      ColorService.createMaterialColor(const Color(0xff343a40));
  static Color lightColor = colors[3];
  static Color color = colors[6];
  static Color darkColor = colors[9];
}

class BdPrimary {
  static List<Color> colors =
      ColorService.createMaterialColor(const Color(0xff396cff));
  static Color lightColor = colors[3];
  static Color color = colors[6];
  static Color darkColor = colors[9];
}

class BdSecondary {
  static List<Color> colors =
      ColorService.createMaterialColor(const Color(0xffff669f));
  static Color lightColor = colors[3];
  static Color color = colors[6];
  static Color darkColor = colors[9];
}

class BdRed {
  static List<Color> colors =
      ColorService.createMaterialColor(const Color(0xfffa5252));
  static Color lightColor = colors[3];
  static Color color = colors[6];
  static Color darkColor = colors[9];
}

class BdGreen {
  static List<Color> colors =
      ColorService.createMaterialColor(const Color(0xff40c057));
  static Color lightColor = colors[3];
  static Color color = colors[6];
  static Color darkColor = colors[9];
}

class BdOrange {
  static List<Color> colors =
      ColorService.createMaterialColor(const Color(0xffff922b));
  static Color lightColor = colors[3];
  static Color color = colors[6];
  static Color darkColor = colors[9];
}
