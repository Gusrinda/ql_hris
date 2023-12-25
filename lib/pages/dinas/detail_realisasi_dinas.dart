import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_realisasi_dinas_bloc/detail_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/detail_realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DetailRealisasiDinas extends StatefulWidget {
  static const routeName = '/DetailRealisasiDinas';
  const DetailRealisasiDinas({super.key, this.dataRealisasi});
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
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
                  child: BlocBuilder<DetailRealisasiDinasBloc,
                      DetailRealisasiDinasState>(
                    builder: (context, state) {
                      return ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.sp),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildText(
                                            'Template Spd',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdNomor ??
                                                '-'),
                                        _buildText(
                                            'Direktorat',
                                            dataDetailSPD
                                                    ?.dataDetailSPD.mDirNama ??
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
                                            'Kegiatan',
                                            dataDetailSPD
                                                    ?.dataDetailSPD.kegiatan ??
                                                "-"),
                                        _buildText(
                                            'Keterangan',
                                            dataDetailSPD?.dataDetailSPD
                                                    .keterangan ??
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
                                          dataDetailrealisasiDinas
                                                  ?.dataDetailrealisasiDinas
                                                  ?.status ??
                                              '-',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: MyColorsConst.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildText(
                                            'Tanggal',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdTanggal ??
                                                '-'),
                                        _buildText(
                                            'Tanggal Acara Awal',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdTglAcaraAwal ??
                                                '-'),
                                        _buildText(
                                            'Tanggal Acara Akhir',
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tSpdTglAcaraAkhir ??
                                                '-'),
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
                                            'Lokasi Tujuan',
                                            dataDetailSPD?.dataDetailSPD
                                                    .mLokasiTujuanNama ??
                                                "-"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.sp),
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
                                      color: MyColorsConst.darkColor, width: 2),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                    headingRowColor:
                                        MaterialStateColor.resolveWith(
                                      (states) =>
                                          MyColorsConst.primaryDarkColor,
                                    ),
                                    headingTextStyle: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    dataTextStyle: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                    columns: const [
                                      DataColumn(label: Text('No')),
                                      DataColumn(label: Text('Tipe')),
                                      DataColumn(label: Text('Biaya')),
                                      DataColumn(label: Text('Keterangan')),
                                      DataColumn(
                                          label: Text('Biaya Realisasi')),
                                      DataColumn(
                                          label: Text('Catatan Realisasi')),
                                    ],
                                    rows: List.generate(
                                      dataDetailrealisasiDinas
                                              ?.dataDetailrealisasiDinas
                                              ?.tRpdDet
                                              ?.length ??
                                          0,
                                      (index) {
                                        TRpdDet trpdDet =
                                            dataDetailrealisasiDinas
                                                    ?.dataDetailrealisasiDinas
                                                    ?.tRpdDet?[index] ??
                                                TRpdDet();

                                        return DataRow(
                                          cells: [
                                            DataCell(
                                              Center(
                                                child: Text(
                                                  'No ${index + 1}',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataCell(
                                              Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    trpdDet.tipeSpdValue ??
                                                        '-'),
                                              ),
                                            ),
                                            DataCell(
                                              Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "${trpdDet.biaya ?? '-'}"),
                                              ),
                                            ),
                                            DataCell(
                                              Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    trpdDet.tSpdDetKeterangan ??
                                                        '-'),
                                              ),
                                            ),
                                            DataCell(
                                              Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "${trpdDet.biayaRealisasi ?? '-'}"),
                                              ),
                                            ),
                                            DataCell(
                                              Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    trpdDet.catatanRealisasi ??
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
                            ],
                          ),
                        ],
                      );
                    },
                  ),
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
