import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor mainColor =
      MaterialColor(_mainColorPrimaryValue, <int, Color>{
    50: Color(0xFFEEE7F2),
    100: Color(0xFFD5C4DF),
    200: Color(0xFFB99DCA),
    300: Color(0xFF9C76B5),
    400: Color(0xFF8758A5),
    500: Color(_mainColorPrimaryValue),
    600: Color(0xFF6A358D),
    700: Color(0xFF5F2D82),
    800: Color(0xFF552678),
    900: Color(0xFF421967),
  });
  static const int _mainColorPrimaryValue = 0xFF723B95;

  static const MaterialColor mainColorAccent =
      MaterialColor(_mainColorAccentValue, <int, Color>{
    100: Color(0xFFD0A1FF),
    200: Color(_mainColorAccentValue),
    400: Color(0xFF9D3BFF),
    700: Color(0xFF9022FF),
  });
  static const int _mainColorAccentValue = 0xFFB76EFF;
}
