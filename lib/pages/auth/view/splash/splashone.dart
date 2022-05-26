import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashOne extends StatelessWidget {
  const SplashOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children :[
              IconConst.logo,
              SizedBox(width: context.w * 0.050),
              IconConst.title
          ]
        ),
      ),
    );
  }
}
