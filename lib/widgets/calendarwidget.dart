import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/pages/home/view/pages/calendar/meeting.dart';
import 'package:emed/pages/home/view/pages/calendar/meetingDateSource.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenDarWidgets extends StatelessWidget {
  final void Function(CalendarTapDetails)? onTap;
  const CalenDarWidgets({required this.onTap,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      dataSource: MeetingDataSource(getDate()),
      firstDayOfWeek: 6,
      onTap: onTap,
      initialDisplayDate: DateTime(2022, 5, 23),
      todayHighlightColor: ColorConst.red,
      initialSelectedDate: DateTime(2022, 05, 3),
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
