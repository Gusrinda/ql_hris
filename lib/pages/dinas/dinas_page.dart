import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "IN APPROVAL": {
    "name": "Menunggu Disetujui",
  },
  "Aktif": {
    "name": "Disetujui",
  },
  "REJECTED": {
    "name": "Ditolak",
  },
  "DRAFT": {
    "name": "Menunggu Disetujui",
  },
};

class DinasPage extends StatefulWidget {
  const DinasPage({Key? key}) : super(key: key);

  @override
  State<DinasPage> createState() => _DinasPageState();
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
        return Colors.blue;
      case "DRAFT":
        return Colors.blue;
      case "REJECTED":
        return Colors.red;
      case "Aktif":
        return Colors.green;
      default:
        return Colors.grey; // warna default
    }
  } else {
    return Colors.grey; // warna default
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

class _DinasPageState extends State<DinasPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ListDinasBloc, ListDinasState>(
      listener: (context, state) async {
        if (state is ListDinasLoading) {
          LoadingDialog.showLoadingDialog(context);
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
        appBar: appBarCustomMain(
          title: "Selamat Datang, Trial!",
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                "ini bulan terpilih ${selectedMonth} ${selectedYear}");
                            DateTime newDate;
                            if (selectedYear != null) {
                              newDate = DateTime(selectedYear!.year,
                                  selectedMonth!.month, DateTime.now().day);
                            } else {
                              newDate = DateTime(DateTime.now().year,
                                  selectedMonth!.month, DateTime.now().day);
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
              const SizedBox(height: 15),
              Expanded(
                child: BlocBuilder<ListDinasBloc, ListDinasState>(
                  builder: (context, state) {
                    var listdinas = context.read<ListDinasBloc>().listdinas;
                    var groupedData = groupByDate(listdinas);

                    return listdinas.isNotEmpty
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
                                  ListViewByDate(dataList: dataList)
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                final addCutiBloc = AddDinasBloc()
                  ..add(OnSelectDivisi())
                  ..add(OnSelectDepartemen())
                  ..add(OnSelectPosisi())
                  ..add(OnSelectTemplateSpd())
                  ..add(OnSelectDirektorat())
                  ..add(OnSelectJenisSpd())
                  ..add(OnSelectZona())
                  ..add(OnSelectLokasiTujuan())
                  ..add(OnSelectPic());

                return BlocProvider.value(
                  value: addCutiBloc,
                  child: AddDinasPage(),
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
  });
  final List<Datum> dataList;

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
  });
  final Datum data;
  final String currentStatus;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      subtitle: Stack(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: currentColor,
            ),
          ),
          Container(
            height: 120,
            margin: const EdgeInsets.only(bottom: 15, left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xFFDDDDDD)),
              color: MyColorsConst.whiteColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Surat Perjalanan Dinas",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(5),
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
                      height: 4,
                    ),
                    Text(
                      "${data.mDivisiNama} | ${data.mDeptNama}",
                      style: const TextStyle(
                          color: MyColorsConst.darkColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          color: MyColorsConst.lightDarkColor,
                          size: 10,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Dibuat Tanggal ${formatDate(data.createdAt)}",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
