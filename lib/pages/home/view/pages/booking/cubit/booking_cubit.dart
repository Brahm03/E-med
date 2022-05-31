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

  addInfo(Map<dynamic, dynamic> info) {
    BoxService.instance.addInfoToBox(info);
    debugPrint(info.toString());
  }

  Map<dynamic, dynamic> appointments = {};

  collectInfo(value, List items) {
    debugPrint(appointments.toString());
    appointments.addAll({
      "name": items[0] == 'Mavlonov Boburjon' ? value : '',
      "region": items[0] == 'Tashkent' ? value : "",
      "district": items[0] == 'Shaykhontokhur District' ? value : "",
      "hospital": items[0] == 'Pediatric hospital N4' ? value : "",
      "expert": items[0] == 'Pediatric Pulmonolog' ? value : "",
    });
    debugPrint(appointments.toString());
  }
}
