import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/componens/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  DateTime? selectedMonth;
  DateTime? selectedYear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // MonthPicker(
              // onTap: (DateTime? months) {
              //   if (months != null) {
              //     setState(() {
              //       selectedMonth = months;
              //     });

              //     // Creating a new DateTime with the selected month
              //     DateTime newDate = DateTime(selectedYear!.year, months.month);

              //     // Triggering an event in the HistoryAttendanceBloc with the new DateTime
              //     context.read<HistoryAttendanceBloc>().add(
              //           GetAttendancesHistory(
              //             date: newDate,
              //           ),
              //         );
              //   }
              // },
            //   selectedYear: selectedYear,
            // ),
            // YearPickerCustom(
            //   onTap: (DateTime? years) {
            //     if (years != null) {
            //       setState(() {
            //         selectedYear = years;
            //       });

            //       DateTime newDate = DateTime(years.year, selectedMonth!.month);

            //       context.read<HistoryAttendanceBloc>().add(
            //             GetAttendancesHistory(
            //               date: newDate,
            //             ),
            //           );
            //     }
            //   },
            //   selectedMonth: selectedMonth,
            // ),
          ],
        ),
      ),
    );
  }
}
