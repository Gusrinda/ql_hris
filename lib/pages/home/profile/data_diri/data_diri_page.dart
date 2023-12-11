import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_diri.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataDiriPage extends StatefulWidget {
  static const routeName = '/DataDiriPage';
  const DataDiriPage({super.key});

  @override
  State<DataDiriPage> createState() => _DataDiriPageState();
}

class _DataDiriPageState extends State<DataDiriPage> {
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
                        "Data Diri",
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
                      SizedBox(height: 20.sp),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Divisi', 'PPC'),
                                buildInfoText('Posisi', 'Senior IT'),
                                buildInfoText('Standard Gaji', 'SG-091201392'),
                                buildInfoText(
                                    'Kode Presensi', 'Pre-112424235345'),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Departemen', 'PGA'),
                                buildInfoText('Zona', 'Zona A'),
                                buildInfoText('Constcentre', 'Constcentre 1'),
                                buildInfoText('Status', 'Active'),
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
                      SizedBox(height: 20.sp),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('NIK', '1234567899876'),
                                buildInfoText('Nama Panggilan', 'Sepuh Ucup'),
                                buildInfoText('Tempat Lahir', 'Surabaya'),
                                buildInfoText('Alamat Tinggal',
                                    'Jl. Rungkut Asri Timur No.12'),
                                buildInfoText('Kota', 'Surabaya'),
                                buildInfoText('Kode Pos', '23523'),
                                buildInfoText('No. Telepon Lainnya', '-'),
                                buildInfoText('Nama Kontak Darurat', 'Rian'),
                                buildInfoText('Agama', 'Islam'),
                                buildInfoText(
                                    'Status Pernikahan', 'Belum Kawin'),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Nama', 'Sepuh Ucup'),
                                buildInfoText('Jenis Kelamin', 'Laki-laki'),
                                buildInfoText('Tanggal Lahir', '18/10/1999'),
                                buildInfoText('Provinsi', 'Jawa Timur'),
                                buildInfoText('Kecamatan', 'Rungkut'),
                                buildInfoText('No Telepon', '08123456789'),
                                buildInfoText(
                                    'No. Telepon Darurat', '089744448765'),
                                buildInfoText('Nama Kontak Darurat', 'Kakak'),
                                buildInfoText('Golongan Darah', 'O'),
                                buildInfoText('Jumlah Tanggungan', 'K/I/2'),
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
                      SizedBox(height: 20.sp),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Jatah Cuti Reguler', '12'),
                                buildInfoText('Jatah Cuti Masa Kerja', '20'),
                                buildInfoText(
                                    'Tanggal Masuk Kerja', '22/10/2020'),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Sisa Cuti Reguler', '12'),
                                buildInfoText('Sisa Cuti Masa Kerja', '20'),
                                buildInfoText('Tanggal Berhenti Kerja', '-'),
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
                      SizedBox(height: 20.sp),
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
                          const SizedBox(width: 5),
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
                      SizedBox(height: 20.sp),
                      TextButtonCustomV1(
                        text: "Edit Data Diri",
                        height: 50.sp,
                        backgroundColor:
                            MyColorsConst.primaryColor.withOpacity(0.1),
                        textColor: MyColorsConst.primaryColor,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(EditDataDiriPage.routeName);
                        },
                      )
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
            fontSize: 12.sp,
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
