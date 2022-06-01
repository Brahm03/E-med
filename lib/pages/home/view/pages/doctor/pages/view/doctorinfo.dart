import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  final Map info;
  const DoctorInfo({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(
          child: const Text(
            'Book an appointment',
            style: FontStyles.headline3s,
          ),
          onPressed: () => NavigationService.instance.pushNamed('/doctorbook', args: info)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                AppBarWidget(
                  leading: BackButtonWidgets(
                      ontap: () => NavigationService.instance.pop),
                  center: Text(
                    info['name'],
                    style: FontStyles.headline3s,
                  ),
                ),
                Padding(
                  padding: PMconst.medium,
                  child: Column(
                    children: [
                      ClipRRect(
                        child: FadeInImage(
                            fit: BoxFit.contain,
                            width: context.w * 0.4,
                            height: context.h * 0.2,
                            placeholder:
                                const AssetImage('assets/images/loading.gif'),
                            image: AssetImage(info['pic'])),
                      ),
                      SizedBox(height: context.h * 0.02),
                      Text(
                        info['name'],
                        style: FontStyles.headline2s,
                      ),
                      SizedBox(height: context.h * 0.01),
                      Text(
                        info['expert'],
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.1),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Place of work',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(height: context.h * 0.02),
                            Text(
                              info['place work'],
                              style: FontStyles.headline3s,
                            ),
                            SizedBox(height: context.h * 0.06),
                            const Text(
                              'Work Locations',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(height: context.h * 0.02),
                            Text(
                              info['location'],
                              style: FontStyles.headline3s,
                            ),
                            SizedBox(height: context.h * 0.06),
                            const Text(
                              'Available time',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(height: context.h * 0.01),
                            Text(
                              info['days'],
                              style: FontStyles.headline2s,
                            ),
                            SizedBox(height: context.h * 0.01),
                            Text(
                              '${info['time'][0].toString()} : 00 - ${info['time'][1].toString()} : 00',
                              style: FontStyles.headline3s,
                            ),
                            SizedBox(height: context.h * 0.06),
                            const Text(
                              'Rating',
                              style: FontStyles.headline4s,
                            ),
                            SizedBox(
                              height: context.h * 0.1,
                                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: info['rating'],itemBuilder: (_, __) {
                                return Icon(IconConst.stari, color: ColorConst.kPrimaryColor,);
                              }),
                            ),
                            SizedBox(height: context.h * 0.1,)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
