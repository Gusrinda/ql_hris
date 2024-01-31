// ignore_for_file: prefer_is_empty

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_realisasi_dinas_bloc/add_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_realisasi_dinas_bloc/detail_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/edit_realisasi_dinas.dart';
import 'package:sj_presensi_mobile/services/model/dinas/detail_realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/realisasi_dinas_model.dart';
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
  "POSTED": {
    "name": "Posted",
  },
};

class DetailRealisasiDinas extends StatefulWidget {
  static const routeName = '/DetailRealisasiDinas';
  const DetailRealisasiDinas(
      {super.key, required this.reloadDataCallback, this.dataRealisasi});
  final VoidCallback reloadDataCallback;
  final DataRealisasiDinas? dataRealisasi;

  @override
  State<DetailRealisasiDinas> createState() => _DetailRealisasiDinasState();
}

class _DetailRealisasiDinasState extends State<DetailRealisasiDinas> {
  DetailRealisasiDinasSuccess? dataDetailrealisasiDinas;
  DetailSPDSuceess? dataDetailSPD;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<DetailRealisasiDinasBloc>()
          .add(GetDetailRealisasiListDinas(id: widget.dataRealisasi?.id ?? 1));
      context
          .read<DetailRealisasiDinasBloc>()
          .add(GetDetailSPD(spdID: widget.dataRealisasi?.tSpdId ?? 1));
    });
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
          return Colors.grey.shade600; // warna default
      }
    } else {
      return const Color(0xFF0068D4); // warna default
    }
  }

  String formatRupiah(double? value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
    ).format(value ?? 0.0).replaceAll(",00", "");
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<DetailRealisasiDinasBloc, DetailRealisasiDinasState>(
      listener: (context, state) async {
        if (state is DetailRealisasiDinasLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is DetailRealisasiDinasSuccess) {
          LoadingDialog.dismissDialog(context);
          setState(() {
            dataDetailrealisasiDinas = state;
          });
        } else if (state is DetailSPDSuceess) {
          LoadingDialog.dismissDialog(context);
          setState(() {
            dataDetailSPD = state;
          });
        } else if (state is DetailRealisasiDinasFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is DetailRealisasiDinasFailedUserExpired) {
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
        } else if (state is DetailRealisasiDinasFailedInBackground) {
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
                      width: size.width * 0.5 / 3.5,
                    ),
                    Expanded(
                      child: Text(
                        "Detail Realisasi Dinas",
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
                child: BlocBuilder<DetailRealisasiDinasBloc,
                    DetailRealisasiDinasState>(
                  builder: (context, state) {
                    String currentStatus = dataDetailrealisasiDinas
                            ?.dataDetailrealisasiDinas?.status ??
                        'Draft';
                    Color currentColor = getColorFromStatus(currentStatus);
                    return ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.sp, vertical: 20.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildText(
                                            'Nomor RPD',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.nomor ??
                                                '-'),
                                        _buildText(
                                            'Template SPD',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdNomor ??
                                                '-'),
                                        if (dataDetailSPD
                                                ?.dataDetailSPD.mDirNama !=
                                            null)
                                          _buildText(
                                              'Direktorat',
                                              dataDetailSPD?.dataDetailSPD
                                                      .mDirNama ??
                                                  "-"),
                                        _buildText(
                                            'Divisi',
                                            dataDetailSPD?.dataDetailSPD
                                                    .mDivisiNama ??
                                                "-"),
                                        _buildText(
                                            'Departemen',
                                            dataDetailSPD
                                                    ?.dataDetailSPD.mDeptNama ??
                                                "-"),
                                        _buildText(
                                            'Posisi',
                                            dataDetailSPD?.dataDetailSPD
                                                    .mPosisiDescKerja ??
                                                "-"),
                                        _buildText(
                                            'Zona Awal',
                                            dataDetailSPD?.dataDetailSPD
                                                    .mZonaAsalNama ??
                                                "-"),
                                        _buildText(
                                            'Zona Tujuan',
                                            dataDetailSPD?.dataDetailSPD
                                                    .mZonaTujuanNama ??
                                                "-"),
                                        _buildText(
                                            'Kegiatan',
                                            dataDetailSPD?.dataDetailSPD
                                                    .jenisSpdValue ??
                                                "-"),
                                        _buildText(
                                            'Keterangan Realisasi',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.keterangan ??
                                                "-"),
                                        Text(
                                          'Status',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          mapStatusToString(
                                              dataDetailrealisasiDinas
                                                      ?.dataDetailrealisasiDinas
                                                      ?.status ??
                                                  'Draft'),
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: currentColor,
                                          ),
                                        ),
                                        SizedBox(height: 10.sp),
                                        _buildText(
                                            'Catatan Approval',
                                            widget.dataRealisasi
                                                    ?.approvalNote ??
                                                "-"),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildText(
                                            'Dibuat Pada',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.createdAt ??
                                                '-'),
                                        _buildText(
                                            'PIC',
                                            dataDetailSPD
                                                    ?.dataDetailSPD.picName ??
                                                "-"),
                                        _buildText(
                                            'Tanggal Pengajuan',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdTanggal ??
                                                '-'),
                                        _buildText(
                                            'Tanggal Berangkat Dinas',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdTglAcaraAwal ??
                                                '-'),
                                        _buildText(
                                            'Tanggal Pulang Dinas',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdTglAcaraAkhir ??
                                                '-'),
                                        _buildText('Durasi Hari',
                                            "${dataDetailSPD?.dataDetailSPD.interval.toString() ?? '-'} Hari"),
                                        _buildText(
                                            'Lokasi Tujuan',
                                            dataDetailSPD?.dataDetailSPD
                                                    .mLokasiTujuanNama ??
                                                "-"),
                                        _buildText(
                                            'Kendaraan Dinas',
                                            dataDetailSPD?.dataDetailSPD
                                                        .isKendDinas ==
                                                    true
                                                ? "Iya"
                                                : "Tidak"),
                                        if (dataDetailSPD
                                                ?.dataDetailSPD.catatanKend !=
                                            null)
                                          _buildText(
                                              'Nama Kendaraan',
                                              dataDetailSPD?.dataDetailSPD
                                                      .catatanKend ??
                                                  "-"),
                                        _buildText(
                                            'Total Biaya SPD',
                                            formatRupiah(double.tryParse(
                                                dataDetailrealisasiDinas
                                                        ?.dataDetailrealisasiDinas
                                                        ?.totalBiayaSpd
                                                        .toString() ??
                                                    "0.0"))),
                                        _buildText(
                                            'Selisih Total Biaya Realisasi',
                                            formatRupiah(double.tryParse(
                                                dataDetailrealisasiDinas
                                                        ?.dataDetailrealisasiDinas
                                                        ?.totalBiayaSelisih
                                                        .toString() ??
                                                    "0.0"))),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              if (dataDetailrealisasiDinas
                                      ?.dataDetailrealisasiDinas
                                      ?.tRpdDet
                                      ?.length !=
                                  0) ...{
                                SizedBox(height: 20.sp),
                                Text(
                                  'Rincian Biaya',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: MyColorsConst.darkColor,
                                  ),
                                ),
                                SizedBox(height: 5.sp),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: MyColorsConst.primaryColor
                                            .withOpacity(0.3),
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                      headingRowHeight: 40.sp,
                                      // ignore: deprecated_member_use
                                      dataRowHeight: 40.sp,
                                      dividerThickness: 1,
                                      headingRowColor:
                                          MaterialStateColor.resolveWith(
                                        (states) => MyColorsConst.primaryColor
                                            .withOpacity(0.3),
                                      ),
                                      headingTextStyle: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: MyColorsConst.darkColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      dataTextStyle: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: MyColorsConst.darkColor,
                                      ),
                                      columns: const [
                                        DataColumn(
                                            label: Text(
                                          'No',
                                          textAlign: TextAlign.start,
                                        )),
                                        DataColumn(
                                            label: Text('Tipe',
                                                textAlign: TextAlign.start)),
                                        DataColumn(
                                            label: Text('Biaya Awal',
                                                textAlign: TextAlign.start)),
                                        DataColumn(
                                            label: Text('Keterangan',
                                                textAlign: TextAlign.start)),
                                        DataColumn(
                                            label: Text('Biaya Realisasi',
                                                textAlign: TextAlign.start)),
                                        DataColumn(
                                            label: Text('Catatan Realisasi',
                                                textAlign: TextAlign.start)),
                                      ],
                                      rows: List.generate(
                                        dataDetailrealisasiDinas
                                                ?.dataDetailrealisasiDinas
                                                ?.tRpdDet
                                                ?.length ??
                                            0,
                                        (index) {
                                          TRpdDet? trpdDet =
                                              dataDetailrealisasiDinas
                                                  ?.dataDetailrealisasiDinas
                                                  ?.tRpdDet?[index];

                                          return DataRow(
                                            cells: [
                                              DataCell(
                                                Center(
                                                  child: Text(
                                                    '${index + 1}',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      color: MyColorsConst
                                                          .darkColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataCell(
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      trpdDet?.tipeSpdValue ??
                                                          '-'),
                                                ),
                                              ),
                                              DataCell(
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(formatRupiah(
                                                      (trpdDet?.biaya
                                                              ?.toDouble() ??
                                                          0.0))),
                                                ),
                                              ),
                                              DataCell(
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(trpdDet
                                                          ?.detailTransport ??
                                                      '-'),
                                                ),
                                              ),
                                              DataCell(
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    formatRupiah(
                                                      double.tryParse(trpdDet!
                                                              .biayaRealisasi
                                                              .toString()) ??
                                                          0.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataCell(
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(trpdDet
                                                          ?.catatanRealisasi ??
                                                      '-'),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              },
                              if (currentStatus == "REVISED") ...{
                                SizedBox(height: 20.sp),
                                TextButtonCustomV1(
                                  text: "Revisi Realisasi Dinas",
                                  height: 50,
                                  textSize: 12,
                                  backgroundColor:
                                      Colors.orange.shade700.withOpacity(0.2),
                                  textColor: Colors.orange.shade700,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MultiBlocProvider(
                                          providers: [
                                            BlocProvider(
                                                create: (context) =>
                                                    AddRealisasiDinasBloc()
                                                      ..add(
                                                          OnSelectDinasApproved())
                                                      ..add(OnSelectTipe())
                                                // ..add(GetDetailEditRealisasiDinas(
                                                //     id: widget.dataRealisasi
                                                //             ?.id ??
                                                //         1)),
                                                ),
                                          ],
                                          child: EditRealisasiDinasPage(
                                            detailSPD:
                                                dataDetailSPD?.dataDetailSPD,
                                            dataRealisasi: widget.dataRealisasi,
                                            reloadDataCallback:
                                                widget.reloadDataCallback,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              },
                              SizedBox(height: 30.sp)
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 10.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15.sp),
      ],
    );
  }
}
