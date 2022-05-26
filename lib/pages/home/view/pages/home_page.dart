import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              trailing: IconConst.bell,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(IconConst.person),
              ),
              center: SizedBox(
                  height: context.h * 0.050,
                  width: context.w * 0.3,
                  child: IconConst.bluelogo),
            ),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: PMconst.small,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Today’s medications',
                        style: FontStyles.headline5s,
                      ),
                      SizedBox(height: context.h * 0.1,),
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
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: ColorConst.kPrimaryColor,
                ))
          ],
        ),
      ),
    );
  }
}
