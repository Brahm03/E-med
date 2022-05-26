import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get apptheme => ThemeData(
    splashColor: ColorConst.kPrimaryColor,
      fontFamily: 'HKfont',
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorConst.white))),
      colorScheme: const ColorScheme.light(
          primary: ColorConst.kPrimaryColor, brightness: Brightness.light));
}
