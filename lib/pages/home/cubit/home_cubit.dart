import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/service/Boxservice.dart';
import 'package:emed/service/getstorage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/services.dart' as bundle;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(Homemain());

  static List datainfo = [];

  Future<List> getData() async {
    final data = await bundle.rootBundle.loadString('lib/mock/data.json');
    final list = jsonDecode(data) as List;
    debugPrint(list.toString());
    datainfo.add(list);
    DoctorState(list);
    return list;
  }

  CalendarView calendarView = CalendarView.month;

  List<String> time = ["9 : 00", "12 : 00", "4 : 00", "8 : 00"];

  String? selectedValue;


  int currentpage = 0;

  changeState(HomeState state) {
    emit(state);
  }

  changePage(int index) {
    if (index == 0) {
      currentpage = index;
      emit(Homemain());
    } else if (index == 1) {
      currentpage = index;
      emit(SyringeState());
    } else if (index == 2) {
      currentpage = index;
      emit(DoctorState(datainfo));
    } else if (index == 3) {
      currentpage = index;
      emit(HospitalState());
    }
  }

  

  pickMeeting(String value) {}
}
