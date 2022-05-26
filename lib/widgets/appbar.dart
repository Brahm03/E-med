import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/core/constants/font/fontsize.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  final Widget leading;
  final Widget trailing;
  const AppBarWidget({
    this.trailing = const SizedBox(),
    required this.leading,
    this.text = 'Sign up',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 0.07,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leading,
            const Spacer(),
            Text(text, style: FontStyles.headline2s),
            const Spacer(),
            SizedBox(
              width: context.w * 0.2,
            ),
            Spacer(),
            trailing
          ],
        ),
        const Divider(
          color: ColorConst.black,
        )
      ]),
    );
  }
}
