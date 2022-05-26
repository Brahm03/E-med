import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FWconst.dart';
import 'package:emed/core/constants/font/fontsize.dart';
import 'package:flutter/material.dart';

class FontStyles {
  static const TextStyle headline1s = TextStyle(fontSize: FontSize.huge, fontWeight: FWconst.bold);
  static const TextStyle headline2s = TextStyle(fontSize: FontSize.large, fontWeight: FWconst.bold);
  static const TextStyle headline3s = TextStyle(fontSize: FontSize.medium, fontWeight: FWconst.bold);
  static const TextStyle headline3sblue = TextStyle(fontSize: FontSize.medium, color: ColorConst.kPrimaryColor, fontWeight: FWconst.bold);
  static const TextStyle headline4s = TextStyle(fontSize: FontSize.medium);
  static const TextStyle headline5s = TextStyle(fontSize: FontSize.medium);
  static const TextStyle headline6s = TextStyle(fontSize: FontSize.small + 5, fontWeight: FWconst.bold);
  static const TextStyle headline7s = TextStyle(fontSize: FontSize.extraSmall);
}
