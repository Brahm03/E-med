import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/constants/radius/radiusConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:flutter/material.dart';

class AlertWidgets {
  static void showalertwidgets({required String time,required String name,required BuildContext context,required VoidCallback ontap }) {
    showDialog(
        barrierColor: ColorConst.grey.withOpacity(0.5),
        context: context,
        builder: (context) => AlertDialog(
              title: IconConst.done,
              insetPadding: EdgeInsets.symmetric(vertical: context.h * 0.25),
              actionsAlignment: MainAxisAlignment.center,
              content: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'You have successfully booked\nan appointment',
                      style: FontStyles.headline4sbold,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'You can go to $name\n on ${time.substring(0,10)}',
                      style: FontStyles.headline4s,
                      textAlign: TextAlign.center,
                    ),
                    ButtonWidgets(
                        onPressed: ontap,
                        child: const Text('Go home'))
                  ]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiuConst.medium)),
              backgroundColor: ColorConst.white,
            ));
  }
}
