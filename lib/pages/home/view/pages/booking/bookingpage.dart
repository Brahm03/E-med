import 'package:emed/core/components/boxdecoration/boxdecations.dart';
import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/radius/radiusConst.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/service/getstorage.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingPage extends StatelessWidget {
  final BuildContext contextbook;
  const BookingPage({required this.contextbook,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(), child: scafold(context));
  }

  Scaffold scafold(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(
        child: const Text('Confirm'),
        onPressed: () {
          contextbook.read<HomeCubit>().changeState(Homemain());
        },
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
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
                    leading: InkWell(
                        onTap: () => NavigationService.instance.pop,
                        child: Text(
                          'cancel',
                          style: FontStyles.headline3sblue,
                        ))),
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
                            child: DropdownWidgets(
                                text: 'Choose hospital region...',
                                items: context.watch<HomeCubit>().regions)),
                        const Text('District',
                            style: FontStyles.headline4sbold),
                        SizedBox(
                            height: context.h * 0.1,
                            child: DropdownWidgets(
                                text: 'Choose hospital district...',
                                items: context.read<HomeCubit>().district)),
                        const Text('Hospital',
                            style: FontStyles.headline4sbold),
                        SizedBox(
                            height: context.h * 0.1,
                            child: DropdownWidgets(
                                text: 'Choose doctor’s workplace...',
                                items: [])),
                        const Text('Doctor’s position',
                            style: FontStyles.headline4sbold),
                        SizedBox(
                            height: context.h * 0.1,
                            child: DropdownWidgets(
                                text: 'Choose doctor’s position...',
                                items: [])),
                        const Text('The doctor',
                            style: FontStyles.headline4sbold),
                        SizedBox(
                            height: context.h * 0.1,
                            child: DropdownWidgets(
                                text: 'Choose the doctor you want...',
                                items: [])),
                        const Text('Service type',
                            style: FontStyles.headline4sbold),
                        SizedBox(
                            height: context.h * 0.1,
                            child: DropdownWidgets(
                                text: 'Choose doctor’s service type...',
                                items: [])),
                        const Text('Enter the time',
                            style: FontStyles.headline4sbold),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    margin: PMconst.medium,
                                    decoration: BoxDecoration(
                                        color: ColorConst.white,
                                        borderRadius: BorderRadius.circular(
                                            RadiuConst.medium)),
                                    child: CupertinoDatePicker(
                                      onDateTimeChanged: (v) async {
                                        await Storageservice.instance.storage
                                            .write('day', v.day);
                                        await Storageservice.instance.storage
                                            .write('houre', v.hour);
                                        await Storageservice.instance.storage
                                            .write('month', v.month);

                                        debugPrint(Storageservice
                                            .instance.storage
                                            .read('month')
                                            .toString());
                                      },
                                      mode: CupertinoDatePickerMode.dateAndTime,
                                    ),
                                  );
                                });
                          },
                          child: SizedBox(
                              height: context.h * 0.1,
                              child: DropdownWidgets(
                                  text: 'DD.MM.YYYY / HH:MM - HH:MM',
                                  items: [])),
                        ),
                        SizedBox(height: context.h * 0.1),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}