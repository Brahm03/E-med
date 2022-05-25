import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/core/constants/font/fontsize.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 0.06,
      child: Column(
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Row(
                children: const[
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
            ),
            const Spacer(),
            const Text("Sign Up", style: FontStyles.headline2s),
            const Spacer(),
            SizedBox(
              width: context.w * 0.2,
            )
          ],
        ),
        const Divider(color: ColorConst.black,)
  ]),
    );
  }
}
