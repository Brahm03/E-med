import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/view/pages/treatment/view/listtilewidgets/drug_list_tile.dart';
import 'package:flutter/material.dart';

class DrugHistory extends StatelessWidget {
  const DrugHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Drug history
        child: SafeArea(
          child: Column(
              children: [
          Expanded(
              child: Column(
                children: [
                  SizedBox(height: context.h * 0.01 ),
                  DrugListTileWidget(title: "Dilatriban", mg: "250 mg", fromdo: "30.11.2021 - 05.12.2021",),
                  DrugListTileWidget(title: "Tropbove", mg: "100 mg", fromdo: "11.05.2021 - 16.05.2021",),
                  DrugListTileWidget(title: "Tropiprazole", mg: "500 mg", fromdo: "05.03.2021 - 12.03.2021",),
                  DrugListTileWidget(title: "Viriboltocin", mg: "100 mg", fromdo: "18.12.2020 - 02.01.2021",),
                  DrugListTileWidget(title: "Troppamide", mg: "400 mg", fromdo: "18.02.2020 - 22.11.2020",),
                ],
              ))
              ],
            ),
        ));
  }
}