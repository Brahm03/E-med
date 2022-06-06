import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HospitalSearchView extends StatelessWidget {
  HospitalSearchView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var temp = context.watch<HomeCubit>().temp;
    var hinfo = context.watch<HomeCubit>().hinfo;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: context.h,
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
              Padding(padding: PMconst.medium, child: CupertinoSearchTextField(onChanged: (text){
                context.read<HomeCubit>().searching(text);
              }),),
              Padding(
                padding: EdgeInsets.only(
                    left: context.w * 0.05,
                    top: context.w * 0.04,
                    bottom: context.w * 0.04),
                child: const Text(
                  "Recommended hospitals for you",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              context.watch<HomeCubit>().temp.isEmpty
                  ? Expanded(
                      child: ListView.builder(
                      itemBuilder: (ctx, ind) {
                        return Column(
                          children: [
                            InkWell(
                              child: SizedBox(
                                  width: context.w * 0.893,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15)),
                                        child: FadeInImage(
                                          fit: BoxFit.cover,
                                          placeholder: const AssetImage(
                                              'assets/images/loading.gif'),
                                          image: AssetImage(hinfo[ind].image),
                                        ),
                                      ),
                                      Positioned(
                                        left: 12,
                                        child: SizedBox(
                                          width: context.w * 0.3,
                                          child: Chip(
                                              label: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/calendar.svg'),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              //Here datas should come from database
                                              const Text("Mon - Sat"),
                                            ],
                                          )),
                                        ),
                                      ),
                                      Positioned(
                                        left: 139,
                                        child: SizedBox(
                                          width: context.w * 0.35,
                                          child: Chip(
                                            label: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/clock.svg'),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text("9:00 - 18:00")
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              onTap: () {
                                context
                                    .read<HomeCubit>()
                                    .changeState(HospitalInfoState(hinfo[ind]));
                              },
                            ),
                            TextWidget.textwidget(hinfo[ind].name),
                            Text(context.watch<HomeCubit>().hinfo[ind].location)
                          ],
                        );
                      },
                      itemCount: hinfo.length,
                    ))
                  : Expanded(
                      child: ListView.builder(
                      itemBuilder: (ctx, ind) {
                        return Column(
                          children: [
                            InkWell(
                              child: SizedBox(
                                  width: context.w * 0.893,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15)),
                                        child: FadeInImage(
                                          fit: BoxFit.cover,
                                          placeholder: const AssetImage(
                                              'assets/gifs/loading.gif'),
                                          image: AssetImage(
                                              temp.toList()[ind].image),
                                        ),
                                      ),
                                      Positioned(
                                        left: 12,
                                        child: SizedBox(
                                          width: context.w * 0.28,
                                          child: Chip(
                                              label: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/calendar.svg'),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              //Here datas should come from database
                                              const Text("Mon - Sat"),
                                            ],
                                          )),
                                        ),
                                      ),
                                      Positioned(
                                        left: 139,
                                        child: SizedBox(
                                          width: context.w * 0.32,
                                          child: Chip(
                                            label: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/clock.svg'),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text("9:00 - 18:00")
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              onTap: () {
                                context
                                    .read<HomeCubit>()
                                    .changeState(HospitalInfoState(hinfo[ind]));
                              },
                            ),
                            TextWidget.textwidget(temp.toList()[ind].name),
                            Text(temp.toList()[ind].location)
                          ],
                        );
                      },
                      itemCount: temp.length,
                    ))
            ],
          ),
        ),
      ),
    );
  }


 
}
