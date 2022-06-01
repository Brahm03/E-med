import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/view/pages/treatment/view/listtilewidgets/more_list_tile_widget.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:flutter/material.dart';

class TreatmentDetailsView extends StatelessWidget {
  String name;
  String clinic;
  TreatmentDetailsView({Key? key, required this.name, required this.clinic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
                trailing: SizedBox(width: context.h * 0.06),
                center: const Text(
                  "Treatment details",
                  style: FontStyles.headline3s,
                ),
                leading: BackButtonWidgets(ontap: () {
                  Navigator.pop(context);
                })),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage:
                          NetworkImage('https://source.unsplash.com/random'),
                    ),
                    SizedBox(height: context.h * 0.01),
                    Text(name, style: FontStyles.headline3s),
                    const Text("Dermotologist"),
                    SizedBox(height: context.h * 0.03),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        width: context.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Clinic"),
                            Text(clinic, style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            const Text("Clinic location"),
                            const Text("Shaykhontakhur district, st.",
                                style: FontStyles.headline3s),
                            const Text("Zulfiyakhonim, 18 Tashkent, 100128",
                                style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            const Text("Start date"),
                            const Text("20.11.2021", style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            const Text("Complaints"),
                            const Text("Redness on the skin",
                                style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            const Text("Diagnosis"),
                            const Text("Skin psoriasis", style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            const Text("Treatment"),
                            const Text("Diet, Ozone therapy / 6 days,",
                                style: FontStyles.headline3s),
                            const Text("tivortin 100.0 / 6 days",
                                style: FontStyles.headline3s),
                            SizedBox(height: context.h * 0.03),
                            const Text("Analysis"),
                            const Text("blood, urine, ultrasound, hormones",
                                style: FontStyles.headline3sblue),
                            SizedBox(height: context.h * 0.03),
                            const Text("Drugs being taken"),
                            MoreListTileWidget(
                              title: "Salicylic",
                              mg: "150 mg",
                            ),
                            MoreListTileWidget(
                              title: "Calcipotriol",
                              mg: "500 mg",
                            ),
                            MoreListTileWidget(
                              title: "Tazorac",
                              mg: "100 mg",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
