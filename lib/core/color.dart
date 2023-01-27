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
    primaryLight = primaryColors[2];
    primary = primaryColors[5];
    primaryDark = primaryColors[9];
  }

  static List<Color> primaryColors = createMaterialColor(_basePrimary);
  static Color primaryLight = primaryColors[2];
  static Color primary = primaryColors[5];
  static Color primaryDark = primaryColors[9];

  // Black Color
  static Color _baseBlack = const Color(0xff343a40);

  Color get baseBlack => _baseBlack;

  set baseBlack(Color baseBlack) {
    _baseBlack = baseBlack;
    blackColors = createMaterialColor(_baseBlack);
    blackLight = blackColors[2];
    black = blackColors[5];
    blackDark = blackColors[9];
  }

  static List<Color> blackColors = createMaterialColor(_baseBlack);
  static Color blackLight = blackColors[2];
  static Color black = blackColors[5];
  static Color blackDark = blackColors[9];

  // Gray Color
  static Color _baseGray = const Color(0xfff2f2f2);

  Color get baseGray => _baseGray;

  set baseGray(Color baseGray) {
    _baseGray = baseGray;
    grayColors = createMaterialColor(_baseGray);
    grayLight = grayColors[2];
    gray = grayColors[5];
    grayDark = grayColors[9];
  }

  static List<Color> grayColors = createMaterialColor(_baseGray);
  static Color grayLight = grayColors[2];
  static Color gray = grayColors[5];
  static Color grayDark = grayColors[9];

  // Red Color
  static Color _baseRed = const Color(0xfffa5252);

  Color get baseRed => _baseRed;

  set baseRed(Color baseRed) {
    _baseRed = baseRed;
    redColors = createMaterialColor(_baseRed);
    redLight = redColors[2];
    red = redColors[5];
    redDark = redColors[9];
  }

  static List<Color> redColors = createMaterialColor(_baseRed);
  static Color redLight = redColors[2];
  static Color red = redColors[5];
  static Color redDark = redColors[9];

  // Green Color
  static Color _baseGreen = const Color(0xff40c057);

  Color get baseGreen => _baseGreen;

  set baseGreen(Color baseGreen) {
    _baseGreen = baseGreen;
    greenColors = createMaterialColor(_baseGreen);
    greenLight = greenColors[2];
    green = greenColors[5];
    greenDark = greenColors[9];
  }

  static List<Color> greenColors = createMaterialColor(_baseGreen);
  static Color greenLight = greenColors[2];
  static Color green = greenColors[5];
  static Color greenDark = greenColors[9];

  // Orange Color
  static Color _baseOrange = const Color(0xffff922b);

  Color get baseOrange => _baseOrange;

  set baseOrange(Color baseOrange) {
    _baseOrange = baseOrange;
    orangeColors = createMaterialColor(_baseOrange);
    orangeLight = orangeColors[2];
    orange = orangeColors[5];
    orangeDark = orangeColors[9];
  }

  static List<Color> orangeColors = createMaterialColor(_baseOrange);
  static Color orangeLight = orangeColors[2];
  static Color orange = orangeColors[5];
  static Color orangeDark = orangeColors[9];

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
