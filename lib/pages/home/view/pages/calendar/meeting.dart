import 'package:emed/core/constants/color/colorConst.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

List<Appointment> getDate() {
  List<Appointment> meeting = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, 1, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meeting.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Doctor J',
      color: ColorConst.red));

  return meeting;
}
