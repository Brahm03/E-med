import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/pages/home/view/pages/treatment/view/listtilewidgets/details/treatment_details.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  String? title;
  String? subtitle1;
  String? subtitle2;
  ListTileWidget({
    Key? key,
    this.title,
    this.subtitle1,
    this.subtitle2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (__)=> TreatmentDetailsView(name: subtitle1.toString(), clinic: subtitle2.toString())));
          },
          title: Text(
        title.toString(),
        style: FontStyles.headline3s,
          ),
          subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle1.toString(),
            style: FontStyles.headline4s,
          ),
          Text(
            subtitle2.toString(),
            style: FontStyles.headline6s,
          ),
        ],
          ),
          trailing: const Icon(Icons.chevron_right_rounded),
        ),
        const Divider(thickness: 1,)
      ],
    );
  }
}
