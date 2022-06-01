import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/view/pages/treatment/view/listtilewidgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class MedicalHistory extends StatelessWidget {
  const MedicalHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Medical history
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                SizedBox(height: context.h * 0.01),
                ListTileWidget(
                  title: "Anthrax [Bacillus anthracis Infection]",
                  subtitle1: "Esther Howard",
                  subtitle2: "Clinic Medion",
                ),
                ListTileWidget(
                  title: "Adverse Childhood Experiences (ACE)",
                  subtitle1: "Jenny Wilson",
                  subtitle2: "Shox Nur Shifo Clinic",
                ),
                ListTileWidget(
                  title: "Aspergillus Infection",
                  subtitle1: "Darrell Steward",
                  subtitle2: "Tashkent International Clinic",
                ),
                ListTileWidget(
                  title: "Arthritis",
                  subtitle1: "Ralph Edwards",
                  subtitle2: "Family Clinic No42",
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
