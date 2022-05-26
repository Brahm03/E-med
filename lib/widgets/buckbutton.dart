import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/core/constants/font/fontsize.dart';
import 'package:flutter/material.dart';

class BackButtonWidgets extends StatelessWidget {
  final VoidCallback ontap;
  const BackButtonWidgets({required this.ontap,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: const [
          Icon(
            Icons.chevron_left_outlined,
            size: FontSize.extraLarge,
            color: ColorConst.kPrimaryColor,
          ),
          Text(
            "Back",
            style: FontStyles.headline3sblue,
          ),
        ],
      ),
    );
  }
}
