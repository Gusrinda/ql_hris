import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/add_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
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

Map<String, List<Datum>> groupByDate(List<Datum> data) {
  Map<String, List<Datum>> groupedData = {};
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
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    context.read<ListCutiBloc>().add(GetListCuti(date: DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListCutiBloc, ListCutiState>(
      listener: (context, state) async {
        if (state is ListCutiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListCutiSuccessInBackground) {
          LoadingDialog.dismissDialog(context);

          setState(() {
            username = state.username;
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
        appBar: appBarCustomMain(
          title: "Selamat Datang, ${username ?? '-'}!",
          padLeft: 8,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset.zero,
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: IconButton(
                splashRadius: 25,
                iconSize: 20,
                icon: const Icon(Icons.notifications_active),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => NotifikasiBloc()
                          ..add(
                            GetListNotifikasi(),
                          ),
                        child: NotifikasiPage(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Daftar Pengajuan Cuti",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: MyColorsConst.darkColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bulan",
                        style: TextStyle(
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
                                "ini bulan dipilih ${selectedMonth} ${selectedYear}");
                            DateTime newDate;
                            if (selectedYear != null) {
                              newDate = DateTime(selectedYear!.year,
                                  selectedMonth!.month, DateTime.now().day);
                            } else {
                              newDate = DateTime(DateTime.now().year,
                                  selectedMonth!.month, DateTime.now().day);
                            }

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
                      const Text(
                        "Tahun",
                        style: TextStyle(
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
                              newDate = DateTime(
                                  selectedYear!.year, selectedMonth!.month);
                            } else {
                              newDate = DateTime(
                                  selectedYear!.year, DateTime.now().month);
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
              const SizedBox(height: 15),
              Expanded(
                child: BlocBuilder<ListCutiBloc, ListCutiState>(
                  builder: (context, state) {
                    var listcuti = context.read<ListCutiBloc>().listcuti;
                    var groupedData = groupByDate(listcuti);

                    // debugPrint("LIST CUTI ? ${listcuti}");

                    return listcuti.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: groupedData.length,
                            itemBuilder: (context, index) {
                              var date = groupedData.keys.toList()[index];
                              var dataList = groupedData[date]!;

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      date,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  ListViewByDate(dataList: dataList, reloadDataCallback: loadData,),
                                ],
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
  const ListViewByDate({Key? key, required this.dataList, required this.reloadDataCallback}) : super(key: key);

  final List<Datum> dataList;
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
          currentColor: currentColor, reloadDataCallback: reloadDataCallback,
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
    required this.currentColor, required this.reloadDataCallback,
  }) : super(key: key);

  final Datum data;
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
                dateFrom: data.dateFrom,
                dateTo: data.dateTo,
                alasanValue: data.alasanValue,
                status: data.status,
                keterangan: data.keterangan,
                tipeCutiValue: data.tipeCutiValue,
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
              margin: EdgeInsets.only(right: 3),
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: currentColor,
              ),
            ),
            Container(
              height: 90,
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
                        "${data.tipeCutiValue}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: currentColor.withOpacity(0.1),
                        ),
                        child: Text(
                          mapStatusToString(currentStatus),
                          style: TextStyle(
                            color: currentColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_rounded,
                        color: MyColorsConst.lightDarkColor,
                        size: 10,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${formatDate(data.dateFrom)} - ${formatDate(data.dateTo)}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
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
        const Text(
          "Tidak ada data yang ditampilkan!",
          style: TextStyle(
            color: MyColorsConst.darkColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
