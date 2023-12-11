import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_add_data.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditDataDiriPage extends StatefulWidget {
  static const routeName = '/EditDataDiriPage';
  EditDataDiriPage({super.key});

  // Divisi Controller
  final TextEditingController idDivisiController = TextEditingController();
  final TextEditingController valueDivisiController = TextEditingController();

  // Departemen Controller
  final TextEditingController idDepartemenController = TextEditingController();
  final TextEditingController valueDepartemenController =
      TextEditingController();

  // Posisi Controller
  final TextEditingController idPosisiController = TextEditingController();
  final TextEditingController valuePosisiController = TextEditingController();

  // Zona Controller
  final TextEditingController idZonaController = TextEditingController();
  final TextEditingController valueZonaController = TextEditingController();

  // Standard Gaji
  final TextEditingController idStandardGajiController =
      TextEditingController();
  final TextEditingController valueStandardGajiController =
      TextEditingController();

  // Costcentre Controller
  final TextEditingController idCostcentreController = TextEditingController();
  final TextEditingController valueCostcentreController =
      TextEditingController();

  // Kode Presisi Controller
  final TextEditingController idKodePresisiController = TextEditingController();
  final TextEditingController valueKodePresisiController =
      TextEditingController();

  // Status Controller
  final TextEditingController idStatusController = TextEditingController();
  final TextEditingController valueStatusController = TextEditingController();

  // Nama Controller
  final TextEditingController nikController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController namaPanggilanController = TextEditingController();

  // Jenis Kelamin Controller
  final TextEditingController jenisKelaminController = TextEditingController();

  // Tempat Lahir Controller
  final TextEditingController idTempatLahirController = TextEditingController();
  final TextEditingController valueTempatLahirController =
      TextEditingController();

  // Tanggal Lahir Controller
  final TextEditingController tanggalLahirController = TextEditingController();

  // Alamat Tinggal Cotroller
  final TextEditingController alamatTinggalController = TextEditingController();

  // Provinsi Controller
  final TextEditingController idProvinsiController = TextEditingController();
  final TextEditingController valueProvinsiController = TextEditingController();

  // Kota Controller
  final TextEditingController idKotaController = TextEditingController();
  final TextEditingController valueKotaController = TextEditingController();

  // Kecamatan Controller
  final TextEditingController idKecamatanController = TextEditingController();
  final TextEditingController valueKecamatanController =
      TextEditingController();

  // Kode Pos dan telepon Controller
  final TextEditingController kodePosController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController noTelpLainnyaController = TextEditingController();
  final TextEditingController namaKontakDaruratController =
      TextEditingController();
  final TextEditingController hubkaryawanController = TextEditingController();

  // Agama Controller
  final TextEditingController idAgamaController = TextEditingController();
  final TextEditingController valueAgamaController = TextEditingController();

  // Gol Darah Controller
  final TextEditingController idGolDarahController = TextEditingController();
  final TextEditingController valueGolDarahController = TextEditingController();

  // Status Pernikahan Controller
  final TextEditingController idStatusPernikahanController =
      TextEditingController();
  final TextEditingController valueStatusPernikahanController =
      TextEditingController();

  // Jumlah Tanggungan Controller
  final TextEditingController idJumlahTanggunganController =
      TextEditingController();
  final TextEditingController valueJumlahTanggunganController =
      TextEditingController();

  // Info Lain Controller
  final TextEditingController jatahCutiRegController = TextEditingController();
  final TextEditingController sisaCutiRegController = TextEditingController();
  final TextEditingController jatahCutiKerjaController =
      TextEditingController();
  final TextEditingController sisaCutiKerjaController = TextEditingController();
  final TextEditingController tanggalMasukController = TextEditingController();
  final TextEditingController tanggalBerhentiController =
      TextEditingController();

  // Berkas Controller
  final TextEditingController fotoKaryawanController = TextEditingController();
  final TextEditingController fotoKtpController = TextEditingController();
  final TextEditingController noKtpController = TextEditingController();
  final TextEditingController alamatKtpController = TextEditingController();
  final TextEditingController fotoKkController = TextEditingController();
  final TextEditingController noKkController = TextEditingController();
  final TextEditingController fotoNpwpController = TextEditingController();
  final TextEditingController noNpwpController = TextEditingController();
  final TextEditingController tanggalNpwpController = TextEditingController();
  final TextEditingController fotoBpjsController = TextEditingController();
  final TextEditingController noBpjsController = TextEditingController();
  final TextEditingController idTipeBpjsController = TextEditingController();
  final TextEditingController valueTipeBpjsController = TextEditingController();
  final TextEditingController berkasLainnyaController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();

  // Ukuran Controller
  final TextEditingController ukBajuController = TextEditingController();
  final TextEditingController ukCelanaController = TextEditingController();
  final TextEditingController ukSepatuontroller = TextEditingController();

  // Pembayaran Controller
  final TextEditingController idPeriodeGajiController = TextEditingController();
  final TextEditingController valuePeriodeGajiController =
      TextEditingController();
  final TextEditingController idTipePembayaranController =
      TextEditingController();
  final TextEditingController valueTipePembayaranController =
      TextEditingController();
  final TextEditingController idMetodePembayaranController =
      TextEditingController();
  final TextEditingController valueMetodePembayaranController =
      TextEditingController();
  final TextEditingController idNamaBankController = TextEditingController();
  final TextEditingController valueNamaBankController = TextEditingController();
  final TextEditingController noRekController = TextEditingController();
  final TextEditingController atasNamaController = TextEditingController();

  @override
  State<EditDataDiriPage> createState() => _EditDataDiriPageState();
}

