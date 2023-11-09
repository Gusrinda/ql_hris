import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/add_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_bloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "IN APPROVAL": {
    "name": "Menunggu Disetujui",
  },
  "APPROVAL": {
    "name": "Disetujui",
  },
  "REJECTED": {
    "name": "Ditolak",
  },
};

class CutiPage extends StatefulWidget {
  const CutiPage({
    super.key,
  });

  @override
  State<CutiPage> createState() => _CutiPageState();
}

class _CutiPageState extends State<CutiPage> {
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
        case "REJECTED":
          return Colors.red;
        case "APPROVAL":
          return Colors.green;
        default:
          return Colors.grey; // warna default
      }
    } else {
      return Colors.grey; // warna default
    }
  }

  DateTime? selectedMonth;
  DateTime? selectedYear;

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
    // Color? warnaStatus;
    // switch (status) {
    //   case "Menunggu Disetujui":
    //     warnaStatus = Colors.blue;
    //     break;
    //   case "Ditolak":
    //     warnaStatus = Colors.red;
    //     break;
    //   case "Disetujui":
    //     warnaStatus = Colors.green;
    //     break;
    //   default:
    //     warnaStatus = Colors.grey;
    // }
    List<String> daftarPermohonan = [
      "Menunggu Disetujui",
      "Ditolak",
      "Disetujui"
    ];

    List<String> daftarTanggal = [
      "Hari ini",
      "Kemarin",
    ];
    List<int> daftar = [1, 3];

    final size = MediaQuery.of(context).size;

    return BlocListener<ListCutiBloc, ListCutiState>(
      listener: (context, state) async {
        if (state is ListCutiLoading) {
          LoadingDialog.showLoadingDialog(context);
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
                    MaterialPageRoute(builder: (context) => NotifikasiPage()),
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
                                "ini bulan terpilih ${selectedMonth} ${selectedYear}");
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
              const SizedBox(height: 30),
              Expanded(
                child: BlocBuilder<ListCutiBloc, ListCutiState>(
                  builder: (context, state) {
                    var listcuti = context.read<ListCutiBloc>().listcuti;

                    debugPrint("LIST CUTI ? ${listcuti}");

                    return listcuti.isNotEmpty
                        ? ListView.builder(
                            // physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: listcuti.length,
                            itemBuilder: (context, index) {
                              var data = listcuti;

                              String currentStatus =
                                  data[index].status as String;
                              Color currentColor =
                                  getColorFromStatus(currentStatus);

                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                subtitle: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailCutiPage(
                                          data: data,
                                          dateFrom: data[index].dateFrom,
                                          dateTo: data[index].dateTo,
                                          datumAlasanId: data[index].datumAlasanId,
                                          status: data[index].status,
                                          keterangan: data[index].keterangan,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: currentColor,
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        margin: const EdgeInsets.only(
                                            bottom: 15, left: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: const Color(0xFFDDDDDD)),
                                          color: MyColorsConst.whiteColor,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Cuti Sehari",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: currentColor
                                                            .withOpacity(0.1),
                                                      ),
                                                      child: Text(
                                                        mapStatusToString(
                                                            data[index].status
                                                                as String),
                                                        style: TextStyle(
                                                          color: currentColor,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .calendar_month_rounded,
                                                      color: MyColorsConst
                                                          .lightDarkColor,
                                                      size: 10,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '${formatDate(data[index].dateFrom)} - ${formatDate(data[index].dateTo)}',
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
                                                // Row(
                                                //   children: [
                                                //     const Icon(
                                                //       Icons.calendar_month_rounded,
                                                //       color: MyColorsConst
                                                //           .lightDarkColor,
                                                //       size: 10,
                                                //     ),
                                                //     SizedBox(width: 5),
                                                //     Text(
                                                //       "${extractTime(data[index].timeFrom)} - ${extractTime(data[index].timeTo)}",
                                                //       style: const TextStyle(
                                                //           color: Colors.grey,
                                                //           fontSize: 10,
                                                //           fontWeight:
                                                //               FontWeight.w400),
                                                //     ),
                                                //   ],
                                                // ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddCutiPage(),
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

// class SuratCutiPerTanggal extends StatelessWidget {
//   const SuratCutiPerTanggal({
//     super.key,
//     required this.daftarPermohonan,
//     required this.daftar,
//     required this.tanggal,
//     required this.urutan,
//   });
//   final int urutan;
//   final String tanggal;
//   final List<String> daftarPermohonan;
//   final List<int> daftar;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             tanggal,
//             style: const TextStyle(
//                 color: MyColorsConst.darkColor,
//                 fontSize: 12,
//                 fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 12,
//           ),
//           ListView.builder(
//             // physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: daftar[urutan],
//             itemBuilder: (BuildContext c, int index) {
//               return CardPerintahCuti(
//                 isAlreadyRead: index == daftar[urutan] - 1,
//                 isLast: index == daftar[urutan] - 1,
//                 status:
//                     daftarPermohonan[Random().nextInt(daftarPermohonan.length)],
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const DetailCutiPage(),
                //     ),
                //   );
                // },
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CardPerintahCuti extends StatelessWidget {
//   const CardPerintahCuti({
//     super.key,
//     required this.isAlreadyRead,
//     required this.isLast,
//     required this.status,
//     this.onTap,
//   });

//   final bool isAlreadyRead;
//   final bool isLast;
//   final String status;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     Color? warnaStatus;
//     switch (status) {
//       case "Menunggu Disetujui":
//         warnaStatus = Colors.blue;
//         break;
//       case "Ditolak":
//         warnaStatus = Colors.red;
//         break;
//       case "Disetujui":
//         warnaStatus = Colors.green;
//         break;
//       default:
//         warnaStatus = Colors.grey;
//     }
//     return GestureDetector(
//       onTap: onTap,
//       child: Stack(
//         children: [
//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               color: warnaStatus,
//             ),
//           ),
//           Container(
//             height: 100,
//             margin: const EdgeInsets.only(bottom: 15, left: 5),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               border: Border.all(color: const Color(0xFFDDDDDD)),
//               color: MyColorsConst.whiteColor,
//             ),
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         const Text(
//                           "Cuti Sehari",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         const Spacer(),
//                         Container(
//                           padding: const EdgeInsets.all(4),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: warnaStatus.withOpacity(0.1),
//                           ),
//                           child: Text(
//                             status,
//                             style: TextStyle(
//                               color: warnaStatus,
//                               fontSize: 10,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     const Row(
//                       children: [
//                         Icon(
//                           Icons.calendar_month_rounded,
//                           color: MyColorsConst.lightDarkColor,
//                           size: 10,
//                         ),
//                         SizedBox(width: 5),
//                         Text(
//                           '09 Oktober 2023',
//                           style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 10,
//                               fontWeight: FontWeight.w400),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     const Row(
//                       children: [
//                         Icon(
//                           Icons.access_time_filled,
//                           color: MyColorsConst.lightDarkColor,
//                           size: 10,
//                         ),
//                         SizedBox(width: 5),
//                         Text(
//                           "09.00 - 17.00",
//                           style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 10,
//                               fontWeight: FontWeight.w400),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
