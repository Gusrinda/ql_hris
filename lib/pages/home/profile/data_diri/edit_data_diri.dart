import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_add_data.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/controller/diri_controller.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditDataDiriPage extends StatefulWidget {
  static const routeName = '/EditDataDiriPage';
  final Biodata bioData;

  EditDataDiriPage({super.key, required this.bioData});

  @override
  State<EditDataDiriPage> createState() => _EditDataDiriPageState();
}

class _EditDataDiriPageState extends State<EditDataDiriPage> {
  late DataDiriControllers controllers;

  @override
  void initState() {
    super.initState();
    controllers = DataDiriControllers(bioData: widget.bioData);
  }

  List<String> buttonTexts = [
    'Selanjutnya',
    'Selanjutnya',
    'Selanjutnya',
    'Selanjutnya',
    'Selanjutnya',
    'Kirim'
  ];
  int currentStep = 0;

  continueStep() {
    if (currentStep < 5) {
      setState(() {
        currentStep = currentStep + 1;
      });
    } else {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => DataDiriPage()),
      // );
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextButtonCustomV1(
            text: buttonTexts[currentStep],
            height: 50,
            backgroundColor: MyColorsConst.primaryColor.withOpacity(0.1),
            textColor: MyColorsConst.primaryColor,
            onPressed: details.onStepContinue,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        if (currentStep > 0) {
          setState(() {
            currentStep -= 1;
          });
          return false;
        }
        return true;
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
              SizedBox(height: 30.sp),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18.sp,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    Text(
                      "Data Diri",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 40.sp),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(),
                  width: size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Stepper(
                    elevation: 0,
                    controlsBuilder: (context, details) =>
                        controlBuilders(context, details),
                    type: StepperType.horizontal,
                    onStepTapped: onStepTapped,
                    onStepContinue: continueStep,
                    onStepCancel: cancelStep,
                    currentStep: currentStep,
                    steps: [
                      Step(
                        label: Text(
                          'Informasi',
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.w600),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Divisi',
                              labelForm: 'Divisi',
                              labelTag: 'Label-DivisiDiri',
                              formTag: 'Form-DivisiDiri',
                              valueController:
                                  controllers.valueDivisiController,
                              idController: controllers.idDivisiController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Departemen',
                              labelForm: 'Departemen',
                              labelTag: 'Label-DepartemenDiri',
                              formTag: 'Form-DepartemenDiri',
                              valueController:
                                  controllers.valueDepartemenController,
                              idController: controllers.idDepartemenController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Posisi',
                              labelForm: 'Posisi',
                              labelTag: 'Label-PosisiDiri',
                              formTag: 'Form-PosisiDiri',
                              valueController:
                                  controllers.valuePosisiController,
                              idController: controllers.idPosisiController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Zona',
                              labelForm: 'Zona',
                              labelTag: 'Label-ZonaDiri',
                              formTag: 'Form-ZonaDiri',
                              valueController: controllers.valueZonaController,
                              idController: controllers.idZonaController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Standard Gaji',
                              labelForm: 'Standard Gaji',
                              labelTag: 'Label-StandardGaji',
                              formTag: 'Form-StandardGaji',
                              valueController:
                                  controllers.valueStandardGajiController,
                              idController:
                                  controllers.idStandardGajiController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Costcentre',
                              labelForm: 'Costcentre',
                              labelTag: 'Label-Costcentre',
                              formTag: 'Form-Costcentre',
                              valueController:
                                  controllers.valueCostcentreController,
                              idController: controllers.idCostcentreController,
                            ),
                            FormTemplateSpd(
                              onTap: () {},
                              hintText: 'Pilih Kode Presensi',
                              labelForm: 'Kode Presensi',
                              labelTag: 'Label-KodePresensi',
                              formTag: 'Form-KodePresensi',
                              valueController:
                                  controllers.valueKodePresensiController,
                              idController: controllers.idKodePresensiController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Status',
                              labelForm: 'Status',
                              labelTag: 'Label-StatusDiri',
                              formTag: 'Form-StatusDiri',
                              valueController:
                                  controllers.valueStatusController,
                              idController: controllers.idStatusController,
                            ),
                          ],
                        ),
                        isActive: currentStep >= 0,
                        state: currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        label: Text(
                          'Data Diri',
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.w600),
                        ),
                        title: SizedBox.shrink(),
                        // title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormInputData(
                              hintText: 'Tuliskan NIK',
                              labelForm: 'NIK',
                              labelTag: 'Label-NIK',
                              formTag: 'Form-NIK',
                              controller: controllers.nikController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Nama',
                              labelForm: 'Nama',
                              labelTag: 'Label-NamaDiri',
                              formTag: 'Form-NamaDiri',
                              controller: controllers.namaController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Nama Panggilan',
                              labelForm: 'Nama Panggilan',
                              labelTag: 'Label-NamaPanggilan',
                              formTag: 'Form-NamaPanggilan',
                              controller: controllers.namaPanggilanController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Jenis Kelamin',
                              labelForm: 'Jenis Kelamin',
                              labelTag: 'Label-JenisKelamin',
                              formTag: 'Form-JenisKelamin',
                              valueController:
                                  controllers.jenisKelaminController,
                              idController: controllers.jenisKelaminController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tempat Lahir',
                              labelForm: 'Tempat Lahir',
                              labelTag: 'Label-TempatLahir',
                              formTag: 'Form-TempatLahir',
                              valueController:
                                  controllers.valueTempatLahirController,
                              idController: controllers.idTempatLahirController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tanggal Lahir',
                              labelForm: 'Tanggal Lahir',
                              labelTag: 'Label-TanggalLahir',
                              formTag: 'Form-TanggalLahir',
                              valueController:
                                  controllers.tanggalLahirController,
                              idController: controllers.tanggalLahirController,
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Alamat Tinggal',
                              labelForm: 'Alamat Tinggal',
                              labelTag: 'Label-AlamatTinggal',
                              formTag: 'Form-AlamatTinggal',
                              controller: controllers.alamatTinggalController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Provinsi',
                              labelForm: 'Provinsi',
                              labelTag: 'Label-Provinsi',
                              formTag: 'Form-Provinsi',
                              valueController:
                                  controllers.valueProvinsiController,
                              idController: controllers.idProvinsiController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Kota',
                              labelForm: 'Kota',
                              labelTag: 'Label-Kota',
                              formTag: 'Form-Kota',
                              valueController: controllers.valueKotaController,
                              idController: controllers.idKotaController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Kecamatan',
                              labelForm: 'Kecamatan',
                              labelTag: 'Label-Kecamatan',
                              formTag: 'Form-Kecamatan',
                              valueController:
                                  controllers.valueKecamatanController,
                              idController: controllers.idKecamatanController,
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Kode Pos',
                              labelForm: 'Kode Pos',
                              labelTag: 'Label-KodePos',
                              formTag: 'Form-KodePos',
                              controller: controllers.kodePosController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan No. Telepon',
                              labelForm: 'No. Telepon',
                              labelTag: 'Label-NoTelepon',
                              formTag: 'Form-NoTelepon',
                              controller: controllers.noTelpController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan No. Telepon Lainnya',
                              labelForm: 'No. Telepon Lainnya',
                              labelTag: 'Label-NoTelpLainnya',
                              formTag: 'Form-NoTelpLainnya',
                              controller: controllers.noTelpLainnyaController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Nama Kontak Darurat',
                              labelForm: 'Nama Kontak Darurat',
                              labelTag: 'Label-KontakDarurat',
                              formTag: 'Form-KontakDarurat',
                              controller:
                                  controllers.namaKontakDaruratController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Hubungan Dengan Karyawan',
                              labelForm: 'Hubungan Dengan Karyawan',
                              labelTag: 'Label-HubunganKaryawan',
                              formTag: 'Form-HubunganKaryawan',
                              controller: controllers.hubkaryawanController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Agama',
                              labelForm: 'Agama',
                              labelTag: 'Label-Agama',
                              formTag: 'Form-Agama',
                              valueController: controllers.valueAgamaController,
                              idController: controllers.idAgamaController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Golongan Darah',
                              labelForm: 'Golongan Darah',
                              labelTag: 'Label-GolonganDarah',
                              formTag: 'Form-GolonganDarah',
                              valueController:
                                  controllers.valueGolDarahController,
                              idController: controllers.idGolDarahController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Status Pernikahan',
                              labelForm: 'Status Pernikahan',
                              labelTag: 'Label-StatusPernikahan',
                              formTag: 'Form-StatusPernikahan',
                              valueController:
                                  controllers.valueStatusPernikahanController,
                              idController:
                                  controllers.idStatusPernikahanController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Jumlah Tanggungan',
                              labelForm: 'Jumlah Tanggungan',
                              labelTag: 'Label-JumlahTanggungan',
                              formTag: 'Form-JumlahTanggungan',
                              valueController:
                                  controllers.valueJumlahTanggunganController,
                              idController:
                                  controllers.idJumlahTanggunganController,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        isActive: currentStep >= 1,
                        state: currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        label: Text(
                          'Info Lain',
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.w600),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormInputData(
                              hintText: 'Jatah Cuti Reguler',
                              labelForm: 'Jatah Cuti Reguler',
                              labelTag: 'Label-JatahCutiReguler',
                              formTag: 'Form-JatahCutiReguler',
                              controller: controllers.jatahCutiRegController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Sisa Cuti Reguler',
                              labelForm: 'Sisa Cuti Reguler',
                              labelTag: 'Label-SisaCutiReguler',
                              formTag: 'Form-SisaCutiReguler',
                              controller: controllers.sisaCutiRegController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Jatah Cuti Masa Kerja',
                              labelForm: 'Jatah Cuti Masa Kerja',
                              labelTag: 'Label-JatahCutiMasaKerja',
                              formTag: 'Form-JatahCutiMasaKerja',
                              controller: controllers.jatahCutiKerjaController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Sisa Cuti Masa Kerja',
                              labelForm: 'Sisa Cuti Masa Kerja',
                              labelTag: 'Label-SisaCutiMasaKerja',
                              formTag: 'Form-SisaCutiMasaKerja',
                              controller: controllers.sisaCutiKerjaController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tanggal',
                              labelForm: 'Tanggal Masuk Kerja',
                              labelTag: 'Label-TanggalMasuk',
                              formTag: 'Form-TanggalMasuk',
                              valueController:
                                  controllers.tanggalMasukController,
                              idController: controllers.tanggalMasukController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tanggal',
                              labelForm: 'Tanggal Berhenti Kerja',
                              labelTag: 'Label-TanggalBerhenti',
                              formTag: 'Form-TanggalBerhenti',
                              valueController:
                                  controllers.tanggalBerhentiController,
                              idController:
                                  controllers.tanggalBerhentiController,
                            ),
                          ],
                        ),
                        isActive: currentStep >= 2,
                        state: currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        label: Text(
                          'Berkas',
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.w600),
                        ),
                        title: SizedBox.shrink(),
                        // title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormInputData(
                              hintText: 'Foto Karyawan',
                              labelForm: 'Foto Karyawan',
                              labelTag: 'Label-FotoKaryawan',
                              formTag: 'Form-FotoKaryawan',
                              controller: controllers.fotoKaryawanController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Foto KTP',
                              labelForm: 'Foto KTP',
                              labelTag: 'Label-FotoKTP',
                              formTag: 'Form-FotoKTP',
                              controller: controllers.fotoKtpController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan No. KTP',
                              labelForm: 'No. KTP',
                              labelTag: 'Label-NoKtp',
                              formTag: 'Form-NoKtp',
                              controller: controllers.noKtpController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Alamat Sesuai KTP',
                              labelForm: 'Alamat Sesuai KTP',
                              labelTag: 'Label-AlamatKTP',
                              formTag: 'Form-AlamatKTP',
                              controller: controllers.alamatKtpController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Foto Kartu Keluarga',
                              labelForm: 'Foto Kartu Keluarga',
                              labelTag: 'Label-FotoKK',
                              formTag: 'Form-FotoKK',
                              controller: controllers.fotoKkController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan No. Kartu Keluarga',
                              labelForm: 'No. Kartu Keluarga',
                              labelTag: 'Label-NoKk',
                              formTag: 'Form-NoKk',
                              controller: controllers.noKkController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Foto NPWP',
                              labelForm: 'Foto NPWP',
                              labelTag: 'Label-FotoNpwp',
                              formTag: 'Form-FotoNpwp',
                              controller: controllers.fotoNpwpController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan No. NPWP',
                              labelForm: 'No. NPWP',
                              labelTag: 'Label-NoNpwp',
                              formTag: 'Form-NoNpwp',
                              controller: controllers.noNpwpController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tanggal',
                              labelForm: 'Tanggal Berlaku NPWP',
                              labelTag: 'Label-TanggalNpwp',
                              formTag: 'Form-TanggalNpwp',
                              valueController:
                                  controllers.tanggalNpwpController,
                              idController: controllers.tanggalNpwpController,
                            ),
                            FormInputData(
                              hintText: 'Foto BPJS',
                              labelForm: 'Foto BPJS',
                              labelTag: 'Label-FotoBpjs',
                              formTag: 'Form-FotoBpjs',
                              controller: controllers.fotoBpjsController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan No. BPJS',
                              labelForm: 'No. BPJS',
                              labelTag: 'Label-NoBpjs',
                              formTag: 'Form-NoBpjs',
                              controller: controllers.noBpjsController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tipe BPJS',
                              labelForm: 'Tipe BPJS',
                              labelTag: 'Label-TipeBpjs',
                              formTag: 'Form-TipeBpjs',
                              valueController:
                                  controllers.valueTipeBpjsController,
                              idController: controllers.idTipeBpjsController,
                            ),
                            FormInputData(
                              hintText: 'Berkas Pendukung Lainnya',
                              labelForm: 'Berkas Pendukung Lainnya',
                              labelTag: 'Label-BerkasPendukung',
                              formTag: 'Form-BerkasPendukung',
                              controller: controllers.berkasLainnyaController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Keterangan',
                              labelForm: 'Keterangan',
                              labelTag: 'Label-KeteranganDiri',
                              formTag: 'Form-KeteranganDiri',
                              controller: controllers.keteranganController,
                              validator: (value) {},
                            ),
                          ],
                        ),
                        isActive: currentStep >= 3,
                        state: currentStep >= 3
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        label: Text(
                          'Ukuran',
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.w600),
                        ),
                        title: SizedBox.shrink(),
                        // title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormInputData(
                              hintText: 'Tuliskan Ukuran Baju',
                              labelForm: 'Ukuran Baju',
                              labelTag: 'Label-UkBaju',
                              formTag: 'Form-UkBaju',
                              controller: controllers.ukBajuController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Ukuran Celana',
                              labelForm: 'Ukuran Celana',
                              labelTag: 'Label-UkCelana',
                              formTag: 'Form-UkCelana',
                              controller: controllers.ukCelanaController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Ukuran Sepatu',
                              labelForm: 'Ukuran Sepatu',
                              labelTag: 'Label-UkSepatu',
                              formTag: 'Form-UkSepatu',
                              controller: controllers.ukSepatuontroller,
                              validator: (value) {},
                            ),
                          ],
                        ),
                        isActive: currentStep >= 4,
                        state: currentStep >= 4
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        label: Text(
                          'Pembayaran',
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.w600),
                        ),
                        title: SizedBox.shrink(),
                        // title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Periode Gaji',
                              labelForm: 'Periode Gaji',
                              labelTag: 'Label-PerioGaji',
                              formTag: 'Form-PerioGaji',
                              valueController:
                                  controllers.valuePeriodeGajiController,
                              idController: controllers.idPeriodeGajiController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Tipe Pembayaran',
                              labelForm: 'Pilih Tipe Pembayaran',
                              labelTag: 'Label-TipeBayar',
                              formTag: 'Form-TipeBayar',
                              valueController:
                                  controllers.valueTipePembayaranController,
                              idController: controllers.idTipePembayaranController,
                            ),
                            FormDropDownData(
                              onTap: () {},
                              hintText: 'Pilih Metode Pembayaran',
                              labelForm: 'Metode Pembayaran',
                              labelTag: 'Label-MetodeBayar',
                              formTag: 'Form-MetodeBayar',
                              valueController:
                                  controllers.valueMetodePembayaranController,
                              idController: controllers.idMetodePembayaranController,
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Nomor Rekening',
                              labelForm: 'Nomor Rekening',
                              labelTag: 'Label-NoRek',
                              formTag: 'Form-NoRek',
                              controller: controllers.noRekController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              hintText: 'Tuliskan Atas Nama Pemilik Rekening',
                              labelForm: 'Atas Nama Rekening',
                              labelTag: 'Label-NamaRek',
                              formTag: 'Form-NamaRek',
                              controller: controllers.atasNamaController,
                              validator: (value) {},
                            ),
                          ],
                        ),
                        isActive: currentStep >= 5,
                        state: currentStep >= 5
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                    ],
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
