import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/add_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "IN APPROVAL": {
    "name": "Menunggu Disetujui",
  },
  "APPROVED": {
    "name": "Disetujui",
  },
  "REJECTED": {
    "name": "Ditolak",
  },
  "REVISED": {
    "name": "Revisi",
  },
  "DRAFT": {
    "name": "Draft",
  },
};

class CutiPage extends StatefulWidget {
  static const routeName = 'CutiPage';
  const CutiPage({Key? key}) : super(key: key);

  @override
  _CutiPageState createState() => _CutiPageState();
}

String mapStatusToString(String status) {
  if (stateDict.containsKey(status)) {
    return stateDict[status]['name'];
  } else {
    return 'Undefined';
  }
}

Color getColorFromStatus(String status) {
  if (stateDict.containsKey(status)) {
    switch (status) {
      case "IN APPROVAL":
        return const Color(0xFF0068D4);
      case "REVISED":
        return Colors.orange;
      case "REJECTED":
        return const Color(0xFFED1B24);
      case "APPROVED":
        return const Color(0xFF0CA356);
      default:
        return Colors.grey; // warna default
    }
  } else {
    return Colors.grey; // warna default
  }
}

String extractTime(String? timeString) {
  if (timeString != null) {
    return timeString.substring(0, 5);
  } else {
    return '';
  }
}

String formatDate(String? dateString) {
  if (dateString != null) {
    DateTime date = DateFormat("dd/MM/yyyy").parse(dateString);
    return DateFormat('d MMMM y', 'id_ID').format(date);
  } else {
    return 'Tanggal tidak tersedia';
  }
}

Map<String, List<DataListCuti>> groupByDate(List<DataListCuti> data) {
  Map<String, List<DataListCuti>> groupedData = {};
  data.forEach((item) {
    String date = formatDate(item.createdAt);
    if (groupedData[date] == null) {
      groupedData[date] = [item];
    } else {
      groupedData[date]!.add(item);
    }
  });
  return groupedData;
}

DateTime? selectedMonth;
DateTime? selectedYear;

class _CutiPageState extends State<CutiPage> {
  String? username;
  String? totalCutiTerpakai;
  String? totalSisaCuti;
  String? sisaCutiTahunan;
  String? sisaCutiMasaKerja;
  String? jatahCutiTahunan;
  String? jatahCutiMasaKerja;

  @override
  void initState() {
    super.initState();
    selectedMonth = DateTime.now();
    selectedYear = DateTime.now();
    loadData();
  }

