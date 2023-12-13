import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/coba_coba/add_data_diri.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_data_diri.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataDiriPage extends StatelessWidget {
  static const routeName = '/DataDiriPage';

  final Biodata bioData;

  const DataDiriPage({super.key, required this.bioData});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
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
                                buildInfoText('Divisi', bioData.div ?? '-'),
                                buildInfoText('Posisi', bioData.posisi ?? '-'),
                                buildInfoText('Standard Gaji',
                                    bioData.mStandartGajiId?.toString() ?? '-'),
                                buildInfoText('Kode Presensi',
                                    bioData.kodePresensi ?? '-'),
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
                                    'Departemen', bioData.dept ?? '-'),
                                buildInfoText('Zona', bioData.zona ?? '-'),
                                buildInfoText('Constcentre',
                                    bioData.costcontreId?.toString() ?? '-'),
                                buildInfoText(
                                    'Status',
                                    bioData.isActive == true
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
                                buildInfoText('NIK', bioData.nik ?? '-'),
                                buildInfoText('Nama Panggilan',
                                    bioData.namaPanggilan ?? '-'),
                                buildInfoText(
                                    'Tempat Lahir', bioData.tempatLahir ?? '-'),
                                buildInfoText('Alamat Tinggal',
                                    bioData.alamatAsli ?? '-'),
                                buildInfoText('Kota', bioData.kota ?? '-'),
                                buildInfoText(
                                    'Kode Pos', bioData.kodePos ?? '-'),
                                buildInfoText('No. Telepon Lainnya',
                                    bioData.noTlpLainnya ?? '-'),
                                buildInfoText('Nama Kontak Darurat',
                                    bioData.namaKontakDarurat ?? '-'),
                                buildInfoText('Agama', bioData.agama ?? '-'),
                                buildInfoText('Status Pernikahan',
                                    bioData.statusNikahId.toString() ?? '-'),
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
                                    'Nama', bioData.namaLengkap ?? '-'),
                                buildInfoText(
                                    'Jenis Kelamin', bioData.jk ?? '-'),
                                buildInfoText(
                                  'Tanggal Lahir',
                                  bioData.tglLahir != null
                                      ? DateFormat('dd MMMM yyyy')
                                          .format(bioData.tglLahir!)
                                      : '-',
                                ),
                                buildInfoText(
                                    'Provinsi', bioData.provinsi ?? '-'),
                                buildInfoText(
                                    'Kecamatan', bioData.kecamatan ?? '-'),
                                buildInfoText(
                                    'No Telepon', bioData.noTlp ?? '-'),
                                buildInfoText('No. Telepon Darurat',
                                    bioData.noDarurat ?? '-'),
                                buildInfoText('Hubungan Dengan Kerabat',
                                    bioData.hubDgnKaryawan ?? '-'),
                                buildInfoText(
                                    'Golongan Darah', bioData.golDarah ?? '-'),
                                buildInfoText('Jumlah Tanggungan',
                                    bioData.tanggungan ?? '-'),
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
                                    bioData.cutiJatahReguler?.toString() ??
                                        '-'),
                                buildInfoText('Jatah Cuti Masa Kerja',
                                    bioData.cutiPanjang?.toString() ?? '-'),
                                buildInfoText(
                                    'Tanggal Masuk Kerja',
                                    bioData.tglMasuk != null
                                        ? DateFormat('dd MMMM yyyy')
                                            .format(bioData.tglMasuk!)
                                        : '-'),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Sisa Cuti Reguler',
                                    bioData.cutiSisaReguler?.toString() ?? '-'),
                                buildInfoText('Sisa Cuti Masa Kerja',
                                    bioData.cutiSisaPanjang?.toString() ?? '-'),
                                buildInfoText(
                                    'Tanggal Berhenti Kerja',
                                    bioData.tglBerhenti != null
                                        ? DateFormat('dd MMMM yyyy')
                                            .format(bioData.tglBerhenti!)
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
                                buildInfoText('Foto Karyawan', 'foto.pdf'),
                                buildInfoText('No. KTP', '2090927401'),
                                buildInfoText('Foto Kartu Keluarga', 'KK.pdf'),
                                buildInfoText('Foto NPWP', 'NPWP.pdf'),
                                buildInfoText(
                                    'Tanggal Berlaku NPWP', '25/11/2022'),
                                buildInfoText('No. BPJS', '9328523'),
                                buildInfoText('Berkas Pendukung Lainnya', '-'),
                              ],
                            ),
                          ),
                          SizedBox(width: 20.sp),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Foto KTP', 'KTP.pdf'),
                                buildInfoText(
                                    'Alamat Sesuai KTP', 'J;. Rungkut'),
                                buildInfoText(
                                    'No. Kartu Keluarga', '0294709274'),
                                buildInfoText('No. NPWP', '0192'),
                                buildInfoText('Foto BPJS', 'BPJS.pdf'),
                                buildInfoText('Tipe BPJS', 'Kelas 2'),
                                buildInfoText('Keterangan', '-'),
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
                                buildInfoText('Ukuran Baju', 'XL'),
                                buildInfoText('Ukuran Sepatu', '42'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Ukuran Celana', '150'),
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
                                buildInfoText('Periode Gaji', 'Bulanan'),
                                buildInfoText('Metode Pembayaran', 'Bulanan'),
                                buildInfoText('Nomor Rekening', '123456'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Tipe Pembayaran', '150'),
                                buildInfoText('Nama Bank', 'BRI'),
                                buildInfoText('Atas Nama', 'Sepuh Ucup'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 20.sp),
                      // TextButtonCustomV1(
                      //   text: "Test Scroll Stepper",
                      //   height: 50.sp,
                      //   backgroundColor:
                      //       MyColorsConst.primaryColor.withOpacity(0.1),
                      //   textColor: MyColorsConst.primaryColor,
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => StepperPage(),
                      //       ),
                      //     );
                      //   },
                      // ),
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
                            arguments: bioData,
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
