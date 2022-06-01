import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/models/doctors_model.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../cubit/home_cubit.dart';

class DoctorInfoView extends StatelessWidget {
  DoctorsModel info;
  DoctorInfoView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: context.h,
            child: Column(
              children: [
                AppBarWidget(
                  leading: InkWell(
                    child: Row(children: [Icon(IconConst.arrow)]),
                    onTap: () {
                      context.read<HomeCubit>().changeState(HospitalState());
                    },
                  ),
                  center: Text(info.name, style: FontStyles.headline4sbold,),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(info.image),
                ),
                SizedBox(
                  height: context.w * 0.06,
                ),
                TextWidget.textwidget(info.name),
                SizedBox(
                  height: context.w * 0.02,
                ),
                TextWidget.textwidget(info.spes,
                    color: ColorConst.blackfortext,
                    fontWeight: FontWeight.normal,
                    size: 16),
                SizedBox(
                  height: context.w * 0.04,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: context.w * 0.04),
                  width: context.w * 0.893,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Place of work',
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.02),
                      Text(
                        info.info[0].workPlace,
                        style: FontStyles.headline3s,
                      ),
                      SizedBox(height: context.h * 0.06),
                      const Text(
                        'Work Locations',
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.02),
                      Text(
                        info.info[0].workLocation,
                        style: FontStyles.headline3s,
                      ),
                      SizedBox(height: context.h * 0.06),
                      const Text(
                        'Available time',
                        style: FontStyles.headline4s,
                      ),
                      SizedBox(height: context.h * 0.01),
                      Text(
                        info.info[0].workingDay,
                        style: FontStyles.headline2s,
                      ),
                      SizedBox(height: context.h * 0.01),
                      Text(
                        info.info[0].workingHour,
                        style: FontStyles.headline3s,
                      ),
                      SizedBox(height: context.h * 0.06),
                      const Text(
                        'Rating',
                        style: FontStyles.headline4s,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: context.w * 0.043),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Row(
                              children: [
                                Container(
                                  // color: Colors.red,
                                  width:
                                      context.w * info.info[0].rating * 0.08425,
                                  height: context.w * 0.13,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, ind) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                            right: context.w * 0.037),
                                        height: 20,
                                        width: 20,
                                        child: IconConst.star,
                                      );
                                    },
                                    itemCount: info.info[0].rating,
                                  ),
                                ),
                                SizedBox(
                                  // color: Colors.yellow,
                                  width: context.w *
                                      (5 - info.info[0].rating) *
                                      0.08425,
                                  height: context.w * 0.13,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, ind) {
                                      return Container(
                                          margin: EdgeInsets.only(
                                              right: context.w * 0.037),
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/stargrey.svg'));
                                    },
                                    itemCount: 5 - info.info[0].rating,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: ButtonWidgets(child: Text('booking', style: FontStyles.headline3s), onPressed: (){}));
  }

  ListTile listTile(String title, {Widget? subtitle}) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle,
    );
  }
}
