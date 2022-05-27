import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(
        child: const Text('Confirm'),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
                trailing: SizedBox(
                  width: context.w * 0.050,
                ),
                center: const Text(
                  'Booking an appointment',
                  style: FontStyles.headline3s,
                ),
                leading: BackButtonWidgets(
                  ontap: () => NavigationService.instance.pop,
                  text: 'Cancel',
                )),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: PMconst.medium,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    const Text('Region', style: FontStyles.headline4sbold),
                    SizedBox(
                        height: context.h * 0.1,
                        child: DropdownWidgets(items: [])),
                    SizedBox(height: context.h * 0.1),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
