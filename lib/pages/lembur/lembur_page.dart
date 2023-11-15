import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/lembur/detail_lembur.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/detail_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class LemburPage extends StatefulWidget {
  static const routeName = '/LemburPage';
  const LemburPage({
    super.key,
  });

  @override
  State<LemburPage> createState() => _LemburPageState();
}

class _LemburPageState extends State<LemburPage> {
  DateTime? selectedMonth;
  DateTime? selectedYear;

  // Color getColorFromStatus(DateTime date) {
  //   DateTime now = DateTime.now();
  //   if (date.isBefore(now)) {
  //     return Colors.blue; // Active
  //   } else {
  //     return Colors.red; // Inactive
  //   }
  // }

  String formatTime(DateTime time) {
    return DateFormat.Hm().format(time);
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocListener<ListLemburBloc, ListLemburState>(
      listener: (context, state) async {
        if (state is LemburLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is LemburFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is LemburFailedUserExpired) {
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
        } else if (state is LemburFailedInBackground) {
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
              const Text(
                "Daftar Lembur",
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
                                "ini bulan terpilih ${selectedMonth} ${selectedYear}");
                            DateTime newDate;
                            if (selectedYear != null) {
                              newDate = DateTime(selectedYear!.year,
                                  selectedMonth!.month, DateTime.now().day);
                            } else {
                              newDate = DateTime(DateTime.now().year,
                                  selectedMonth!.month, DateTime.now().day);
                            }

                            context.read<ListLemburBloc>().add(
                                  GetListLembur(
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

                            context.read<ListLemburBloc>().add(
                                  GetListLembur(
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
              const SizedBox(height: 30),
              Expanded(
                child: BlocBuilder<ListLemburBloc, ListLemburState>(
                  builder: (context, state) {
                    var listlembur = context.read<ListLemburBloc>().listlembur;

                    debugPrint("LIST LEMBUR ? ${listlembur}");

                    return listlembur.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: listlembur.length,
                            itemBuilder: (context, index) {
                              // DateTime sampleDate = DateTime.now();
                              var data = listlembur;
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                subtitle: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (context) =>
                                              DetailLemburBloc()
                                                ..add(
                                                  GetDetailLembur(
                                                    id: data[index].id ?? 0,
                                                  ),
                                                ),
                                          child: DetailLemburPage(
                                              // id: data[index].id ?? 0,
                                              ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Color(0XFF0068D4),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        margin: const EdgeInsets.only(
                                            bottom: 7, left: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                offset: Offset(0, 0),
                                                blurRadius: 5)
                                          ],
                                          color: MyColorsConst.whiteColor,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "${data[index].nomor ?? 0}",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 6,
                                                      vertical: 3),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: Colors.blue
                                                        .withOpacity(0.1),
                                                  ),
                                                  child: Text(
                                                    '${data[index].tipeLemburValue}',
                                                    style: const TextStyle(
                                                      color: Color(0XFF0068D4),
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month_rounded,
                                                  color: MyColorsConst
                                                      .lightDarkColor,
                                                  size: 10,
                                                ),
                                                const SizedBox(
                                                    width:
                                                        5), // Atur jarak sesuai kebutuhan
                                                Text(
                                                  '${formatDate(data[index].tanggal)}',
                                                  style: const TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.access_time_filled,
                                                  color: MyColorsConst
                                                      .lightDarkColor,
                                                  size: 10,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  "${extractTime(data[index].jamMulai)} - ${extractTime(data[index].jamSelesai)}",
                                                  style: const TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
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
                            },
                          )
                        : Center(
                            child: Column(
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
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
