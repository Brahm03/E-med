import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/pages/home/view/pages/doctor/cubit/doctor_cubit.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/doctorWidgetSmall.dart';
import 'package:emed/widgets/doctorsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorPage extends StatelessWidget {
  final List datainfo;
  const DoctorPage({required this.datainfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit(),
      child: scafold(context),
    );
  }

  Scaffold scafold(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DoctorCubit, DoctorState>(builder: (context, state) {
        return SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  AppBarWidget(
                    leading: Icon(IconConst.person),
                    trailing: InkWell(
                        onTap: () {
                          NavigationService.instance.pushNamed('/filter');
                        },
                        child: IconConst.filter),
                  ),
                  Padding(
                    padding: PMconst.small,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CupertinoSearchTextField(onChanged: (text) {
                          context.read<DoctorCubit>().searchDoctor(text);
                        }),
                        SizedBox(
                          height: context.h * 0.020,
                          child: const Divider(
                            color: ColorConst.black,
                          ),
                        ),
                        context.watch<DoctorCubit>().temp.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Recommended doctors for you',
                                    style: FontStyles.headline5s,
                                  ),
                                  SizedBox(height: context.h * 0.020),
                                  SizedBox(
                                    height: context.h * 0.5,
                                    child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: datainfo[0].length - 1,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () => NavigationService
                                                .instance
                                                .pushNamed('/doctorinfo',
                                                    args: datainfo[0][index]),
                                            child: DoctorWidgetSmall(
                                                pic: datainfo[0][index]['pic'],
                                                name: datainfo[0][index]['name']
                                                    .toString()),
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    height: context.h * 0.020,
                                  ),
                                  const Text(
                                    'List of doctors',
                                    style: FontStyles.headline5s,
                                  ),
                                  SizedBox(
                                    height: context.h * 0.04,
                                  ),
                                  SizedBox(
                                    height: context.h * 0.560,
                                    child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: datainfo[0].length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              NavigationService.instance
                                                  .pushNamed('/doctorinfo',
                                                      args: datainfo[0][index]);
                                            },
                                            child: DoctorWidgetSmall(
                                                pic: datainfo[0][index]['pic'],
                                                name: datainfo[0][index]['name']
                                                    .toString()),
                                          );
                                        }),
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: context.h * 0.9,
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: context
                                        .watch<DoctorCubit>()
                                        .temp
                                        .length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          NavigationService.instance.pushNamed(
                                              '/doctorinfo',
                                              args: context
                                                .watch<DoctorCubit>()
                                                .temp
                                                .toList()[index]);
                                        },
                                        child: DoctorWidgetSmall(
                                            pic: context
                                                .watch<DoctorCubit>()
                                                .temp
                                                .toList()[index]['pic'],
                                            name: context
                                                .watch<DoctorCubit>()
                                                .temp
                                                .toList()[index]['name']
                                                .toString()),
                                      );
                                    }),
                              ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
