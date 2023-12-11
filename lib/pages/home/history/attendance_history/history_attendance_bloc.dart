import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/attendances_services.dart';
import 'package:sj_presensi_mobile/services/model/history_attendance_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'history_attendance_event.dart';
part 'history_attendance_state.dart';

// class HistoryAttendanceBloc extends Bloc<HistoryAttendanceEvent, HistoryAttendanceState> {
//   HistoryAttendanceBloc() : super(HitoryAttendanceInitial()) {
//     on<HistoryAttendanceEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }
class HistoryAttendanceBloc
    extends Bloc<HistoryAttendanceEvent, HistoryAttendanceState> {
  List<Datum> attendances = [];
  bool sortState = false;
  DateTime? selectedMonth;
  DateTime? selectedYear;
  HistoryAttendanceBloc() : super(HitoryAttendanceInitial()) {
    on<GetAttendancesHistory>((event, emit) async {
      emit(HistoryAttendanceLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await AttendancesServices.getAttendancesHistory(
            resToken.response["token"], event.date);

        if (res is ServicesSuccess) {
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            print(res.response);

            //Mengubah hasil response api ke model kelas
            HistoryAttendanceModel dataResponse =
                HistoryAttendanceModel.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            attendances = dataResponse.data ?? [];

            emit(
              HistorySuccessInBackground(dataHistory: attendances),
            );
          } else {
            emit(HistoryFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(HistoryFailedUserExpired(message: "Token expired"));
          } else {
            emit(HistoryAttendanceFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(HistoryFailedInBackground(message: 'Response invalid'));
      }
    });

    // on<SortByAttendancesHistory>((event, emit) async {
    //   emit(HistoryAttendanceLoading());
    //   try {
    //     if (selectedMonth != null) {
    //       var filteredAttendances = attendances.where((attendance) {
    //         var formattedDate =
    //             DateFormat('yyyy-MM-dd').parse(attendance.tanggal!);
    //         var date = DateTime.parse(formattedDate.toString());
    //         return date.month == selectedMonth?.month &&
    //             date.year == selectedMonth?.year;
    //       }).toList();

    //       emit(HistorySuccessInBackground(dataHistory: filteredAttendances));
    //     }
    //     else {
    //       emit(HistorySuccessInBackground(dataHistory: attendances));
    //     }
    //   } catch (e, st) {
    //     emit(HistoryAttendanceFailed(message: "Gagal Melakukan Sorting"));
    //     await MySentry.sendReport(e.toString(), st.toString());
    //   }
    // });
  }
}

// on<SortByMonthAttendancesHistory>((event, emit) async {
//   emit(HistoryAttendanceLoading());
//   try {
//     sortState = event.sortState;
//     attendances.sort(
//       (a, b) {
//         if (sortState) {
//           return a.tanggal!.compareTo(b.tanggal!);
//         }

//         return b.tanggal!.compareTo(a.tanggal!);
//       },
//     );
//     emit(
//       HistorySuccessInBackground(
//         dataHistory: attendances,
//       ),
//     );
//   } catch (e, st) {
//     emit(HistoryFailedInBackground(message: "Gagal Melakukan Sorting"));
//     await MySentry.sendReport(e.toString(), st.toString());
//   }
// });
