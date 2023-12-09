import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
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
                Color(0xFF5EB5EE),
                Color(0xFF6F7BF7),
              ],
              stops: [0.0, 0.05],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(5.0),
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
                        style: TextStyle(
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Informasi',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
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
                          Expanded(
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
                      const SizedBox(height: 20),
                      const Text(
                        'Data Diri',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
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
                          Expanded(
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
                      const SizedBox(height: 20),
                      const Text(
                        'Info Lain',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
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
                          Expanded(
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
                      const SizedBox(height: 20),
                      const Text(
                        'Berkas',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
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
                          Expanded(
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
                      const SizedBox(height: 20),
                      const Text(
                        'Ukuran',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Ukuran Baju', 'XL'),
                                buildInfoText('Ukuran Sepatu', '42'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Ukuran Celana', '150'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Pembayaran',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInfoText('Periode Gaji', 'Bulanan'),
                                buildInfoText('Metode Pembayaran', 'Bulanan'),
                                buildInfoText('Nomor Rekening', '123456'),
                              ],
                            ),
                          ),
                          Expanded(
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
                      const SizedBox(height: 20),
                      TextButtonCustomV1(
                        text: "Edit Data Diri",
                        backgroundColor:
                            MyColorsConst.primaryColor.withOpacity(0.1),
                        textColor: MyColorsConst.primaryColor,
                        onPressed: () {},
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
          style: const TextStyle(
            fontSize: 12,
            color: MyColorsConst.lightDarkColor,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
