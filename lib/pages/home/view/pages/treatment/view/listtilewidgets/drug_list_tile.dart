import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/pages/home/view/pages/treatment/view/listtilewidgets/details/taken_drug_details.dart';
import 'package:flutter/material.dart';

class DrugListTileWidget extends StatelessWidget {
  String? title;
  String? mg;
  String? fromdo;
  DrugListTileWidget({
    Key? key,
    this.title,
    this.mg,
    this.fromdo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> TakenDrugDetailsView(drugName: title.toString(), mg: mg.toString(), fromdo: fromdo.toString())));
          },
          title: Text(
            title.toString(),
            style: FontStyles.headline3s,
          ),
          subtitle: Text(
            mg.toString(),
            style: FontStyles.headline4s,
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.chevron_right_rounded),
              Text(
                fromdo.toString(),
                style: FontStyles.headline5s,
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
