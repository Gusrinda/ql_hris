import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/approval/bloc/approval_bloc.dart';
import 'package:sj_presensi_mobile/pages/approval/detail_approval.view.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_detail_approval.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ApprovalPage extends StatefulWidget {
  static const routeName = '/ApprovalPage';
  const ApprovalPage({
    super.key,
  });

  @override
  State<ApprovalPage> createState() => _ApprovalPageState();
}

class _ApprovalPageState extends State<ApprovalPage> {

  Color _getColorByTrxTable(String category) {
    switch (category) {
      case 't_spd':
        return Colors.green.shade700;
      case 't_cuti':
        return Colors.red.shade700;
      case 't_lembur':
        return Colors.blue.shade700;
      default:
        return Colors.grey;
    }
  }

  IconData getIconByTrxTable(String category) {
    switch (category) {
      case 't_spd':
        return Icons.drive_eta_rounded;
      case 't_cuti':
        return CupertinoIcons.doc_person_fill;
      case 't_lembur':
        return CupertinoIcons.timer_fill;
      default:
        return CupertinoIcons.arrow_2_circlepath;
    }
  }

  String _formatDate(String date) {
    if (date != null && date.isNotEmpty) {
      final parsedDate = DateTime.parse(date);
      final formattedDate = DateFormat.yMMMMEEEEd('id_ID').format(parsedDate);
      return formattedDate;
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<ApprovalBloc, ApprovalState>(
      listener: (context, state) async {
        if (state is ListApprovalLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListApprovalFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListApprovalFailedUserExpired) {
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
        } else if (state is ListApprovalFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
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
                padding: EdgeInsets.only(left: 5.0.sp),
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
                      width: size.width.sp * 1 / 6,
                    ),
                    Expanded(
                      child: Text(
                        "Antrian Approval",
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
                  child: BlocBuilder<ApprovalBloc, ApprovalState>(
                    builder: (context, state) {
                      var listApproval =
                          context.read<ApprovalBloc>().listApproval;
                      return Stack(
                        children: [
                          if (listApproval.isNotEmpty)
                            ListView.builder(
                              itemCount: listApproval.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: InkWell(
                                    splashColor: MyColorsConst.primaryColor,
                                    onTap: () async {
                                      await Navigator.pushNamed(
                                        context,
                                        DetailApproval.routeName,
                                        arguments: listApproval[index],
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: MyColorsConst
                                                  .formBorderColor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 90.sp,
                                      width: size.width,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: _getColorByTrxTable(
                                                        listApproval[index]
                                                            .trxTable!)
                                                    .withOpacity(0.2),
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              getIconByTrxTable(
                                                  listApproval[index]
                                                      .trxTable!),
                                              color: _getColorByTrxTable(
                                                  listApproval[index]
                                                      .trxTable!),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${listApproval[index].trxNomor ?? ''}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "${listApproval[index].trxName ?? ''}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: _getColorByTrxTable(
                                                        listApproval[index]
                                                            .trxTable!)),
                                              ),
                                              SizedBox(height: 5.sp),
                                              Text(
                                                "${_formatDate(listApproval[index].trxDate.toString())}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: MyColorsConst
                                                        .lightDarkColor),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          if (listApproval.isEmpty)
                            Center(
                              child: Column(
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
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CardListApproval extends StatelessWidget {
//   const CardListApproval({
//     Key? key,
//     required this.tipeApproval,
//     required this.status,
//     this.iconApproval,
//     this.warnaStatus,
//     required this.data,
//     required this.dataCuti,
//     required this.dataLembur,
//     required this.dataDinas,
//   }) : super(key: key);

//   final String tipeApproval;
//   final String status;
//   final Icon? iconApproval;
//   final Color? warnaStatus;
//   final DataNotif data;
//   final List<Datum> dataCuti;
//   final List<DataLembur> dataLembur;
//   final List<DataDinas> dataDinas;

//   String mapStatusToString(String status) {
//     switch (status) {
//       case "Pengajuan Cuti":
//         return "Pengajuan Cuti";
//       case "Pengajuan Surat Perjalanan Dinas":
//         return "Pengajuan Surat Perjalanan Dinas";
//       case "Pengajuan Lembur":
//         return "Pengajuan Lembur";
//       default:
//         return 'Undefined';
//     }
//   }

//   void _redirectToDetailPage(BuildContext context) {
//     print("tipe Approval ini adalah: $tipeApproval");
//     print("data apa ini: $data");

//     if (tipeApproval == "Pengajuan Cuti" && data != null) {
//       print("Data Nomor TRX: ${data.trxNomor}");

//       Datum? matchingDataCuti;

//       for (Datum cuti in dataCuti) {
//         if (cuti.nomor == data.trxNomor) {
//           matchingDataCuti = cuti;
//           break;
//         }
//       }

//       if (matchingDataCuti != null) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailCutiPage(
//               data: matchingDataCuti,
//               dateFrom: matchingDataCuti?.dateFrom,
//               dateTo: matchingDataCuti?.dateTo,
//               alasanValue: matchingDataCuti?.alasanValue,
//               status: matchingDataCuti?.status,
//               keterangan: matchingDataCuti?.keterangan,
//               tipeCutiValue: matchingDataCuti?.tipeCutiValue,
//               nomorFromList: matchingDataCuti?.nomor,
//               reloadDataCallback: () {},
//             ),
//           ),
//         );
//       } else {
//         print("No matching data found in the list.");
//       }
//     } else if (tipeApproval == "Pengajuan Surat Perjalanan Dinas") {
//       DataDinas? matchDataDinas;

//       for (DataDinas dinas in dataDinas) {
//         if (dinas.nomor == data.trxNomor) {
//           matchDataDinas = dinas;
//           break;
//         }
//       }

//       if (matchDataDinas != null) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailDinasPage(
//               data: matchDataDinas,
//               status: matchDataDinas?.status,
//               createdAt: matchDataDinas?.createdAt,
//               jenisSpd: matchDataDinas?.jenisSpdValue,
//               jenisSpdId: matchDataDinas?.jenisSpdId,
//               zonaAwal: matchDataDinas?.mZonaAsalNama,
//               zonaAwalId: matchDataDinas?.mZonaAsalId,
//               zonaTujuan: matchDataDinas?.mZonaTujuanNama,
//               zonaTujuanId: matchDataDinas?.mZonaTujuanId,
//               lokasiTujuan: matchDataDinas?.mLokasiTujuanNama,
//               lokasiTujuanId: matchDataDinas?.mLokasiTujuanId,
//               templateSpd: matchDataDinas?.mSpdKode,
//               templateSpdId: matchDataDinas?.mSpdId,
//               tanggalAwal: matchDataDinas?.tglAcaraAwal,
//               tanggalAkhir: matchDataDinas?.tglAcaraAkhir,
//               posisiId: matchDataDinas?.mPosisiId,
//               posisi: matchDataDinas?.mPosisiDescKerja,
//               divisiId: matchDataDinas?.mDivisiId,
//               divisiValue: matchDataDinas?.mDivisiNama,
//               deptId: matchDataDinas?.mDeptId,
//               deptValue: matchDataDinas?.mDeptNama,
//               direktoratId: matchDataDinas?.mDirId,
//               direktoratValue: matchDataDinas?.mDirNama,
//               tanggal: matchDataDinas?.tanggal,
//               nomorFromList: matchDataDinas?.nomor,
//               reloadDataCallback: () {},
//             ),
//           ),
//         );
//       } else {
//         print("No matching data found in the list.");
//       }
//     } else if (tipeApproval == "Pengajuan Lembur" && data != null) {
//       DataLembur? matchDataLembur;

//       for (DataLembur lembur in dataLembur) {
//         if (lembur.nomor == data.trxNomor) {
//           matchDataLembur = lembur;
//           break;
//         }
//       }

//       if (matchDataLembur != null) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailLemburPage(
//               data: matchDataLembur,
//               tipeLemburValue: matchDataLembur?.tipeLemburValue,
//               nomorFromList: matchDataLembur?.nomor,
//               alasanValue: matchDataLembur?.alasanValue,
//               tanggal: matchDataLembur?.tanggal,
//               keterangan: matchDataLembur?.keterangan,
//               jamMulai: matchDataLembur?.jamMulai,
//               jamSelesai: matchDataLembur?.jamSelesai,
//               noDoc: matchDataLembur?.noDoc,
//               doc: matchDataLembur?.doc,
//             ),
//           ),
//         );
//       } else {
//         print("No matching data found in the list.");
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         _redirectToDetailPage(context);
//       },
//       child: Container(
//         margin: EdgeInsets.only(bottom: 12.sp),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(8.sp),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: warnaStatus?.withOpacity(0.4) ?? Colors.transparent,
//                   ),
//                   child: iconApproval,
//                 ),
//                 SizedBox(
//                   width: 10.sp,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             mapStatusToString(tipeApproval),
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 1,
//                             style: GoogleFonts.poppins(
//                               color: Colors.black,
//                               fontSize: 12.sp,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           Text(
//                             data.trxDate != null
//                                 ? DateFormat('dd MMM')
//                                     .format(data.trxDate!.toLocal())
//                                 : '',
//                             style: GoogleFonts.poppins(
//                               color: MyColorsConst.semiDarkColor2,
//                               fontSize: 10.sp,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 5.sp,
//                       ),
//                       Text(
//                         data.text ?? '',
//                         style: GoogleFonts.poppins(
//                           color: MyColorsConst.semiDarkColor,
//                           fontSize: 10,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 8.sp,
//             ),
//             Divider(
//               color: Colors.grey,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
