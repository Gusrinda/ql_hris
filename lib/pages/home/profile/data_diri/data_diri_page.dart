import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/bloc/biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_data_diri.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart';

class DataDiriPage extends StatefulWidget {
  static const routeName = '/DataDiriPage';

  final Biodata? bioData;

  const DataDiriPage({super.key, this.bioData});

  @override
  State<DataDiriPage> createState() => _DataDiriPageState();
}

class _DataDiriPageState extends State<DataDiriPage> {
  GetBiodataSuccess? biodata;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BiodataBloc>(context).add(GetBiodata());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<BiodataBloc, BiodataState>(
      listener: (context, state) async {
        if (state is BiodataLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is GetBiodataSuccess) {
          setState(() {
            biodata = state;
          });
          LoadingDialog.dismissDialog(context);
        } else if (state is BiodataSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          context.read<BiodataBloc>().add(GetBiodata());
        } else if (state is BiodataFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is BiodataFailedUserExpired) {
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
        } else if (state is BiodataFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MyColorsConst.primaryDarkColor,
                  MyColorsConst.primaryColor,
                ],
                stops: [0.0, 0.05],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 30.sp),
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
                        width: size.width * 1 / 3.8,
                      ),
                      Expanded(
                        child: Text(
                          "Biodata",
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
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.sp),
                        Text(
                          'Informasi',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColorsConst.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Divisi', biodata?.bioData?.div ?? '-'),
                                  buildInfoText('Posisi',
                                      biodata?.bioData?.posisi ?? '-'),
                                  buildInfoText(
                                      'Standard Gaji',
                                      biodata?.bioData?.mStandartGajiId
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText('Kode Presensi',
                                      biodata?.bioData?.kodePresensi ?? '-'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.sp),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText('Departemen',
                                      biodata?.bioData?.dept ?? '-'),
                                  buildInfoText(
                                      'Zona', biodata?.bioData?.zona ?? '-'),
                                  buildInfoText(
                                      'Constcentre',
                                      biodata?.bioData?.costcontreId
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Status',
                                      biodata?.bioData?.isActive == true
                                          ? "Active"
                                          : "Non-Active"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Text(
                          'Data Diri',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColorsConst.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'NIK', biodata?.bioData?.nik ?? '-'),
                                  buildInfoText('Nama Panggilan',
                                      biodata?.bioData?.namaPanggilan ?? '-'),
                                  buildInfoText('Tempat Lahir',
                                      biodata?.bioData?.tempatLahir ?? '-'),
                                  buildInfoText('Alamat Tinggal',
                                      biodata?.bioData?.alamatDomisili ?? '-'),
                                  buildInfoText(
                                      'Kota', biodata?.bioData?.kota ?? '-'),
                                  buildInfoText('Kode Pos',
                                      biodata?.bioData?.kodePos ?? '-'),
                                  buildInfoText('No. Telepon Lainnya',
                                      biodata?.bioData?.noTlpLainnya ?? '-'),
                                  buildInfoText(
                                      'Nama Kontak Darurat',
                                      biodata?.bioData?.namaKontakDarurat ??
                                          '-'),
                                  buildInfoText(
                                      'Agama', biodata?.bioData?.agama ?? '-'),
                                  buildInfoText(
                                      'Status Pernikahan',
                                      biodata?.bioData?.statusNikahId
                                              .toString() ??
                                          '-'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.sp),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText('Nama',
                                      biodata?.bioData?.namaLengkap ?? '-'),
                                  buildInfoText('Jenis Kelamin',
                                      biodata?.bioData?.jk ?? '-'),
                                  buildInfoText(
                                    'Tanggal Lahir',
                                    biodata?.bioData?.tglLahir != null
                                        ? DateFormat('dd MMMM yyyy')
                                            .format(biodata!.bioData!.tglLahir!)
                                        : '-',
                                  ),
                                  buildInfoText('Provinsi',
                                      biodata?.bioData?.provinsi ?? '-'),
                                  buildInfoText('Kecamatan',
                                      biodata?.bioData?.kecamatan ?? '-'),
                                  buildInfoText('No Telepon',
                                      biodata?.bioData?.noTlp ?? '-'),
                                  buildInfoText('No. Telepon Darurat',
                                      biodata?.bioData?.noDarurat ?? '-'),
                                  buildInfoText('Hubungan Dengan Kerabat',
                                      biodata?.bioData?.hubDgnKaryawan ?? '-'),
                                  buildInfoText('Golongan Darah',
                                      biodata?.bioData?.golDarah ?? '-'),
                                  buildInfoText('Jumlah Tanggungan',
                                      biodata?.bioData?.tanggungan ?? '-'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Text(
                          'Info Lain',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColorsConst.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Jatah Cuti Reguler',
                                      biodata?.bioData?.cutiJatahReguler
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Jatah Cuti Masa Kerja',
                                      biodata?.bioData?.cutiPanjang
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Tanggal Masuk Kerja',
                                      biodata?.bioData?.tglMasuk != null
                                          ? DateFormat('dd MMMM yyyy').format(
                                              biodata!.bioData!.tglMasuk!)
                                          : '-'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.sp),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Sisa Cuti Reguler',
                                      biodata?.bioData?.cutiSisaReguler
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Sisa Cuti Masa Kerja',
                                      biodata?.bioData?.cutiSisaPanjang
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Tanggal Berhenti Kerja',
                                      biodata?.bioData?.tglBerhenti != null
                                          ? DateFormat('dd MMMM yyyy').format(
                                              biodata?.bioData?.tglBerhenti!)
                                          : '-'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Text(
                          'Berkas',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColorsConst.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Foto Karyawan',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Link(
                                    target: LinkTarget.self,
                                    uri: Uri.parse(
                                        '${biodata?.bioData?.pasFoto ?? '-'}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Text(
                                        "foto.pdf",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: MyColorsConst.primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.sp),
                                  buildInfoText(
                                      'No. KTP',
                                      biodata?.bioData?.ktpNo?.toString() ??
                                          '-'),
                                  Text(
                                    'Foto Kartu Keluarga',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Link(
                                    target: LinkTarget.self,
                                    uri: Uri.parse(
                                        '${biodata?.bioData?.ktpFoto ?? '-'}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Text(
                                        "KK.pdf",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: MyColorsConst.primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.sp),
                                  Text(
                                    'Foto NPWP',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Link(
                                    target: LinkTarget.self,
                                    uri: Uri.parse(
                                        '${biodata?.bioData?.npwpFoto ?? '-'}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Text(
                                        "NPWP.pdf",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: MyColorsConst.primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.sp),
                                  buildInfoText(
                                      'Tanggal Berlaku NPWP',
                                      biodata?.bioData?.npwpTglBerlaku != null
                                          ? DateFormat('dd MMMM yyyy').format(
                                              biodata!.bioData!.npwpTglBerlaku!)
                                          : '-'),
                                  buildInfoText(
                                      'No. BPJS',
                                      biodata?.bioData?.bpjsNo?.toString() ??
                                          '-'),
                                  Text(
                                    'Berkas Pendukung Lainnya',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  if (biodata
                                          ?.bioData?.berkasLain?.isNotEmpty ??
                                      false)
                                    Link(
                                      target: LinkTarget.self,
                                      uri: Uri.parse(
                                          '${biodata?.bioData?.berkasLain}'),
                                      builder: (context, followLink) =>
                                          GestureDetector(
                                        onTap: followLink,
                                        child: Text(
                                          "Doc.pdf",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: MyColorsConst.primaryColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    )
                                  else
                                    Text(
                                      "-",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  SizedBox(height: 15.sp),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.sp),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Foto KTP',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Link(
                                    target: LinkTarget.self,
                                    uri: Uri.parse(
                                        '${biodata?.bioData?.ktpFoto ?? '-'}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Text(
                                        "KTP.pdf",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: MyColorsConst.primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.sp),
                                  buildInfoText(
                                      'Alamat Sesuai KTP',
                                      biodata?.bioData?.alamatAsli
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'No. Kartu Keluarga',
                                      biodata?.bioData?.kkNo?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'No. NPWP',
                                      biodata?.bioData?.npwpNo?.toString() ??
                                          '-'),
                                  Text(
                                    'Foto BPJS',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Link(
                                    target: LinkTarget.self,
                                    uri: Uri.parse(
                                        '${biodata?.bioData?.bpjsFoto ?? '-'}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Text(
                                        "BPJS.pdf",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: MyColorsConst.primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.sp),
                                  buildInfoText(
                                      'Tipe BPJS',
                                      biodata?.bioData?.bpjsTipeId
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Keterangan',
                                      biodata?.bioData?.descFile?.toString() ??
                                          '-'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Text(
                          'Ukuran',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColorsConst.primaryColor,
                          ),
                        ),
                        SizedBox(height: 20.sp),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Ukuran Baju',
                                      biodata?.bioData?.ukBaju?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Ukuran Sepatu',
                                      biodata?.bioData?.ukSepatu?.toString() ??
                                          '-'),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Ukuran Celana',
                                      biodata?.bioData?.ukCelana?.toString() ??
                                          '-'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Text(
                          'Pembayaran',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColorsConst.primaryColor,
                          ),
                        ),
                        SizedBox(height: 20.sp),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Periode Gaji',
                                      biodata?.bioData?.periodeGaji
                                              ?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Metode Pembayaran',
                                      biodata?.bioData?.metode?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Nomor Rekening',
                                      biodata?.bioData?.noRek?.toString() ??
                                          '-'),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildInfoText(
                                      'Tipe Pembayaran',
                                      biodata?.bioData?.tipe?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Nama Bank',
                                      biodata?.bioData?.bank?.toString() ??
                                          '-'),
                                  buildInfoText(
                                      'Atas Nama',
                                      biodata?.bioData?.atasNamaRek
                                              ?.toString() ??
                                          '-'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.sp),
                        TextButtonCustomV1(
                          text: "Edit Data Diri",
                          height: 50.sp,
                          backgroundColor:
                              MyColorsConst.primaryColor.withOpacity(0.1),
                          textColor: MyColorsConst.primaryColor,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              EditDataDiriPage.routeName,
                              arguments:
                                  biodata != null ? biodata!.bioData : null,
                            );
                          },
                        ),
                        SizedBox(height: 10.sp),
                      ],
                    ),
                  ),
                )
              ],
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
            fontSize: 10.sp,
            color: MyColorsConst.lightDarkColor,
          ),
        ),
        // SizedBox(height: 2),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: MyColorsConst.darkColor,
          ),
        ),
        SizedBox(height: 15.sp),
      ],
    );
  }
}
