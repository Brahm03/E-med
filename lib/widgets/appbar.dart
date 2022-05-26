import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final Widget center;
  final Widget leading;
  final Widget trailing;
  const AppBarWidget({
    this.trailing = const SizedBox(),
    required this.leading,
    this.center = const Text('Sign up', style: FontStyles.headline3s,),
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
            center,
            const Spacer(),
            SizedBox(
              width: context.w * 0.1,
            ),
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
