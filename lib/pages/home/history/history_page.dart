import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:sj_presensi_mobile/componens/datepicker_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/sortby_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/history/bloc/history_bloc.dart';
import 'package:sj_presensi_mobile/services/model/attendances_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HistoryPage extends StatelessWidget {
  // static const routeName = 'HistoryPage';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<HistoryBloc, HistoryState>(
      listener: (context, state) async {
        if (state is HistoryLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is HistoryFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is HistoryFailedUserExpired) {
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
        } else if (state is HistoryFailedInBackground) {
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
                      onDateSelected: (date) => context.read<HistoryBloc>().add(
                            GetAttendancesHistory(
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
                      onTap: (sortState) => context.read<HistoryBloc>().add(
                            SortByDateAttendancesHistory(
                              sortState: sortState ?? false,
                            ),
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  "Rekam Presensi",
                  style: TextStyle(
                    color: MyColorsConst.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: BlocBuilder<HistoryBloc, HistoryState>(
                    builder: (context, state) {
                      var attendances = context.read<HistoryBloc>().attendances;
                      return attendances.isNotEmpty
                          ? ListView.builder(
                              itemCount: attendances.length,
                              itemBuilder: (context, index) {
                                var data = attendances
                                    .elementAt(index)
                                    .attendancesDetails;
                                return buildCard(
                                  key:
                                      Key("${attendances.elementAt(index).id}"),
                                  date: attendances.elementAt(index).date,
                                  state: attendances.elementAt(index).status,
                                  dataCheckIn: data!.isNotEmpty
                                      ? data.elementAt(0)
                                      : null,
                                  dataCheckOut: data.length > 1
                                      ? data.elementAt(1)
                                      : null,
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
        ),
      ),
    );
  }

  Container buildCard({
    required Key key,
    required date,
    required state,
    AttendanceDetailModel? dataCheckIn,
    AttendanceDetailModel? dataCheckOut,
  }) {
    var stateDict = {
      "attend_no_checkout": {
        "name": "Tidak Check Out",
        "mainColor": MyColorsConst.primaryColor,
        "subColor": MyColorsConst.primaryLight2Color,
      },
      "attend": {
        "name": "Hadir",
        "mainColor": MyColorsConst.primaryColor,
        "subColor": MyColorsConst.primaryLight2Color,
      },
      "working": {
        "name": "Bekerja",
        "mainColor": MyColorsConst.primaryColor,
        "subColor": MyColorsConst.primaryLight2Color,
      },
      "absent": {
        "name": "Tidak Hadir",
        "mainColor": MyColorsConst.redColor,
        "subColor": MyColorsConst.lightRedColor,
      },
      "day_off": {
        "name": "Libur",
        "mainColor": MyColorsConst.darkColor,
        "subColor": MyColorsConst.lightDarkColor,
      },
    };
    return Container(
      key: key,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTileTheme(
        dense: true,
        child: ExpansionTile(
          collapsedBackgroundColor: stateDict[state]!["mainColor"] as Color,
          collapsedTextColor: MyColorsConst.whiteColor,
          collapsedIconColor: MyColorsConst.whiteColor,
          backgroundColor: stateDict[state]!["mainColor"] as Color,
          textColor: MyColorsConst.whiteColor,
          iconColor: MyColorsConst.whiteColor,
          title: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('EEEE, dd-MM-yyyy', 'id_ID').format(date),
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  stateDict[state]!["name"] as String,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          children: <Widget>[
            Container(
              width: double.infinity,
              color: stateDict[state]!["subColor"] as Color,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSubCard(
                    checkIn: true,
                    url: dataCheckIn?.imagePath,
                    datetime: dataCheckIn?.time,
                    onSite: dataCheckIn?.onSite,
                  ),
                  buildSubCard(
                    checkIn: false,
                    url: dataCheckOut?.imagePath,
                    datetime: dataCheckOut?.time,
                    onSite: dataCheckOut?.onSite,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildSubCard({
    String? url,
    DateTime? datetime,
    bool? onSite,
    checkIn = true,
  }) {
    var errImage = Builder(builder: (context) {
      final size = MediaQuery.of(context).size;
      return Container(
        width: size.width * 1 / 6,
        height: size.width * 1 / 6,
        decoration: const BoxDecoration(
          color: MyColorsConst.lightDarkColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.close,
          size: size.width * 1 / 6,
          color: MyColorsConst.semiDarkColor,
        ),
      );
    });
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            checkIn ? "Check In" : "Check Out",
            style: TextStyle(
              fontSize: 14,
              color:
                  checkIn ? MyColorsConst.greenColor : MyColorsConst.redColor,
            ),
          ),
          const SizedBox(height: 6),
          url != null
              ? CachedNetworkImage(
                  imageUrl: url,
                  imageBuilder: (context, imageProvider) {
                    final size = MediaQuery.of(context).size;
                    return Container(
                      width: size.width * 1 / 6,
                      height: size.width * 1 / 6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    );
                  },
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => errImage,
                )
              : errImage,
          const SizedBox(height: 6),
          Text(
            datetime != null ? DateFormat('HH:mm:ss').format(datetime) : "-",
            style: TextStyle(
              fontSize: 14,
              color:
                  checkIn ? MyColorsConst.greenColor : MyColorsConst.redColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            onSite != null
                ? onSite
                    ? "On Scope"
                    : "Out Scope"
                : "-",
            style: TextStyle(
              fontSize: 14,
              color:
                  checkIn ? MyColorsConst.greenColor : MyColorsConst.redColor,
            ),
          ),
        ],
      ),
    );
  }
}
