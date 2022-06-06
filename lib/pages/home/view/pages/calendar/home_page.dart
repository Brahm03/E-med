import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/service/Boxservice.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/calendarwidget.dart';
import 'package:emed/widgets/doctorWidgetSmall.dart';
import 'package:emed/widgets/doctorsWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  trailing: IconConst.bell,
                  leading: Icon(IconConst.person),
                  center: SizedBox(
                      height: context.h * 0.025,
                      width: context.w * 0.3,
                      child: IconConst.bluelogo),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: PMconst.small,
                          child: SizedBox(
                            height: context.h * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Today’s medications',
                                  style: FontStyles.headline5s,
                                ),
                                SizedBox(
                                  height: context.h * 0.1,
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      const Text(
                                        'No medications',
                                        style: FontStyles.headline2s,
                                      ),
                                      SizedBox(height: context.h * 0.040),
                                      const Text(
                                        'They will appear here only when doctor\nadds them to your account.',
                                        style: FontStyles.headline4s,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: PMconst.medium,
                          child: SizedBox(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Monthly appointments',
                                    style: FontStyles.headline5s,
                                  ),
                                  CalenDarWidgets(
                                    onTap: (day) {
                                      NavigationService.instance
                                          .pushNamed('/booking');
                                    },
                                  ),
                                  SizedBox(height: context.h * 0.010),
                                  const Text(
                                    'Today\'s appointments',
                                    style: FontStyles.headline5s,
                                  ),
                                  SizedBox(height: context.h * 0.03),
                                  SizedBox(
                                    height: context.h * 0.4,
                                    child: BoxService.instance.inputInfoBox.isNotEmpty ? ListView.builder(
                                        itemCount: BoxService
                                            .instance.inputInfoBox.length,
                                        itemBuilder: (_, __) {
                                          return DateTime(2022, BoxService.instance.inputInfoBox.getAt(__)!['date'][0], BoxService.instance.inputInfoBox.getAt(__)!['date'][1]) == DateTime.now() ?DoctorsWidget(
                                            hospital: BoxService.instance.inputInfoBox.getAt(__)!['hospital'],
                                            expert: BoxService.instance.inputInfoBox.getAt(__)!['doctor\'s position'],
                                              pic: BoxService
                                                  .instance.inputInfoBox
                                                  .getAt(__)!['pic'].toString(),
                                              name: BoxService
                                                  .instance.inputInfoBox
                                                  .getAt(__)!['doctor'].toString()): const SizedBox() ;
                                        }) :  Center(
                                  child: Column(
                                    children: [
                                      const Text(
                                        'No medications',
                                        style: FontStyles.headline2s,
                                      ),
                                      SizedBox(height: context.h * 0.040),
                                      const Text(
                                        'They will appear here only when doctor\nadds them to your account.',
                                        style: FontStyles.headline4s,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                  ),
                                  SizedBox(height: context.h * 0.040),
                                  Center(
                                    child: ButtonWidgets(
                                        child: const Text('Add new appointment',
                                            style: FontStyles.headline3s),
                                        onPressed: () {}),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
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
