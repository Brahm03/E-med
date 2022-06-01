import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/constants/radius/radiusConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';
import '../core/constants/color/colorConst.dart';

class DoctorsWidget extends StatelessWidget {
  final String name;
  final String pic;
  final String expert;
  final String hospital;
  const DoctorsWidget({this.hospital = '',this.expert = '',required this.pic, required this.name, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: context.h * 0.020),
        child: Column(children: [
          ListTile(
            subtitle: Text('$expert  \n$hospital', style: FontStyles.headline4s,),
            trailing: Icon(IconConst.arrow),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(RadiuConst.extraLarge),
              child: FadeInImage(
                placeholder: const AssetImage('assets/images/loading.gif'),
                image: AssetImage(pic),
                height: context.h * 0.1,
                width: context.w * 0.1,
              ),
            ),
            title: Text(
              name,
              style: FontStyles.headline3s,
            ),
          ),
          Divider(
            indent: context.w * 0.190,
            color: ColorConst.black,
          )
        ]));
  }
}
