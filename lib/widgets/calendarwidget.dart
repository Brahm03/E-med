import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/pages/home/view/pages/calendar/meeting.dart';
import 'package:emed/pages/home/view/pages/calendar/meetingDateSource.dart';
import 'package:emed/service/getstorage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenDarWidgets extends StatelessWidget {
  final void Function(CalendarTapDetails)? onTap;
  const CalenDarWidgets({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      dataSource: MeetingDataSource(getDate(
        context: context,
        location: Storageservice.instance.storage.read('location'),
        day: Storageservice.instance.storage.read('day') as int,
        month: Storageservice.instance.storage.read('month'),
        houre: Storageservice.instance.storage.read('houre'),
      )),
      firstDayOfWeek: 6,
      onTap: onTap,
      todayHighlightColor: ColorConst.red,
      showCurrentTimeIndicator: true,
      onViewChanged: ((viewChangedDetails) {
        debugPrint(viewChangedDetails.toString());
      }),
      monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      view: CalendarView.month,
    );
  }
}