  void loadData() {
    context.read<ListCutiBloc>().add(GetListCuti(date: DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListCutiBloc, ListCutiState>(
      listener: (context, state) async {
        if (state is ListCutiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListCutiSuccessInBackground) {
          LoadingDialog.dismissDialog(context);

          setState(() {
            username = state.username;
            totalCutiTerpakai = state.totalCutiTerpakai;
            totalSisaCuti = state.totalSisaCuti;
            sisaCutiTahunan = state.sisaCutiTahunan;
            sisaCutiMasaKerja = state.sisaCutiMasaKerja;
            jatahCutiTahunan = state.jatahCutiTahunan;
            jatahCutiMasaKerja = state.jatahCutiMasaKerja;
          });
        } else if (state is ListCutiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListCutiFailedUserExpired) {
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
        } else if (state is ListCutiFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        // appBar: appBarCustomMain(
        //   title: "Selamat Datang, ${username ?? '-'}!",
        //   padLeft: 8,
        //   actions: [
        //     Container(
        //       margin: const EdgeInsets.only(right: 10),
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.white,
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.grey.withOpacity(0.1),
        //             spreadRadius: 2,
        //             blurRadius: 5,
        //             offset: Offset.zero,
        //           ),
        //         ],
        //       ),
        //       height: MediaQuery.of(context).size.width * 0.1,
        //       width: MediaQuery.of(context).size.width * 0.1,
        //       child: IconButton(
        //         splashRadius: 25,
        //         iconSize: 20,
        //         icon: const Icon(Icons.notifications_active),
        //         onPressed: () async {
        //           await Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => BlocProvider(
        //                 create: (context) => NotifikasiBloc()
        //                   ..add(
        //                     GetListNotifikasi(),
        //                   ),
        //                 child: NotifikasiPage(),
        //               ),
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //   ],
        // ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColorsConst.primaryDarkColor,
                MyColorsConst.primaryColor,
              ],
              stops: [0.0, 0.1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 1 / 4,
                    ),
                    Expanded(
                      child: Text(
                        "Riwayat Cuti",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bulan",
                                  style: GoogleFonts.poppins(
                                    color: MyColorsConst.darkColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                MonthPicker(
                                  onTap: (DateTime? months, DateTime? years) {
                                    if (months != null) {
                                      setState(() {
                                        selectedMonth = months;
                                      });
                                      print(
                                          "Selected month: ${selectedMonth} ${selectedYear}");
                                      DateTime newDate = DateTime(
                                        selectedYear?.year ??
                                            DateTime.now().year,
                                        selectedMonth!.month,
                                      );

                                      context.read<ListCutiBloc>().add(
                                            GetListCuti(
                                              date: newDate,
                                            ),
                                          );
                                    }
                                  },
                                  selectedYear: selectedYear,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tahun",
                                  style: GoogleFonts.poppins(
                                    color: MyColorsConst.darkColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                YearPickerCustom(
                                  onTap: (DateTime? years, DateTime? months) {
                                    if (years != null) {
                                      setState(() {
                                        selectedYear = years;
                                      });
                                      print(
                                          "ini tahun yang dipilih ${selectedYear} ${selectedMonth}");

                                      DateTime newDate;
                                      if (selectedMonth != null) {
                                        newDate = DateTime(selectedYear!.year,
                                            selectedMonth!.month);
                                      } else {
                                        newDate = DateTime(selectedYear!.year,
                                            DateTime.now().month);
                                      }

                                      context.read<ListCutiBloc>().add(
                                            GetListCuti(
                                              date: newDate,
                                            ),
                                          );
                                    }
                                  },
                                  selectedMonth: selectedMonth,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Expanded(
                        child: BlocBuilder<ListCutiBloc, ListCutiState>(
                          builder: (context, state) {
                            var listcuti =
                                context.read<ListCutiBloc>().listcuti;
                            var groupedData = groupByDate(listcuti);

                            // debugPrint("LIST CUTI ? ${listcuti}");

                            return listcuti.isNotEmpty
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: groupedData.length,
                                    itemBuilder: (context, index) {
                                      var date =
                                          groupedData.keys.toList()[index];
                                      var dataList = groupedData[date]!;

                                      return Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              date,
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            ListViewByDate(
                                              dataList: dataList,
                                              reloadDataCallback: loadData,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  )
                                : Center(
                                    child: EmptyStateBuilder(),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => AddCutiBloc()
                    ..add(OnSelectAlasanCuti())
                    ..add(OnSelectTipeCuti()),
                  child: AddCutiPage(
                    // Teruskan callback ke AddCutiPage
                    reloadDataCallback: loadData,
                  ),
                ),
              ),
            );
          },
          backgroundColor: MyColorsConst.primaryLightColor,
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
      ),
    );
  }
}

class ListViewByDate extends StatelessWidget {
  const ListViewByDate(
      {Key? key, required this.dataList, required this.reloadDataCallback})
      : super(key: key);

  final List<DataListCuti> dataList;
  final VoidCallback reloadDataCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        var data = dataList[index];
        String currentStatus = data.status as String;
        Color currentColor = getColorFromStatus(currentStatus);

        return ListViewCuti(
          data: data,
          currentStatus: currentStatus,
          currentColor: currentColor,
          reloadDataCallback: reloadDataCallback,
        );
      },
    );
  }
}

class ListViewCuti extends StatelessWidget {
  const ListViewCuti({
    Key? key,
    required this.data,
    required this.currentStatus,
    required this.currentColor,
    required this.reloadDataCallback,
  }) : super(key: key);

  final DataListCuti data;
  final String currentStatus;
  final Color currentColor;
  final VoidCallback reloadDataCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      subtitle: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailCutiPage(
                data: data,
                timeFrom: data.timeFrom,
                timeTo: data.timeTo,
                dateFrom: data.dateFrom,
                dateTo: data.dateTo,
                alasanValue: data.alasanValue,
                alasanID: data.alasanId,
                status: data.status,
                keterangan: data.keterangan,
                tipeCutiValue: data.tipeCutiValue,
                tipeCutiID: data.tipeCutiId,
                nomorFromList: data.nomor,
                cutiId: data.id,
                reloadDataCallback: reloadDataCallback,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: MyColorsConst.darkColor.withOpacity(0.25),
                    offset: Offset(2, 3.5),
                    blurRadius: 7,
                  ),
                ],
                color: MyColorsConst.whiteColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${data.tipeCutiValue}",
                    style: GoogleFonts.poppins(
                      color: MyColorsConst.darkColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    data.nomor ?? '-',
                    style: GoogleFonts.poppins(
                      color: MyColorsConst.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Durasi',
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          data.tipeCutiValue == "P24"
                              ? '${data.intervalMin} Menit'
                              : '${data.interval ?? 0} Hari',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          data.tipeCutiValue == "P24" ? 'Waktu' : 'Tanggal',
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          data.tipeCutiValue == "P24"
                              ? '${data.timeFrom?.substring(0, 5) ?? "08:00"} - ${data.timeTo?.substring(0, 5) ?? "08:00"}'
                              : '${data.dateFrom} - ${data.dateTo}',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 30,
                padding:
                    EdgeInsets.symmetric(horizontal: 10.sp, vertical: 3.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(7.sp),
                    bottomLeft: Radius.circular(7.sp),
                  ),
                  color: currentColor,
                ),
                child: Center(
                  child: Text(
                    mapStatusToString(currentStatus),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyStateBuilder extends StatelessWidget {
  const EmptyStateBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/box_nodata.png",
          height: size.width * 1 / 2.5,
        ),
        const SizedBox(height: 8),
        Text(
          "Tidak Ada Data Yang Ditampilkan!",
          style: GoogleFonts.poppins(
            color: MyColorsConst.darkColor,
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
