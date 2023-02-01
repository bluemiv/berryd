import 'package:flutter/material.dart';

class BdColor {
  BdColor._privateConstructor();

  static final BdColor _instance = BdColor._privateConstructor();

  factory BdColor() {
    return _instance;
  }

  // Primary Color
  static Color _basePrimary = const Color(0xff1677ff);

  Color get basePrimary => _basePrimary;

  set basePrimary(Color basePrimary) {
    _basePrimary = basePrimary;
    primaryColors = createMaterialColor(_basePrimary);
    primaryLight = primaryColors[0];
    primary = primaryColors[10];
    primaryDark = primaryColors[15];
  }

  static List<Color> primaryColors = createMaterialColor(_basePrimary);
  static Color primaryLight = primaryColors[0];
  static Color primary = primaryColors[10];
  static Color primaryDark = primaryColors[15];

  // Black Color
  static Color _baseBlack = const Color(0xff343a40);

  Color get baseBlack => _baseBlack;

  set baseBlack(Color baseBlack) {
    _baseBlack = baseBlack;
    blackColors = createMaterialColor(_baseBlack);
    blackLight = blackColors[0];
    black = blackColors[10];
    blackDark = blackColors[15];
  }

  static List<Color> blackColors = createMaterialColor(_baseBlack);
  static Color blackLight = blackColors[0];
  static Color black = blackColors[10];
  static Color blackDark = blackColors[15];

  // Red Color
  static Color _baseRed = const Color(0xfffa5252);

  Color get baseRed => _baseRed;

  set baseRed(Color baseRed) {
    _baseRed = baseRed;
    redColors = createMaterialColor(_baseRed);
    redLight = redColors[0];
    red = redColors[10];
    redDark = redColors[15];
  }

  static List<Color> redColors = createMaterialColor(_baseRed);
  static Color redLight = redColors[0];
  static Color red = redColors[10];
  static Color redDark = redColors[15];

  // Green Color
  static Color _baseGreen = const Color(0xff40c057);

  Color get baseGreen => _baseGreen;

  set baseGreen(Color baseGreen) {
    _baseGreen = baseGreen;
    greenColors = createMaterialColor(_baseGreen);
    greenLight = greenColors[0];
    green = greenColors[10];
    greenDark = greenColors[15];
  }

  static List<Color> greenColors = createMaterialColor(_baseGreen);
  static Color greenLight = greenColors[0];
  static Color green = greenColors[10];
  static Color greenDark = greenColors[15];

  // Orange Color
  static Color _baseOrange = const Color(0xffff922b);

  Color get baseOrange => _baseOrange;

  set baseOrange(Color baseOrange) {
    _baseOrange = baseOrange;
    orangeColors = createMaterialColor(_baseOrange);
    orangeLight = orangeColors[0];
    orange = orangeColors[10];
    orangeDark = orangeColors[15];
  }

  static List<Color> orangeColors = createMaterialColor(_baseOrange);
  static Color orangeLight = orangeColors[0];
  static Color orange = orangeColors[10];
  static Color orangeDark = orangeColors[15];

  static List<Color> createMaterialColor(Color color) {
    List strengths = <double>[.05];
    List<Color> colorList = [];
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 16; i++) {
      strengths.add(0.1 * i);
    }

    for (final strength in strengths) {
      final double ds = 1.0 - strength;
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
