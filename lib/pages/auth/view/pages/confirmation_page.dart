import 'package:emed/core/constants/PM/PMconst.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/numberInputWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConFirmationView extends StatelessWidget {
  const ConFirmationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonWidgets(
          child: const Text('Confirm'),
          onPressed: () {
             context.read<AuthCubit>().changeState(AuthId());
      },),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              leading: BackButtonWidgets(
                ontap: () => context.read<AuthCubit>().changeState(AuthSignUP()),
              ),
            ),
            SizedBox(height: context.h * 0.060),
            Padding(
              padding: PMconst.medium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: context.w * 0.9,
                      child: const Text(
                        'We sent a confirmation code to your number. Please, enter the code',
                        style: FontStyles.headline5s,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: context.h * 0.070),
                  const Text(
                    "Confirmation code",
                    style: FontStyles.headline6s,
                  ),
                  SizedBox(height: context.h * 0.040),
                  SizedBox(
                      height: context.h * 0.070,
                      child: Row(
                        children: const [
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget(),
                          NumberInputWidget()
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
