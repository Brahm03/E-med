import 'package:emed/core/components/boxdecoration/boxdecations.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class ShowModalWidget {
  static Future<dynamic> showModal(
      BuildContext context, String title, String mg) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxOnlyDecoration.decor(ColorConst.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(""),
                      ),
                      const Spacer(),
                      Text(title, style: FontStyles.headline3s),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Ok", style: FontStyles.headline3sblue),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 1),
                SizedBox(height: context.h * 0.01),
                const Text("Drug name"),
                SizedBox(height: context.h * 0.005),
                Text(title, style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                const Text("Dose"),
                SizedBox(height: context.h * 0.005),
                Text(mg, style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                const Text("Taking dates (start-end)"),
                SizedBox(height: context.h * 0.005),
                const Text("20.05.2022 - 30.05.2022", style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                const Text("How many times"),
                SizedBox(height: context.h * 0.005),
                const Text("2 times a day", style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                const Text("Associated with"),
                SizedBox(height: context.h * 0.005),
                const Text("Multiple scleroris", style: FontStyles.headline3s),
                SizedBox(height: context.h * 0.01),
                const Text("Comments"),
                SizedBox(height: context.h * 0.005),
                const Text("Consume without water. It lessens the affect",
                    style: FontStyles.headline3s),
              ],
            ),
          ),
        );
      },
    );
  }
}
