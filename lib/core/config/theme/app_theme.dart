import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get apptheme => ThemeData(
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorConst.white))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ColorConst.kPrimaryColor))),
      colorScheme: const ColorScheme.light(
          primary: ColorConst.kPrimaryColor, brightness: Brightness.light));
}
