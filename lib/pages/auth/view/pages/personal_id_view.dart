import 'package:emed/core/components/boxdecoration/boxdecations.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalIdView extends StatelessWidget {
  const PersonalIdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ButtonWidgets(
          onPressed: () {
              debugPrint('tapped');
              // go to next pages
              NavigationService.instance.pushNamed('/home');
            },
            child: const Text('Go to your account')),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: AppBarWidget(
                    leading: BackButtonWidgets(
                        ontap: () =>
                            context.read<AuthCubit>().changeState(AuthConfirmation())),
                    center: const Text("Your Personal ID", style: FontStyles.headline3s,)),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.h * 0.1,
                      ),
                      IconConst.id,
                      SizedBox(height: context.h * 0.04),
                      const Text(
                        "Doctors use your ID to have an access to your medical informations. We have sent this ID and your password to your number so you don’t forget them",
                        style: FontStyles.headline4s,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: context.h * 0.04),
                      SizedBox(
                          width: context.w,
                          child: const Text("Your ID",
                              style: FontStyles.headline3s)),
                      SizedBox(height: context.h * 0.01),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: context.h * 0.07,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                alignment: Alignment.centerLeft,
                                decoration: BoxOnlyDecoration.decor(
                                    ColorConst.grey,
                                    topLeft: 10.0,
                                    bottomLeft: 10.0),
                                child: const Text("12345678",
                                    style: FontStyles.headline4s)),
                          ),
                          InkWell(
                            child: Container(
                                height: context.h * 0.07,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                alignment: Alignment.center,
                                decoration: BoxOnlyDecoration.decor(
                                    Colors.white,
                                    topRight: 10.0,
                                    bottomRight: 10.0),
                                child: const Text("Copy",
                                    style: FontStyles.headline3s)),
                            onTap: () {
                              // ID code will be copied
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
