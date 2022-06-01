import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:flutter/material.dart';

class TakenDrugDetailsView extends StatelessWidget {
  String drugName;
  String mg;
  String fromdo;
  TakenDrugDetailsView(
      {Key? key,
      required this.drugName,
      required this.mg,
      required this.fromdo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              center: const Text(
                "Taken drug details",
                style: FontStyles.headline3s,
              ),
              leading: BackButtonWidgets(
                ontap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SizedBox(
                      width: context.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.h * 0.03),
                          const Text("Drug name"),
                          Text(drugName, style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          const Text("Dose"),
                          Text(mg, style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          const Text("Taking dates (start-end)"),
                          Text(fromdo, style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          const Text("How many times"),
                          const Text("2 times a day", style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          const Text("Associated with"),
                          const Text("Multiple sclerosis",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.03),
                          const Text("Comments"),
                          const Text("Consume without water. It lessons the effect",
                              style: FontStyles.headline3s),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
