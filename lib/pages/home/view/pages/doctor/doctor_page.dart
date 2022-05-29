import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/constants/radius/radiusConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/service/MockService.dart';
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
              padding: PMconst.small,
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CupertinoSearchTextField(),
                      SizedBox(
                        height: context.h * 0.020,
                        child: const Divider(
                          color: ColorConst.black,
                        ),
                      ),
                      const Text(
                        'Recommended doctors for you',
                        style: FontStyles.headline5s,
                      ),
                      SizedBox(height: context.h * 0.020),
                      FutureBuilder(
                        future: MockService.instance.getData(),
                        builder: (context, AsyncSnapshot<List> snapshot) {
                          return SizedBox(
                            height: context.h * 0.5,
                            child: ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: context.h * 0.020),
                                      child: ListTile(
                                        trailing: Icon(IconConst.arrow),
                                        leading: const CircleAvatar(
                                            radius: RadiuConst.large,
                                            backgroundColor:
                                                ColorConst.kPrimaryColor),
                                        title:
                                            SizedBox(
                                              height:  context.h * 0.050,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(snapshot.data![index]['name']),
                                                ],
                                              ),
                                            ),
                                      ));
                                }),
                          );
                        },
                      ),
                      SizedBox(
                        height: context.h * 0.020,
                      ),
                      const Text(
                        'List of doctors',
                        style: FontStyles.headline5s,
                      ),
                      Container(
                        color: ColorConst.kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
