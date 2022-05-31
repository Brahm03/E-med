import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  final Map info;
  const DoctorInfo({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          AppBarWidget(leading: BackButtonWidgets(ontap: () => NavigationService.instance.pop), center: Text(info['name'], style: FontStyles.headline3s,),)
        ],
          ),
      ),
    );
  }
}
