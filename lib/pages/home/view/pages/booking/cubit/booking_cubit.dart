import 'package:bloc/bloc.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
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

      debugPrint(regions.toString());
    }
    return [];
  }
}
