import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/core/constants/radius/RadiusConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static elevetedStyle({TextStyle fontStyles = FontStyles.headline3s,required double height, required double width,required BuildContext context, Color backgroundcolor = ColorConst.kPrimaryColor, Color borderColor = Colors.transparent}) {
    return ElevatedButton.styleFrom(
        textStyle: fontStyles,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiuConst.small)),
        primary: backgroundcolor,
        side: BorderSide(color: borderColor),
        fixedSize: Size(width, height));
  }
  
}
