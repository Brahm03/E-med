import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/font/fontsize.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class BackButtonWidgets extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final Icon icon;
  const BackButtonWidgets({this.icon = const Icon(
            Icons.chevron_left_outlined,
            size: FontSize.extraLarge,
            color: ColorConst.kPrimaryColor,
          ),this.text = 'Back', required this.ontap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: context.h * 0.029,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            Text(
              text,
              style: FontStyles.headline3sblue,
            ),
          ],
        ),
      ),
    );
  }
}
