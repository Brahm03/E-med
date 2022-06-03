
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/models/hospital_model.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HospitalInfoView extends StatelessWidget {
  HospitalModel info;
  HospitalInfoView({Key? key, required this.info}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: context.h,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                trailing: InkWell(child: IconConst.filter, onTap: (){
                  context.read<HomeCubit>().changeState(FilterStateHospital());
                },) ,
                leading: InkWell(
                  child: const Icon(Icons.chevron_left) ,
                  onTap: () {
                    context.read<HomeCubit>().changeState(HospitalState());
                  },
                ),
                center: TextWidget.textwidget("Hospital"),
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(info.image),
              ),
              TextWidget.textwidget(info.name),
              SizedBox(
                width: context.w * 0.893,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text("Phone number"),
                      subtitle: Text(info.phoneNumber),
                      trailing: Image.asset("assets/icons/phone.png"),
                    ),
                    listTile("Working time",
                        Text("${info.workingDay} \n${info.workingHour}")),
                    listTile(
                      "Location Link",
                      Text(
                        info.locationLink,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                    listTile(
                      "Website",
                      Text(
                        info.locationLink,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextWidget.textwidget("Doctors at Hospital"),
                    SizedBox(
                      height: context.h * 0.7,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, ind) {
                          return ListTile(
                            trailing: InkWell(
                              child: const Icon(Icons.chevron_right),
                              onTap: () {
                                context.read<HomeCubit>().changeToDinfo(info.dInfo[ind]);
                              },
                            ),
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage(info.dInfo[ind].image),
                            ),
                            title: Text(info.dInfo[ind].name),
                            subtitle: Text(info.dInfo[ind].spes),
                          );
                        },
                        itemCount: info.dInfo.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  ListTile listTile(String title, Text subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle,
    );
  }
}
