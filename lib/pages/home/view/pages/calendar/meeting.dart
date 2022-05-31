import 'package:emed/core/constants/color/colorConst.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

List<Appointment> getDate(
    {required BuildContext context,
    required String location,
    int day = 23,
    int month = 5,
    int houre = 9}) {
  List<Appointment> meeting = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, month, day, houre, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meeting.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: location,
      color: ColorConst.red));

  return meeting;
}
