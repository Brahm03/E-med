import 'package:emed/core/constants/PM/PMconst.dart';
import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashSecond extends StatelessWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: context.h * 0.2,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonWidgets(
                  child: const Text('get started'),
                  onPressed: () {
                    context.read<AuthCubit>().changeState(AuthSignUP());
                  }),
              ButtonWidgets(
                onPressed: () {
                  context.read<AuthCubit>().changeState(AuthSignIN());
                },
                backGroundColor: ColorConst.white,
                bordercolor: ColorConst.kPrimaryColor,
                child: const Text(
                  'Log in',
                  style: FontStyles.headline3sblue,
                ),
              )
            ]),
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: PMconst.large,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconConst.bluelogo,
                SizedBox(height: context.h * 0.1),
                SizedBox(
                  height: context.h * 0.3,
                  width: context.w * 0.9,
                  child: Column(
                    children: [
                      const Text(
                        'Your medical data\nis always with you',
                        style: FontStyles.headline1s,
                      ),
                      SizedBox(height: context.h * 0.070),
                      const Text(
                        "Nunc orci sed sed posuere volutpat varius\negestas sit. Amet, suscipit eget dis fusce\nquam in aliquet pulvinar.",
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
      ),
    );
  }
}