class _EditDataDiriPageState extends State<EditDataDiriPage> {
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
      // Navigasi ke halaman baru di sini
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DataDiriPage()),
      );
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
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Divisi',
                              labelForm: 'Divisi',
                              labelTag: 'Label-DivisiDiri',
                              formTag: 'Form-DivisiDiri',
                              valueController: widget.valueDivisiController,
                              idController: widget.idDivisiController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Departemen',
                              labelForm: 'Departemen',
                              labelTag: 'Label-DepartemenDiri',
                              formTag: 'Form-DepartemenDiri',
                              valueController: widget.valueDepartemenController,
                              idController: widget.idDepartemenController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Posisi',
                              labelForm: 'Posisi',
                              labelTag: 'Label-PosisiDiri',
                              formTag: 'Form-PosisiDiri',
                              valueController: widget.valuePosisiController,
                              idController: widget.idPosisiController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Zona',
                              labelForm: 'Zona',
                              labelTag: 'Label-ZonaDiri',
                              formTag: 'Form-ZonaDiri',
                              valueController: widget.valueZonaController,
                              idController: widget.idZonaController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Standard Gaji',
                              labelForm: 'Standard Gaji',
                              labelTag: 'Label-StandardGaji',
                              formTag: 'Form-StandardGaji',
                              valueController:
                                  widget.valueStandardGajiController,
                              idController: widget.idStandardGajiController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Costcentre',
                              labelForm: 'Costcentre',
                              labelTag: 'Label-Costcentre',
                              formTag: 'Form-Costcentre',
                              valueController: widget.valueCostcentreController,
                              idController: widget.idCostcentreController,
                            ),
                            const SizedBox(height: 20),
                            FormTemplateSpd(
                              onTap: () {},
                              hintText: 'Pilih Kode Presisi',
                              labelForm: 'Kode Presisi',
                              labelTag: 'Label-KodePresisi',
                              formTag: 'Form-KodePresisi',
                              valueController:
                                  widget.valueKodePresisiController,
                              idController: widget.idKodePresisiController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Status',
                              labelForm: 'Status',
                              labelTag: 'Label-StatusDiri',
                              formTag: 'Form-StatusDiri',
                              valueController: widget.valueStatusController,
                              idController: widget.idStatusController,
                            ),
                            const SizedBox(height: 20),
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
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDataProfile(
                              hintText: 'Tuliskan NIK',
                              labelForm: 'NIK',
                              labelTag: 'Label-NIK',
                              formTag: 'Form-NIK',
                              controller: widget.nikController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Nama',
                              labelForm: 'Nama',
                              labelTag: 'Label-NamaDiri',
                              formTag: 'Form-NamaDiri',
                              controller: widget.namaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Nama Panggilan',
                              labelForm: 'Nama Panggilan',
                              labelTag: 'Label-NamaPanggilan',
                              formTag: 'Form-NamaPanggilan',
                              controller: widget.namaPanggilanController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Jenis Kelamin',
                              labelForm: 'Jenis Kelamin',
                              labelTag: 'Label-JenisKelamin',
                              formTag: 'Form-JenisKelamin',
                              valueController: widget.jenisKelaminController,
                              idController: widget.jenisKelaminController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tempat Lahir',
                              labelForm: 'Tempat Lahir',
                              labelTag: 'Label-TempatLahir',
                              formTag: 'Form-TempatLahir',
                              valueController:
                                  widget.valueTempatLahirController,
                              idController: widget.idTempatLahirController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tanggal Lahir',
                              labelForm: 'Tanggal Lahir',
                              labelTag: 'Label-TanggalLahir',
                              formTag: 'Form-TanggalLahir',
                              valueController: widget.tanggalLahirController,
                              idController: widget.tanggalLahirController,
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Alamat Tinggal',
                              labelForm: 'Alamat Tinggal',
                              labelTag: 'Label-AlamatTinggal',
                              formTag: 'Form-AlamatTinggal',
                              controller: widget.alamatTinggalController,
                              validator: (value) {},
                            ),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Provinsi',
                              labelForm: 'Provinsi',
                              labelTag: 'Label-Provinsi',
                              formTag: 'Form-Provinsi',
                              valueController: widget.valueProvinsiController,
                              idController: widget.idProvinsiController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Kota',
                              labelForm: 'Kota',
                              labelTag: 'Label-Kota',
                              formTag: 'Form-Kota',
                              valueController: widget.valueKotaController,
                              idController: widget.idKotaController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Kecamatan',
                              labelForm: 'Kecamatan',
                              labelTag: 'Label-Kecamatan',
                              formTag: 'Form-Kecamatan',
                              valueController: widget.valueKecamatanController,
                              idController: widget.idKecamatanController,
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Kode Pos',
                              labelForm: 'Kode Pos',
                              labelTag: 'Label-KodePos',
                              formTag: 'Form-KodePos',
                              controller: widget.kodePosController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan No. Telepon',
                              labelForm: 'No. Telepon',
                              labelTag: 'Label-NoTelepon',
                              formTag: 'Form-NoTelepon',
                              controller: widget.noTelpController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan No. Telepon Lainnya',
                              labelForm: 'No. Telepon Lainnya',
                              labelTag: 'Label-NoTelpLainnya',
                              formTag: 'Form-NoTelpLainnya',
                              controller: widget.noTelpLainnyaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Nama Kontak Darurat',
                              labelForm: 'Nama Kontak Darurat',
                              labelTag: 'Label-KontakDarurat',
                              formTag: 'Form-KontakDarurat',
                              controller: widget.namaKontakDaruratController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Hubungan Dengan Karyawan',
                              labelForm: 'Hubungan Dengan Karyawan',
                              labelTag: 'Label-HubunganKaryawan',
                              formTag: 'Form-HubunganKaryawan',
                              controller: widget.hubkaryawanController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Agama',
                              labelForm: 'Agama',
                              labelTag: 'Label-Agama',
                              formTag: 'Form-Agama',
                              valueController: widget.valueAgamaController,
                              idController: widget.idAgamaController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Golongan Darah',
                              labelForm: 'Golongan Darah',
                              labelTag: 'Label-GolonganDarah',
                              formTag: 'Form-GolonganDarah',
                              valueController: widget.valueGolDarahController,
                              idController: widget.idGolDarahController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Status Pernikahan',
                              labelForm: 'Status Pernikahan',
                              labelTag: 'Label-StatusPernikahan',
                              formTag: 'Form-StatusPernikahan',
                              valueController:
                                  widget.valueStatusPernikahanController,
                              idController: widget.idStatusPernikahanController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Jumlah Tanggungan',
                              labelForm: 'Jumlah Tanggungan',
                              labelTag: 'Label-JumlahTanggungan',
                              formTag: 'Form-JumlahTanggungan',
                              valueController:
                                  widget.valueJumlahTanggunganController,
                              idController: widget.idJumlahTanggunganController,
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
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDataProfile(
                              hintText: 'Jatah Cuti Reguler',
                              labelForm: 'Jatah Cuti Reguler',
                              labelTag: 'Label-JatahCutiReguler',
                              formTag: 'Form-JatahCutiReguler',
                              controller: widget.jatahCutiRegController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Sisa Cuti Reguler',
                              labelForm: 'Sisa Cuti Reguler',
                              labelTag: 'Label-SisaCutiReguler',
                              formTag: 'Form-SisaCutiReguler',
                              controller: widget.sisaCutiRegController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Jatah Cuti Masa Kerja',
                              labelForm: 'Jatah Cuti Masa Kerja',
                              labelTag: 'Label-JatahCutiMasaKerja',
                              formTag: 'Form-JatahCutiMasaKerja',
                              controller: widget.jatahCutiKerjaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Sisa Cuti Masa Kerja',
                              labelForm: 'Sisa Cuti Masa Kerja',
                              labelTag: 'Label-SisaCutiMasaKerja',
                              formTag: 'Form-SisaCutiMasaKerja',
                              controller: widget.sisaCutiKerjaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tanggal',
                              labelForm: 'Tanggal Masuk Kerja',
                              labelTag: 'Label-TanggalMasuk',
                              formTag: 'Form-TanggalMasuk',
                              valueController: widget.tanggalMasukController,
                              idController: widget.tanggalMasukController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tanggal',
                              labelForm: 'Tanggal Berhenti Kerja',
                              labelTag: 'Label-TanggalBerhenti',
                              formTag: 'Form-TanggalBerhenti',
                              valueController: widget.tanggalBerhentiController,
                              idController: widget.tanggalBerhentiController,
                            ),
                            const SizedBox(height: 20),
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
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDataProfile(
                              hintText: 'Foto Karyawan',
                              labelForm: 'Foto Karyawan',
                              labelTag: 'Label-FotoKaryawan',
                              formTag: 'Form-FotoKaryawan',
                              controller: widget.fotoKaryawanController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Foto KTP',
                              labelForm: 'Foto KTP',
                              labelTag: 'Label-FotoKTP',
                              formTag: 'Form-FotoKTP',
                              controller: widget.fotoKtpController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan No. KTP',
                              labelForm: 'No. KTP',
                              labelTag: 'Label-NoKtp',
                              formTag: 'Form-NoKtp',
                              controller: widget.noKtpController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Alamat Sesuai KTP',
                              labelForm: 'Alamat Sesuai KTP',
                              labelTag: 'Label-SisaCutiMasaKerja',
                              formTag: 'Form-SisaCutiMasaKerja',
                              controller: widget.alamatKtpController,
                              validator: (value) {},
                            ),
                            FormDataProfile(
                              hintText: 'Foto Kartu Keluarga',
                              labelForm: 'Foto Kartu Keluarga',
                              labelTag: 'Label-FotoKK',
                              formTag: 'Form-FotoKK',
                              controller: widget.fotoKkController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan No. Kartu Keluarga',
                              labelForm: 'No. Kartu Keluarga',
                              labelTag: 'Label-NoKk',
                              formTag: 'Form-NoKk',
                              controller: widget.noKkController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Foto NPWP',
                              labelForm: 'Foto NPWP',
                              labelTag: 'Label-FotoNpwp',
                              formTag: 'Form-FotoNpwp',
                              controller: widget.fotoNpwpController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan No. NPWP',
                              labelForm: 'No. NPWP',
                              labelTag: 'Label-NoNpwp',
                              formTag: 'Form-NoNpwp',
                              controller: widget.noNpwpController,
                              validator: (value) {},
                            ),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tanggal',
                              labelForm: 'Tanggal Berlaku NPWP',
                              labelTag: 'Label-TanggalNpwp',
                              formTag: 'Form-TanggalNpwp',
                              valueController: widget.tanggalNpwpController,
                              idController: widget.tanggalNpwpController,
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Foto BPJS',
                              labelForm: 'Foto BPJS',
                              labelTag: 'Label-FotoBpjs',
                              formTag: 'Form-FotoBpjs',
                              controller: widget.fotoBpjsController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan No. BPJS',
                              labelForm: 'No. BPJS',
                              labelTag: 'Label-NoBpjs',
                              formTag: 'Form-NoBpjs',
                              controller: widget.noBpjsController,
                              validator: (value) {},
                            ),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tipe BPJS',
                              labelForm: 'tipe BPJS',
                              labelTag: 'Label-TipeBpjs',
                              formTag: 'Form-TipeBpjs',
                              valueController: widget.valueTipeBpjsController,
                              idController: widget.idTipeBpjsController,
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Berkas Pendukung Lainnya',
                              labelForm: 'Berkas Pendukung Lainnya',
                              labelTag: 'Label-BerkasPendukung',
                              formTag: 'Form-BerkasPendukung',
                              controller: widget.berkasLainnyaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Keterangan',
                              labelForm: 'Keterangan',
                              labelTag: 'Label-KeteranganDiri',
                              formTag: 'Form-KeteranganDiri',
                              controller: widget.keteranganController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
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
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDataProfile(
                              hintText: 'Tuliskan Ukuran Baju',
                              labelForm: 'Ukuran Baju',
                              labelTag: 'Label-UkBaju',
                              formTag: 'Form-UkBaju',
                              controller: widget.ukBajuController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Ukuran Celana',
                              labelForm: 'Ukuran Celana',
                              labelTag: 'Label-UkCelana',
                              formTag: 'Form-UkCelana',
                              controller: widget.ukCelanaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Ukuran Sepatu',
                              labelForm: 'Ukuran Sepatu',
                              labelTag: 'Label-UkSepatu',
                              formTag: 'Form-UkSepatu',
                              controller: widget.ukSepatuontroller,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        isActive: currentStep >= 4,
                        state: currentStep >= 4
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        label: Text(
                          'Data Diri',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        title: SizedBox.shrink(),
                        content: Column(
                          children: [
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Periode Gaji',
                              labelForm: 'Periode Gaji',
                              labelTag: 'Label-PeriodeGaji',
                              formTag: 'Form-PeriodeGaji',
                              valueController:
                                  widget.valuePeriodeGajiController,
                              idController: widget.idPeriodeGajiController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Tipe Pembayaran',
                              labelForm: 'Tipe Pembayaran',
                              labelTag: 'Label-TipePembayaran',
                              formTag: 'Form-TipePembayaran',
                              valueController:
                                  widget.valueTipePembayaranController,
                              idController: widget.idTipePembayaranController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Metode Pembayaran',
                              labelForm: 'Metode Pembayaran',
                              labelTag: 'Label-MetodePembayaran',
                              formTag: 'Form-MetodePembayaran',
                              valueController:
                                  widget.valueMetodePembayaranController,
                              idController: widget.idMetodePembayaranController,
                            ),
                            const SizedBox(height: 20),
                            FormDropDown(
                              onTap: () {},
                              hintText: 'Pilih Bank',
                              labelForm: 'Nama Bank',
                              labelTag: 'Label-Bank',
                              formTag: 'Form-Bank',
                              valueController: widget.valueNamaBankController,
                              idController: widget.idNamaBankController,
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Nomor Rekening',
                              labelForm: 'Nomor Rekening',
                              labelTag: 'Label-NoRek',
                              formTag: 'Form-NoRek',
                              controller: widget.noRekController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
                            FormDataProfile(
                              hintText: 'Tuliskan Atas Nama Pemilik Rekening',
                              labelForm: 'Atas Nama',
                              labelTag: 'Label-AtasNama',
                              formTag: 'Form-AtasNama',
                              controller: widget.atasNamaController,
                              validator: (value) {},
                            ),
                            const SizedBox(height: 20),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
