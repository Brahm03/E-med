import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get apptheme => ThemeData(
    elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle()),
    colorScheme: const ColorScheme.light(
      primary: ColorConst.kPrimaryColor,
      brightness: Brightness.light
    )
  );
}
