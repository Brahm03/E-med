import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: Icon(IconConst.person),
              trailing: IconConst.filter,
            ),
            Padding(
              padding: PMconst.medium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CupertinoSearchTextField(),
                  SizedBox(
                    height: context.h * 0.020,
                  ),
                  const Text(
                    'Recommended doctors for you',
                    style: FontStyles.headline5s,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
