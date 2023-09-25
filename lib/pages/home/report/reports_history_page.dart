import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:ql_absensi_express_mobile/componens/datepicker_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/sortby_custom_v1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/login_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/add/add_report_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/bloc/reports_history_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/report_detail_page.dart';
import 'package:ql_absensi_express_mobile/services/model/report_detail_page_model.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class ReportsHistoryPage extends StatelessWidget {
  const ReportsHistoryPage({super.key});

  // List<ReportModel> data = List.generate(
  //   10,
  //   (index) => ReportModel(
  //     id: index,
  //     date: DateTime.now().add(Duration(days: index)),
  //     status: "completed",
  //     reportDetails: [
  //       ReportDetailModel(
  //         time: DateTime.now(),
  //         pastTask: "Lorem Ipsum",
  //         nextTask: "Lorem Ipsum",
  //         keterangan: "Lorem Ipsum",
  //       ),
  //       ReportDetailModel(
  //         time: DateTime.now().add(const Duration(hours: 5)),
  //         pastTask: "Lorem Ipsum",
  //         nextTask: "Lorem Ipsum",
  //         keterangan: "Lorem Ipsum",
  //       ),
  //     ],
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<ReportsHistoryBloc, ReportsHistoryState>(
      listener: (context, state) async {
        if (state is ReportsHistoryLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ReportsHistoryFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ReportsHistoryFailedUserExpired) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else if (state is CheckReportHistorySuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          if (state.isMorningReport == null) {
            await showDialog(
              context: context,
              builder: (_) => const DialogCustom(
                state: DialogCustomItem.info,
                message: "Anda sudah mengisi laporan harian!",
              ),
            );
          } else {
            await Navigator.of(context).pushNamed(
              AddReportPage.routeName,
              arguments: state.isMorningReport as bool,
            );
            context.read<ReportsHistoryBloc>().add(
                  GetReportsHistory(
                    date: DateTime.now(),
                  ),
                );
          }
        } else if (state is ReportsHistoryFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Periode",
                  style: TextStyle(
                    color: MyColorsConst.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Tanggal",
                      style: TextStyle(
                        color: MyColorsConst.darkColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    DatePickerCustomV1(
                      onDateSelected: (date) =>
                          context.read<ReportsHistoryBloc>().add(
                                GetReportsHistory(
                                  date: date ?? DateTime.now(),
                                ),
                              ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Sort By ",
                      style: TextStyle(
                        color: MyColorsConst.darkColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SortByCustomV1(
                      onTap: (sortState) =>
                          context.read<ReportsHistoryBloc>().add(
                                SortByDateReportsHistory(
                                  sortState: sortState ?? false,
                                ),
                              ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  "Rekam Laporan",
                  style: TextStyle(
                    color: MyColorsConst.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: BlocBuilder<ReportsHistoryBloc, ReportsHistoryState>(
                    builder: (context, state) {
                      var reports = context.read<ReportsHistoryBloc>().reports;
                      return reports.isNotEmpty
                          ? ListView.builder(
                              itemCount: reports.length,
                              itemBuilder: (context, index) {
                                return buildCard(
                                  key: Key("$index"),
                                  date: reports.elementAt(index).date!,
                                  state: reports.elementAt(index).status!,
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      ReportDetailPage.routeName,
                                      arguments: ReportDetailPageModel(
                                        data: reports.elementAt(index),
                                      ),
                                    );
                                  },
                                );
                              },
                            )
                          : Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Lottie.asset(
                                    "assets/lotties/json/lottie_nodata.json",
                                    height: size.width * 1 / 2,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Tidak ada data yang ditampilkan!",
                                    style: TextStyle(
                                      color: MyColorsConst.darkColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () =>
                context.read<ReportsHistoryBloc>().add(ReportStateChecked()),
            backgroundColor: MyColorsConst.primaryLightColor,
            child: const Icon(
              Icons.add,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }

  Container buildCard({
    required Key key,
    required DateTime date,
    required String state,
    required VoidCallback onTap,
  }) {
    var stateDict = {
      "never_subbmited": {
        "pagi": false,
        "sore": false,
      },
      "partially_completed": {
        "pagi": true,
        "sore": false,
      },
      "day_off": {
        "pagi": false,
        "sore": false,
      },
      "completed": {
        "pagi": true,
        "sore": true,
      },
    };
    return Container(
      key: key,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: MyColorsConst.primaryLight3Color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTileTheme(
        dense: true,
        child: ListTile(
          onTap: onTap,
          tileColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          leading: const CircleAvatar(
            child: Icon(
              Icons.task_rounded,
              size: 20,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_right_rounded,
            color: MyColorsConst.primaryColor,
            size: 24,
          ),
          title: Text(
            DateFormat('EEEE, dd-MM-yyyy', 'id_ID').format(date),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: MyColorsConst.darkColor,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.wb_sunny_outlined,
                  color: (stateDict[state]!["pagi"] as bool)
                      ? MyColorsConst.primaryColor
                      : MyColorsConst.disableColor,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.dark_mode_outlined,
                  color: (stateDict[state]!["sore"] as bool)
                      ? MyColorsConst.primaryColor
                      : MyColorsConst.disableColor,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
