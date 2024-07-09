import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/detail_lembur.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_page.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/lembur/lembur_model.dart';
import 'package:sj_presensi_mobile/services/model/notifikasi_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

// final Map<String, dynamic> stateDict = {
//   "Pengajuan Cuti": {
//     "name": "Pengajuan Cuti",
//   },
//   "Pengajuan Spd": {
//     "name": "Pengajuan Spd",
//   },
//   "Surat Perintah Lembur": {
//     "name": "Surat Perintah Lembur",
//   },
//   "Event": {
//     "name": "Selamat Ulang Tahun",
//   },
// };

class NotifikasiPage extends StatefulWidget {
  static const routeName = '/NotifikasiPage';
  const NotifikasiPage({
    super.key,
  });

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  Icon? iconNotifikasi;
  Color? warnaStatus;

  void getIconAndColor(String trxName, String actionType) {
    switch (trxName) {
      case "Pengajuan Cuti":
        if (actionType == "DITERIMA") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.green,
            size: 30,
          );
        } else if (actionType == "MENGAJUKAN") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.blue,
            size: 30,
          );
        } else if (actionType == "Ditolak") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.red,
            size: 30,
          );
        }
        break;
      case "Pengajuan Surat Perjalanan Dinas":
        if (actionType == "DITERIMA") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.green,
            size: 30,
          );
        } else if (actionType == "MENGAJUKAN") {
          iconNotifikasi = const Icon(
            Icons.directions_car,
            color: Colors.blue,
            size: 30,
          );
        } else if (actionType == "Ditolak") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.red,
            size: 30,
          );
        }
        break;
      case "Pengajuan Lembur":
        iconNotifikasi = const Icon(
          Icons.access_time,
          color: Colors.red,
          size: 30,
        );
        break;
      case "Event":
        iconNotifikasi = const Icon(
          Icons.calendar_month_outlined,
          color: Colors.blue,
          size: 30,
        );
        break;
      default:
        iconNotifikasi = const Icon(
          Icons.notifications,
          color: Colors.yellow,
          size: 30,
        );
    }

    switch (actionType) {
      case "DITERIMA":
        if (trxName == "Pengajuan Cuti" ||
            trxName == "Pengajuan Surat Perjalanan Dinas") {
          warnaStatus = Colors.green;
        } else if (trxName == "Pengajuan Lembur") {
          warnaStatus = Colors.red;
        } else if (trxName == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      case "MENGAJUKAN":
        if (trxName == "Pengajuan Cuti" ||
            trxName == "Pengajuan Surat Perjalanan Dinas") {
          warnaStatus = Colors.blue;
        } else if (trxName == "Pengajuan Lembur") {
          warnaStatus = Colors.red;
        } else if (trxName == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      case "Ditolak":
        if (trxName == "Cuti" || trxName == "Dinas") {
          warnaStatus = Colors.red;
        } else if (trxName == "Pengajuan Lembur") {
          warnaStatus = Colors.red;
        } else if (trxName == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      default:
        warnaStatus = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<NotifikasiBloc, NotifikasiState>(
      listener: (context, state) async {
        if (state is ListNotifikasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListNotifikasiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListNotifikasiFailedUserExpired) {
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
        } else if (state is ListNotifikasiFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        // appBar: appBarCustomV1(
        //   title: "Notifikasi",
        //   // centerTitle: true,
        //   padLeft: 8,
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
                      width: size.width * 1 / 4,
                    ),
                    Expanded(
                      child: Text(
                        "Notifikasi",
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
                  child: BlocBuilder<NotifikasiBloc, NotifikasiState>(
                    builder: (context, state) {
                      var listNotifikasi =
                          context.read<NotifikasiBloc>().listNotifikasi;
                      var listCuti = context.read<NotifikasiBloc>().listcuti;
                      var listLembur =
                          context.read<NotifikasiBloc>().listlembur;
                      var listDinas = context.read<NotifikasiBloc>().listdinas;
                      return Stack(
                        children: [
                          if (listNotifikasi.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: listNotifikasi.length,
                                itemBuilder: (context, index) {
                                  var data = listNotifikasi;
                                  var dataCuti = listCuti;
                                  var dataLembur = listLembur;
                                  var dataDinas = listDinas;
                                  if (data[index].trxName != null &&
                                      data[index].actionType != null) {
                                    getIconAndColor(data[index].trxName!,
                                        data[index].actionType!);
                                    return CardListNotifikasi(
                                      tipeNotifikasi: data[index].trxName!,
                                      status: data[index].actionType!,
                                      iconNotifikasi: iconNotifikasi,
                                      warnaStatus: warnaStatus,
                                      data: data[index],
                                      dataCuti: dataCuti,
                                      dataLembur: dataLembur,
                                      dataDinas: dataDinas,
                                    );
                                  } else {
                                    return SizedBox.shrink();
                                  }
                                },
                              ),
                            ),
                          if (listNotifikasi.isEmpty)
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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

class CardListNotifikasi extends StatelessWidget {
  const CardListNotifikasi({
    Key? key,
    required this.tipeNotifikasi,
    required this.status,
    this.iconNotifikasi,
    this.warnaStatus,
    required this.data,
    required this.dataCuti,
    required this.dataLembur,
    required this.dataDinas,
  }) : super(key: key);

  final String tipeNotifikasi;
  final String status;
  final Icon? iconNotifikasi;
  final Color? warnaStatus;
  final DataNotif data;
  final List<DataListCuti> dataCuti;
  final List<DataLembur> dataLembur;
  final List<DataDinas> dataDinas;

  String mapStatusToString(String status) {
    switch (status) {
      case "Pengajuan Cuti":
        return "Pengajuan Cuti";
      case "Pengajuan Surat Perjalanan Dinas":
        return "Pengajuan Surat Perjalanan Dinas";
      case "Pengajuan Lembur":
        return "Pengajuan Lembur";
      default:
        return 'Undefined';
    }
  }

  void _redirectToDetailPage(BuildContext context) {
    print("tipe Notifikasi ini adalah: $tipeNotifikasi");
    print("data apa ini: $data");

    if (tipeNotifikasi == "Pengajuan Cuti" && data != null) {
      print("Data Nomor TRX: ${data.trxNomor}");

      DataListCuti? matchingDataCuti;

      for (DataListCuti cuti in dataCuti) {
        if (cuti.nomor == data.trxNomor) {
          matchingDataCuti = cuti;
          break;
        }
      }

      if (matchingDataCuti != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCutiPage(
              data: matchingDataCuti,
              dateFrom: matchingDataCuti?.dateFrom,
              dateTo: matchingDataCuti?.dateTo,
              alasanValue: matchingDataCuti?.alasanValue,
              status: matchingDataCuti?.status,
              keterangan: matchingDataCuti?.keterangan,
              tipeCutiValue: matchingDataCuti?.tipeCutiValue,
              nomorFromList: matchingDataCuti?.nomor,
              reloadDataCallback: () {},
            ),
          ),
        );
      } else {
        print("No matching data found in the list.");
      }
    } else if (tipeNotifikasi == "Pengajuan Surat Perjalanan Dinas") {
      DataDinas? matchDataDinas;

      for (DataDinas dinas in dataDinas) {
        if (dinas.nomor == data.trxNomor) {
          matchDataDinas = dinas;
          break;
        }
      }

      if (matchDataDinas != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailDinasPage(
              data: matchDataDinas,
              status: matchDataDinas?.status,
              createdAt: matchDataDinas?.createdAt,
              jenisSpd: matchDataDinas?.jenisSpdValue,
              jenisSpdId: matchDataDinas?.jenisSpdId,
              zonaAwal: matchDataDinas?.mZonaAsalNama,
              zonaAwalId: matchDataDinas?.mZonaAsalId,
              zonaTujuan: matchDataDinas?.mZonaTujuanNama,
              zonaTujuanId: matchDataDinas?.mZonaTujuanId,
              lokasiTujuan: matchDataDinas?.mLokasiTujuanNama,
              lokasiTujuanId: matchDataDinas?.mLokasiTujuanId,
              templateSpd: matchDataDinas?.mSpdKode,
              templateSpdId: matchDataDinas?.mSpdId,
              tanggalAwal: matchDataDinas?.tglAcaraAwal,
              tanggalAkhir: matchDataDinas?.tglAcaraAkhir,
              posisiId: matchDataDinas?.mPosisiId,
              posisi: matchDataDinas?.mPosisiDescKerja,
              divisiId: matchDataDinas?.mDivisiId,
              divisiValue: matchDataDinas?.mDivisiNama,
              deptId: matchDataDinas?.mDeptId,
              deptValue: matchDataDinas?.mDeptNama,
              direktoratId: matchDataDinas?.mDirId,
              direktoratValue: matchDataDinas?.mDirNama,
              tanggal: matchDataDinas?.tanggal,
              nomorFromList: matchDataDinas?.nomor,
              reloadDataCallback: () {},
            ),
          ),
        );
      } else {
        print("No matching data found in the list.");
      }
    } else if (tipeNotifikasi == "Pengajuan Lembur" && data != null) {
      DataLembur? matchDataLembur;

      for (DataLembur lembur in dataLembur) {
        if (lembur.nomor == data.trxNomor) {
          matchDataLembur = lembur;
          break;
        }
      }

      if (matchDataLembur != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailLemburPage(
              data: matchDataLembur,
              tipeLemburValue: matchDataLembur?.tipeLemburValue,
              nomorFromList: matchDataLembur?.nomor,
              alasanValue: matchDataLembur?.alasanValue,
              tanggal: matchDataLembur?.tanggal,
              keterangan: matchDataLembur?.keterangan,
              jamMulai: matchDataLembur?.jamMulai,
              jamSelesai: matchDataLembur?.jamSelesai,
              noDoc: matchDataLembur?.noDoc,
              doc: matchDataLembur?.doc,
              lemburID: matchDataLembur?.id ?? 0,
              reloadDataCallback: () {},
            ),
          ),
        );
      } else {
        print("No matching data found in the list.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _redirectToDetailPage(context);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.sp),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: warnaStatus?.withOpacity(0.4) ?? Colors.transparent,
                  ),
                  child: iconNotifikasi,
                ),
                SizedBox(
                  width: 10.sp,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            mapStatusToString(tipeNotifikasi),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            data.trxDate != null
                                ? DateFormat('dd MMM')
                                    .format(data.trxDate!.toLocal())
                                : '',
                            style: GoogleFonts.poppins(
                              color: MyColorsConst.semiDarkColor2,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        data.text ?? '',
                        style: GoogleFonts.poppins(
                          color: MyColorsConst.semiDarkColor,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.sp,
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
