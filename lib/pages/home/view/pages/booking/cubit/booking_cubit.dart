import 'package:bloc/bloc.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/service/Boxservice.dart';
import 'package:flutter/material.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingState()) {
    infoReturner();
  }

  List regions = [];
  List district = [];
  List hospital = [];
  List doctorposition = [];
  List doctorname = [];

  List infoReturner() {
    for (var i = 0; i < HomeCubit.datainfo[0].length; i++) {
      debugPrint('Booking >>>> ${HomeCubit.datainfo.toString()}');
      regions.add(HomeCubit.datainfo[0][i]['region']);
      district.add(HomeCubit.datainfo[0][i]['location']);
      hospital.add(HomeCubit.datainfo[0][i]['place work']);
      doctorposition.add(HomeCubit.datainfo[0][i]['expert']);
      doctorname.add(HomeCubit.datainfo[0][i]['name']);
    }
    return [];
  }

  addInfo(Map info) {
    if (!info.containsValue('')) {
      BoxService.instance.addInfoToBox(info);
    }
  }

  Map appointments = {
    "region": "",
    "district": "",
    "hospital": "",
    "doctor's position": "",
    "doctor": ""
  };

  collectInfo(value, List items) {
    for (var i = 0; i < HomeCubit.datainfo[0].length; i++) {
      if (value == HomeCubit.datainfo[0][i]['region']) {
        appointments.update('region', (e) => value);
      } else if (value == HomeCubit.datainfo[0][i]['location']) {
        appointments.update('district', (e) => value);
      } else if (value == HomeCubit.datainfo[0][i]['place work']) {
        appointments.update('hospital', (e) => value);
      } else if (value == HomeCubit.datainfo[0][i]['expert']) {
        appointments.update('doctor\'s position', (e) => value);
      } else if (value == HomeCubit.datainfo[0][i]['name']) {
        appointments.update('doctor', (e) => value);
      }
    }
    debugPrint(appointments.toString());
  }
}
