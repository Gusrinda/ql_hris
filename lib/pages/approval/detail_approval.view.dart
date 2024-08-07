import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/approval/bloc/approval_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_detail_approval.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_list_approval.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart' as linkFile;

class DetailApproval extends StatefulWidget {
  static const routeName = '/DetailApprovalPage';

  const DetailApproval(
      {super.key,
      required this.dataApproval,
      required this.reloadDataCallback});
  final VoidCallback reloadDataCallback;

  final DataApproval? dataApproval;

  @override
  State<DetailApproval> createState() => _DetailApprovalState();
}

class _DetailApprovalState extends State<DetailApproval> {
  final TextEditingController catatanController = TextEditingController();

  Trx? dataTRX;

  @override
  void initState() {
    print("INI APPROVAL ID: ${widget.dataApproval!.id}");
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ApprovalBloc>().add(
          GetDetailApproval(approvalID: widget.dataApproval!.id.toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Color _getColorByTrxTable(String category) {
      switch (category) {
        case 't_spd':
          return Colors.green.shade700;
        case 't_cuti':
          return Colors.red.shade700;
        case 't_lembur':
          return Colors.blue.shade700;
        case 't_rpd':
          return Colors.amber.shade900;
        default:
          return Colors.blueGrey.shade800;
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
        case 't_rpd':
          return Icons.receipt_long;
        default:
          return Icons.new_releases_rounded;
      }
    }

    String _formatDateTime(String date) {
      if (date != null && date.isNotEmpty) {
        final customFormat = DateFormat('dd/MM/yyyy HH:mm');
        try {
          final parsedDate = customFormat.parse(date);

          final formattedTime = DateFormat.Hm().format(parsedDate);
          final dayOfWeek = DateFormat('EEEE', 'id_ID').format(parsedDate);
          final formattedDate = DateFormat.yMMMMd('id_ID').format(parsedDate);

          return 'Pukul $formattedTime, $dayOfWeek, $formattedDate';
        } catch (e) {
          print('Error parsing date: $e');
          return '';
        }
      }
      return '';
    }

    String _formatDate(String date) {
      if (date != null && date.isNotEmpty) {
        final parsedDate = DateTime.parse(date);
        final formattedDate = DateFormat.yMMMMEEEEd('id_ID').format(parsedDate);
        return formattedDate;
      }
      return '';
    }

    String convertMinutesToHours(int minutes) {
      if (minutes < 60) {
        return "$minutes Menit";
      } else {
        int hours = minutes ~/ 60;
        int remainingMinutes = minutes % 60;

        if (remainingMinutes == 0) {
          return "$hours Jam";
        } else {
          return "$hours Jam $remainingMinutes Menit";
        }
      }
    }

    String formatCurrency(double value) {
      return NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp ',
      ).format(value).replaceAll(',00', '');
    }

    return BlocListener<ApprovalBloc, ApprovalState>(
      listener: (context, state) async {
        if (state is DetailApprovalLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is DetailApprovalSuccessInBackground) {
          dataTRX = state.detailApproval;
          print("ini adalah dataTRX : ${dataTRX}");
          LoadingDialog.dismissDialog(context);
        } else if (state is SendApprovalSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
          Navigator.pop(context);
          widget.reloadDataCallback();
        } else if (state is DetailApprovalFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is DetailApprovalFailedUserExpired) {
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
        } else if (state is DetailApprovalFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
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
            child: BlocBuilder<ApprovalBloc, ApprovalState>(
              builder: (context, state) {
                return Column(
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
                            width: size.width.sp * 1 / 4,
                          ),
                          Expanded(
                            child: Text(
                              "Approval",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: _getColorByTrxTable(
                                                widget.dataApproval!.trxTable!)
                                            .withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 100.sp,
                                width: size.width,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100.sp,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: _getColorByTrxTable(widget
                                                  .dataApproval!.trxTable!)
                                              .withOpacity(0.2),
                                          shape: BoxShape.rectangle,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(9),
                                              bottomLeft: Radius.circular(9))),
                                      child: Icon(
                                        getIconByTrxTable(
                                            widget.dataApproval!.trxTable!),
                                        color: _getColorByTrxTable(
                                            widget.dataApproval!.trxTable!),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${widget.dataApproval!.trxNomor ?? ''}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "${widget.dataApproval!.creator ?? ''}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      MyColorsConst.darkColor),
                                            ),
                                            Text(
                                              "${widget.dataApproval!.trxName ?? ''}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: _getColorByTrxTable(
                                                      widget.dataApproval!
                                                          .trxTable!)),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              _formatDateTime(widget
                                                      .dataApproval?.createdAt
                                                      .toString() ??
                                                  "01/01/2024 08:00"),
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: MyColorsConst
                                                      .lightDarkColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.sp),
                              Text(
                                "Detail Dokumen",
                                style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: MyColorsConst.primaryColor),
                              ),
                              SizedBox(height: 5.sp),
                              Container(
                                // height: 500.sp,
                                constraints: BoxConstraints(),
                                width: size.width,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: MyColorsConst.formBorderColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (widget.dataApproval?.createdAt != null)
                                      buildInfoText(
                                          'Diajukan Pada',
                                          _formatDateTime(widget
                                                  .dataApproval?.createdAt
                                                  .toString() ??
                                              "01/01/2024 08:00")),

                                    if (dataTRX?.nomor != null)
                                      buildInfoText('Nomor Pengajuan',
                                          dataTRX!.nomor.toString()),

                                    if (widget.dataApproval!.creator != null)
                                      buildInfoText('Diajukan Oleh',
                                          widget.dataApproval!.creator ?? '-'),

                                    if (dataTRX?.tanggal != null)
                                      buildInfoText(
                                          'Hari, Tanggal Pengajuan',
                                          _formatDate(
                                              dataTRX!.tanggal.toString())),

                                    // SPD
                                    if (dataTRX?.jenisSpd != null)
                                      buildInfoText('Jenis SPD',
                                          dataTRX!.jenisSpd.toString()),

                                    if (dataTRX?.zonaAsal != null)
                                      buildInfoText('Zona Asal',
                                          dataTRX!.zonaAsal.toString()),

                                    if (dataTRX?.zonaTujuan != null)
                                      buildInfoText('Zona Tujuan',
                                          dataTRX!.zonaTujuan.toString()),

                                    if (dataTRX?.lokasi != null)
                                      buildInfoText('Lokasi Tujuan',
                                          dataTRX!.lokasi.toString()),

                                    if (dataTRX?.namaKary != null)
                                      buildInfoText('Nama Karyawan',
                                          dataTRX!.namaKary.toString()),

                                    if (dataTRX?.namaPic != null)
                                      buildInfoText('Nama PIC',
                                          dataTRX!.namaPic.toString()),

                                    if (dataTRX?.kegiatan != null)
                                      buildInfoText('Kegiatan',
                                          dataTRX!.kegiatan.toString()),

                                    if (dataTRX?.tglAcaraAwal != null)
                                      buildInfoText(
                                          'Hari, Tanggal Berangkat Dinas',
                                          _formatDate(dataTRX!.tglAcaraAwal
                                              .toString())),

                                    if (dataTRX?.tglAcaraAkhir != null)
                                      buildInfoText(
                                          'Hari, Tanggal Pulang Dinas',
                                          _formatDate(dataTRX!.tglAcaraAkhir
                                              .toString())),

                                    // RPD

                                    if (dataTRX?.namaDivisi != null)
                                      buildInfoText('Divisi',
                                          dataTRX!.namaDivisi.toString()),

                                    if (dataTRX?.namaDept != null)
                                      buildInfoText('Departemen',
                                          dataTRX!.namaDept.toString()),

                                    if (dataTRX?.lokasiTujuan != null)
                                      buildInfoText('Lokasi Tujuan',
                                          dataTRX!.lokasiTujuan.toString()),

                                    if (dataTRX?.pic != null)
                                      buildInfoText('Nama PIC',
                                          dataTRX!.pic.toString()),

                                    if (dataTRX?.totalBiaya != null)
                                      buildInfoText(
                                          'Total Biaya',
                                          formatCurrency(double.parse(
                                              dataTRX!.totalBiaya.toString()))),

                                    if (dataTRX?.totalBiayaSpd != null)
                                      buildInfoText(
                                          'Total Biaya Awal Dinas',
                                          formatCurrency(double.parse(dataTRX!
                                              .totalBiayaSpd
                                              .toString()))),

                                    if (dataTRX?.totalBiayaSelisih != null)
                                      buildInfoText(
                                          'Selisih Total Biaya Realisasi',
                                          formatCurrency(double.parse(dataTRX!
                                              .totalBiayaSelisih
                                              .toString()))),

                                    if (dataTRX?.tRpdDet != null) ...{
                                      Text(
                                        'Rincian Biaya',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: MyColorsConst.primaryColor,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: MyColorsConst.primaryColor
                                                  .withOpacity(0.3),
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(4),
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
                                              (states) => MyColorsConst
                                                  .primaryColor
                                                  .withOpacity(0.3),
                                            ),
                                            headingTextStyle:
                                                GoogleFonts.poppins(
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
                                                      textAlign:
                                                          TextAlign.start)),
                                              DataColumn(
                                                  label: Text('Biaya Awal',
                                                      textAlign:
                                                          TextAlign.start)),
                                              DataColumn(
                                                  label: Text('Keterangan',
                                                      textAlign:
                                                          TextAlign.start)),
                                              DataColumn(
                                                  label: Text('Biaya Realisasi',
                                                      textAlign:
                                                          TextAlign.start)),
                                              DataColumn(
                                                  label: Text(
                                                      'Catatan Realisasi',
                                                      textAlign:
                                                          TextAlign.start)),
                                            ],
                                            rows: List.generate(
                                              dataTRX?.tRpdDet?.length ?? 0,
                                              (index) {
                                                TRpdDet? trpdDet =
                                                    dataTRX?.tRpdDet?[index];

                                                return DataRow(
                                                  cells: [
                                                    DataCell(
                                                      Center(
                                                        child: Text(
                                                          '${index + 1}',
                                                          style: GoogleFonts
                                                              .poppins(
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
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(trpdDet
                                                                ?.tipeSpd ??
                                                            '-'),
                                                      ),
                                                    ),
                                                    DataCell(
                                                      Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(formatCurrency(
                                                            (trpdDet?.biaya
                                                                    ?.toDouble() ??
                                                                0.0))),
                                                      ),
                                                    ),
                                                    DataCell(
                                                      Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(trpdDet
                                                                ?.detailTransport ??
                                                            '-'),
                                                      ),
                                                    ),
                                                    DataCell(
                                                      Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          formatCurrency(
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
                                                        alignment: Alignment
                                                            .centerLeft,
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
                                      SizedBox(height: 20.sp),
                                    },

                                    // Lembur
                                    if (dataTRX?.jamMulai != null)
                                      buildInfoText('Jam Mulai',
                                          dataTRX!.jamMulai.toString()),

                                    if (dataTRX?.jamSelesai != null)
                                      buildInfoText('Jam Selesai',
                                          dataTRX!.jamSelesai.toString()),

                                    if (dataTRX?.noDoc != null)
                                      buildInfoText('Nomor Dokumen',
                                          dataTRX!.noDoc.toString()),

                                    // Cuti
                                    if (dataTRX?.tipeCuti != null)
                                      buildInfoText('Tipe Cuti',
                                          dataTRX!.tipeCuti.toString()),

                                    if (dataTRX?.alasan != null)
                                      buildInfoText('Alasan Cuti',
                                          dataTRX!.alasan.toString()),

                                    if (dataTRX?.attachment != null) ...{
                                      Text(
                                        "Surat Dokter",
                                        style: GoogleFonts.poppins(
                                          fontSize: 11.sp,
                                          color: MyColorsConst.lightDarkColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      linkFile.Link(
                                        target: linkFile.LinkTarget.self,
                                        uri: Uri.parse(
                                            '${MyGeneralConst.API_URL}/uploads/t_cuti/${dataTRX?.attachment}'),
                                        builder: (context, followLink) =>
                                            GestureDetector(
                                          onTap: followLink,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Lihat Surat Dokter",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(width: 2),
                                              Icon(
                                                Icons.image_search_rounded,
                                                size: 16.sp,
                                                color:
                                                    MyColorsConst.primaryColor,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.sp),
                                    },

                                    if (dataTRX?.dateFrom != null)
                                      buildInfoText(
                                          'Mulai Hari, Tanggal Cuti',
                                          _formatDate(
                                              dataTRX!.dateFrom.toString())),

                                    if (dataTRX?.dateTo != null)
                                      buildInfoText(
                                          'Selesai Hari, Tanggal Cuti',
                                          _formatDate(
                                              dataTRX!.dateTo.toString())),

                                    if (dataTRX?.timeFrom != null)
                                      buildInfoText('Jam Mulai',
                                          dataTRX!.timeFrom.toString()),

                                    if (dataTRX?.timeTo != null)
                                      buildInfoText('Jam Berakhir',
                                          dataTRX!.timeTo.toString()),

                                    // All
                                    if (dataTRX?.interval != null &&
                                        dataTRX?.interval != 0)
                                      buildInfoText('Durasi Hari',
                                          "${dataTRX!.interval.toString()} Hari"),

                                    if (dataTRX?.infoCuti != null) ...{
                                      Text(
                                        "Sisa Cuti Karyawan Terkait",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red.shade700,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Container(
                                        padding: const EdgeInsets.only(top: 15),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            border: Border.all(
                                                color: Colors.red.shade700
                                                    .withOpacity(0.3))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  buildInfoText('Masa Kerja',
                                                      "${dataTRX!.infoCuti?.sisaCutiMasaKerja?.toString() ?? '0'} Hari"),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 35.sp,
                                              child: VerticalDivider(
                                                thickness: 1,
                                                color: Colors.red.shade700
                                                    .withOpacity(0.3),
                                                width: 2,
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  buildInfoText('Tahunan',
                                                      "${dataTRX!.infoCuti?.sisaCutiReguler?.toString() ?? '0'} Hari"),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 35.sp,
                                              child: VerticalDivider(
                                                thickness: 1,
                                                color: Colors.red.shade700
                                                    .withOpacity(0.3),
                                                width: 2,
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  buildInfoText('P24',
                                                      "${dataTRX!.infoCuti?.sisaCutiP24?.toString() ?? '0'} Menit"),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15.sp),
                                    },

                                    if (dataTRX?.catatanKend != null)
                                      buildInfoText('Kendaraan Dinas',
                                          dataTRX!.catatanKend ?? "-"),

                                    if (dataTRX?.intervalMin != null &&
                                        dataTRX?.intervalMin != 0)
                                      buildInfoText(
                                          'Durasi Waktu',
                                          convertMinutesToHours(
                                              dataTRX!.intervalMin?.toInt() ??
                                                  0)),

                                    if (dataTRX?.keterangan != null)
                                      buildInfoText('Keterangan',
                                          dataTRX!.keterangan.toString()),

                                    if (dataTRX?.status != null)
                                      buildInfoText(
                                          'Status', dataTRX!.status.toString()),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.sp),
                              FormCatatanData(
                                hintText: 'Tuliskan Catatan Approval',
                                labelForm: 'Catatan Approval',
                                labelTag: 'Label-CatatanApprove',
                                formTag: 'Form-CatatanApprove',
                                input: catatanController.text,
                                onTap: () {},
                                controller: catatanController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Tuliskan Catatan';
                                  }
                                  return null;
                                },
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              SizedBox(height: 10.sp),
                              TextButtonCustomV1(
                                  textSize: 13.sp,
                                  text: "APPROVE",
                                  height: 50.sp,
                                  backgroundColor: Colors.green.shade700,
                                  textColor: Colors.white,
                                  onPressed: state is DetailApprovalLoading
                                      ? null
                                      : () {
                                          showDialog(
                                            context: context,
                                            builder: (_) => DialogCustom(
                                              state: DialogCustomItem.confirm,
                                              message:
                                                  "Apakah Benar Anda Menyetujui Pengajuan Ini?",
                                              durationInSec: 5,
                                              onContinue: () => context
                                                  .read<ApprovalBloc>()
                                                  .add(SendApproval(
                                                      approvalID: widget
                                                          .dataApproval!.id
                                                          .toString(),
                                                      typeApproval: "APPROVED",
                                                      note: catatanController
                                                          .text)),
                                            ),
                                          );
                                        }),
                              SizedBox(height: 10.sp),
                              if (
                                  // widget.dataApproval!.trxTable! !=
                                  //       't_lembur' &&
                                  widget.dataApproval!.trxTable! != '') ...{
                                TextButtonCustomV1(
                                    textSize: 13.sp,
                                    text: "REVISE",
                                    height: 50.sp,
                                    backgroundColor: Colors.orange.shade800,
                                    textColor: Colors.white,
                                    onPressed: state is DetailApprovalLoading
                                        ? null
                                        : () {
                                            showDialog(
                                              context: context,
                                              builder: (_) => DialogCustom(
                                                state: DialogCustomItem.confirm,
                                                message:
                                                    "Apakah Benar Anda Merevisi Pengajuan Ini?",
                                                durationInSec: 5,
                                                onContinue: () => context
                                                    .read<ApprovalBloc>()
                                                    .add(SendApproval(
                                                        approvalID: widget
                                                            .dataApproval!.id
                                                            .toString(),
                                                        typeApproval: "REVISED",
                                                        note: catatanController
                                                            .text)),
                                              ),
                                            );
                                          }),
                                SizedBox(height: 10.sp),
                              },
                              TextButtonCustomV1(
                                  textSize: 13.sp,
                                  text: "REJECT",
                                  height: 50.sp,
                                  backgroundColor: Colors.red.shade700,
                                  textColor: Colors.white,
                                  onPressed: state is DetailApprovalLoading
                                      ? null
                                      : () {
                                          showDialog(
                                            context: context,
                                            builder: (_) => DialogCustom(
                                              state: DialogCustomItem.confirm,
                                              message:
                                                  "Apakah Benar Anda Menolak Pengajuan Ini?",
                                              durationInSec: 5,
                                              onContinue: () => context
                                                  .read<ApprovalBloc>()
                                                  .add(SendApproval(
                                                      approvalID: widget
                                                          .dataApproval!.id
                                                          .toString(),
                                                      typeApproval: "REJECTED",
                                                      note: catatanController
                                                          .text)),
                                            ),
                                          );
                                        }),
                            ],
                          ),
                        )),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoText(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 11.sp,
            color: MyColorsConst.lightDarkColor,
          ),
        ),
        // SizedBox(height: 2),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            color: MyColorsConst.darkColor,
          ),
        ),
        SizedBox(height: 15.sp),
      ],
    );
  }
}
