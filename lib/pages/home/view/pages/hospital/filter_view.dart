import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterView extends StatelessWidget {
  // final List dataInfo;
  const FilterView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              AppBarWidget(
                leading: InkWell(
                    onTap: () => context.read<HomeCubit>().changeState(HospitalState()),
                    child: const Text(
                      'canel',
                      style: FontStyles.headline3sblue,
                    )),
                center: const Text(
                  'Filter',
                  style: FontStyles.headline3s,
                ),
              ),
               ExpansionTile(
                title: const Text(
                  'Positions',
                  style: FontStyles.headline3s,
                ),
                children: [
                  SizedBox(
                    height: context.h * 0.5,
                    child: ListView.builder(
                        itemCount: HomeCubit.datainfo[0].length,
                        itemBuilder: (__,_) {
                          return ListTile(
                            leading: Checkbox(
                              onChanged: (v) {},
                              value: true,
                            ),
                            title: Text(HomeCubit.datainfo[0][_]['expert'],),
                          );
                        },),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text(
                  'Regions',
                  style: FontStyles.headline3s,
                ),
                children: [
                  SizedBox(
                    height: context.h * 0.5,
                    child: ListView.builder(
                        itemCount: HomeCubit.datainfo[0].length,
                        itemBuilder: (__,_) {
                          return ListTile(
                            leading: Checkbox(
                              onChanged: (v) {},
                              value: true,
                            ),
                            title: Text(HomeCubit.datainfo[0][_]['region'],),
                          );
                        },),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),);
  }
}
