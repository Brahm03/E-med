import 'package:emed/core/components/ElevetedButtonStyle/ElevetedButtonStyle.dart';
import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonWidgets extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color backGroundColor;
  final Color bordercolor;
  const ButtonWidgets(
      {this.backGroundColor = ColorConst.kPrimaryColor,
      this.bordercolor = ColorConst.kPrimaryColor,
      required this.child,
      this.height = 60,
      required this.onPressed,
      this.width = 350,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyles.elevetedStyle(
          backgroundcolor: backGroundColor,
          borderColor: bordercolor,
          height: height,
          width: width,
          context: context),
      child: Align(alignment: Alignment.center, child: child),
    );
  }
}
