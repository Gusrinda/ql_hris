import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
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

class DinasPage extends StatefulWidget {
  const DinasPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DinasPage> createState() => _DinasPageState();
}

String mapStatusToString(String status) {
  if (stateDict.containsKey(status)) {
    return stateDict[status]['name'];
  } else {
    return 'Menunggu Disetujui';
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
    return const Color(0xFF0068D4); // warna default
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

String extractTime(String? timeString) {
  if (timeString != null) {
    return timeString.substring(0, 5);
  } else {
    return '';
  }
}

Map<String, List<DataDinas>> groupByDate(List<DataDinas> data) {
  Map<String, List<DataDinas>> groupedData = {};
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

class _DinasPageState extends State<DinasPage> {
  String? username;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    context.read<ListDinasBloc>().add(GetListDinas(date: DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListDinasBloc, ListDinasState>(
      listener: (context, state) async {
        if (state is ListDinasLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListDinasSuccessInBackground) {
          LoadingDialog.dismissDialog(context);

          setState(() {
            username = state.username;
          });
        } else if (state is ListDinasFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListDinasFailedUserExpired) {
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
        } else if (state is ListDinasFailedInBackground) {
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
          child: Column(
            children: [
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 1 / 7,
                    ),
                    Expanded(
                      child: Text(
                        "History Perjalanan Dinas",
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
                  child: Padding(
                    padding: EdgeInsets.all(18.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bulan",
                                  style: GoogleFonts.poppins(
                                    color: MyColorsConst.darkColor,
                                    fontSize: 10,
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
                                          "ini bulan terpilih ${selectedMonth} ${selectedYear}");
                                      DateTime newDate;
                                      if (selectedYear != null) {
                                        newDate = DateTime(
                                            selectedYear!.year,
                                            selectedMonth!.month,
                                            DateTime.now().day);
                                      } else {
                                        newDate = DateTime(
                                            DateTime.now().year,
                                            selectedMonth!.month,
                                            DateTime.now().day);
                                      }

                                      context.read<ListDinasBloc>().add(
                                            GetListDinas(
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
                                    fontSize: 10,
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

                                      context.read<ListDinasBloc>().add(
                                            GetListDinas(
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
                        SizedBox(
                          height: 15.sp,
                        ),
                        Expanded(
                          child: BlocBuilder<ListDinasBloc, ListDinasState>(
                            builder: (context, state) {
                              var listdinas =
                                  context.read<ListDinasBloc>().listdinas;
                              var groupedData = groupByDate(listdinas);

                              return listdinas.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: groupedData.length,
                                      itemBuilder: (context, index) {
                                        var date =
                                            groupedData.keys.toList()[index];
                                        var dataList = groupedData[date]!;

                                        return Column(
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
                                            )
                                          ],
                                        );
                                      },
                                    )
                                  : Center(
                                      child: EmptyStateBuilder(),
                                    );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return BlocProvider(
                  create: (context) => AddDinasBloc()
                    ..add(OnSelectDivisi())
                    ..add(OnSelectDepartemen())
                    ..add(OnSelectPosisi())
                    ..add(OnSelectTemplateSpd())
                    ..add(OnSelectDirektorat())
                    ..add(OnSelectJenisSpd())
                    ..add(OnSelectZona())
                    ..add(OnSelectLokasiTujuan())
                    ..add(OnSelectPic()),
                  child: AddDinasPage(
                    reloadDataCallback: loadData,
                  ),
                );
              }),
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
  const ListViewByDate({
    super.key,
    required this.dataList,
    required this.reloadDataCallback,
  });
  final List<DataDinas> dataList;
  final VoidCallback reloadDataCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dataList.length,
      itemBuilder: ((context, index) {
        var data = dataList[index];
        String currentStatus = data.status as String? ?? '';
        Color currentColor = getColorFromStatus(currentStatus);

        return ListViewDinas(
          data: data,
          currentStatus: currentStatus,
          currentColor: currentColor,
          reloadDataCallback: reloadDataCallback,
        );
      }),
    );
  }
}

class ListViewDinas extends StatelessWidget {
  const ListViewDinas({
    super.key,
    required this.data,
    required this.currentStatus,
    required this.currentColor,
    required this.reloadDataCallback,
  });
  final DataDinas data;
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
              builder: (context) => DetailDinasPage(
                data: data,
                dinasId: data.id,
                status: data.status,
                createdAt: data.createdAt,
                jenisSpd: data.jenisSpdValue,
                jenisSpdId: data.jenisSpdId,
                zonaAwal: data.mZonaAsalNama,
                zonaAwalId: data.mZonaAsalId,
                zonaTujuan: data.mZonaTujuanNama,
                zonaTujuanId: data.mZonaTujuanId,
                lokasiTujuan: data.mLokasiTujuanNama,
                lokasiTujuanId: data.mLokasiTujuanId,
                templateSpd: data.mSpdKode,
                templateSpdId: data.mSpdId,
                tanggalAwal: data.tglAcaraAwal,
                tanggalAkhir: data.tglAcaraAkhir,
                posisiId: data.mPosisiId,
                posisi: data.mPosisiDescKerja,
                divisiId: data.mDivisiId,
                divisiValue: data.mDivisiNama,
                deptId: data.mDeptId,
                deptValue: data.mDeptNama,
                direktoratId: data.mDirId,
                direktoratValue: data.mDirNama,
                tanggal: data.tanggal,
                reloadDataCallback: reloadDataCallback,
                nomorFromList: data.nomor,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              // height: 105,
              margin: const EdgeInsets.only(bottom: 7, left: 5, right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                // border: Border.all(color: const Color(0xFFDDDDDD)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 0),
                      blurRadius: 5)
                ],
                color: MyColorsConst.whiteColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Surat Perjalanan Dinas",
                        style: GoogleFonts.poppins(
                          color: MyColorsConst.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
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
                          'Tujuan',
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
                          '${data.mLokasiTujuanNama}',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // RichText(
                  //   text: TextSpan(
                  //     children: [
                  //       TextSpan(
                  //         text: "${data.mDivisiNama}",
                  //         style: GoogleFonts.poppins(
                  //           color: MyColorsConst.darkColor,
                  //           fontSize: 10,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //       TextSpan(
                  //         text: " | ",
                  //         style: GoogleFonts.poppins(
                  //           color: Color(
                  //               0XFF0068D4), // Set the color of the pipe to blue
                  //           fontSize: 10,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //       TextSpan(
                  //         text: "${data.mDeptNama}",
                  //         style: GoogleFonts.poppins(
                  //           color: MyColorsConst.darkColor,
                  //           fontSize: 10,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   maxLines: 2,
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Tanggal',
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
                          "${data.tglAcaraAwal} - ${data.tglAcaraAkhir}",
                          style: GoogleFonts.poppins(
                              color: MyColorsConst.darkColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
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
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.sp),
                    bottomLeft: Radius.circular(10.sp),
                  ),
                  color: currentColor,
                ),
                child: Center(
                  child: Text(
                    mapStatusToString(currentStatus),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
          height: size.width * 1 / 2,
        ),
        const SizedBox(height: 8),
        Text(
          "Tidak ada data yang ditampilkan!",
          style: GoogleFonts.poppins(
            color: MyColorsConst.darkColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
