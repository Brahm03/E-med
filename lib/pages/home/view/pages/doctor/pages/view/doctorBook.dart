import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/widgets/alertDialog.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/doctorsWidget.dart';
import 'package:emed/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class DoctorBookPage extends StatelessWidget {
  final Map info;
  const DoctorBookPage({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(
          child: const Text('Confirm', style: FontStyles.headline3s),
          onPressed: () => AlertWidgets.showalertwidgets(
              name: info['name'],
              time: info['time'],
              context: context,
              ontap: () {
                NavigationService.instance.pop;
                NavigationService.instance.pop;
                NavigationService.instance.pop;
              })),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
                center: const Text(
                  'Book an appointment',
                  style: FontStyles.headline3s,
                ),
                leading: BackButtonWidgets(
                  ontap: () => NavigationService.instance.pop,
                )),
            Padding(
              padding: PMconst.medium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Appointment to:',
                    style: FontStyles.headline4s,
                  ),
                  SizedBox(height: context.h * 0.02),
                  DoctorsWidget(
                    pic: info['pic'],
                    name: '${info['name']} at',
                    expert: info['expert'],
                    hospital: info['place work'],
                  ),
                  SizedBox(
                    height: context.h * 0.07,
                  ),
                  const Text(
                    'Service type',
                    style: FontStyles.headline4s,
                  ),
                  SizedBox(
                      height: context.h * 0.1,
                      child: DropdownWidgets(
                        items: const [],
                        text: 'Choose doctor\'s service type...',
                      )),
                  SizedBox(
                    height: context.h * 0.04,
                  ),
                  const Text(
                    'Enter time',
                    style: FontStyles.headline4s,
                  ),
                  SizedBox(
                      height: context.h * 0.1,
                      child: DropdownWidgets(
                        items: const [],
                        text: 'DD.MM.YYYY / HH:MM - HH:MM',
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
