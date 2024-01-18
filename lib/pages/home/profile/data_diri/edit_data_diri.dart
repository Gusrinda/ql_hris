import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/posisi_search.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/search_departemen.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/search_divisi.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/zona_search.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/controller/diri_controller.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_biodata_bloc/edit_biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/select_image.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/selector/general_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/selector/kode_presensi_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/selector/standar_gaji_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_zona_model.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kode_presensi.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_standar_gaji.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditDataDiriPage extends StatefulWidget {
  static const routeName = '/EditDataDiriPage';
  final Biodata? bioData;

  EditDataDiriPage({super.key, this.bioData, required this.reloadDataCallback});

  final VoidCallback reloadDataCallback;

  @override
  State<EditDataDiriPage> createState() => _EditDataDiriPageState();
}

class _EditDataDiriPageState extends State<EditDataDiriPage> {
  late DataDiriControllers controllers;
  String? selectedDivisi;
  String? selectedDepartemen;
  String? selectedPosisi;
  String? selectedZona;
  String? selectedJenisKelamin;
  String? selectedHubKeluarga;
  String? selectedKota;
  String? selectedKodePresensi;
  String? selectedStandarGaji;
  String? selectedCostCentre;
  String? selectedTipeBPJS;
  String? selectedPeriodeGaji;
  String? selectedTipePembayaran;
  String? selectedMetodePembayaran;
  String? selectedNamaBank;
  String? selectedAgama;
  String? selectedGolDarah;
  String? selectedStatusNikah;
  String? selectedTanggungan;
  String? selectedProvinsi;
  String? selectedKotabyProvinsi;
  String? selectedKecamatan;
  File? fotoKaryawan;
  String fileNameFotoKaryawan = "";
  String fileUrlFotoKaryawan = "";
  File? ktp;
  String fileNameKtp = "";
  String fileUrlKtp = "";
  File? kartukeluarga;
  String fileNameKk = "";
  String fileUrlKk = "";
  File? npwp;
  String fileNameNpwp = "";
  String fileUrlNpwp = "";
  File? bpjs;
  String fileNameBpjs = "";
  String fileUrlBpjs = "";
  File? berkaspendukung;
  String fileNameBerkasPendukung = "";
  String fileUrlBerkasPendukung = "";

  int currentStep = 0;
  // late GlobalKey<FormState> _formKeyStep1;
  // late GlobalKey<FormState> _formKeyStep2;
  // late GlobalKey<FormState> _formKeyStep3;
  // late GlobalKey<FormState> _formKeyStep4;
  // late GlobalKey<FormState> _formKeyStep5;
  // late GlobalKey<FormState> _formKeyStep6
  @override
  void initState() {
    super.initState();
    // _formKeyStep1 = GlobalKey<FormState>();
    // _formKeyStep2 = GlobalKey<FormState>();
    // _formKeyStep3 = GlobalKey<FormState>();
    // _formKeyStep4 = GlobalKey<FormState>();
    // _formKeyStep5 = GlobalKey<FormState>();
    // _formKeyStep6 = GlobalKey<FormState>();

    controllers = DataDiriControllers(bioData: widget.bioData!);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final biodataBloc = context.read<EditBiodataBloc>();

      biodataBloc.add(OnSelectDivisi());
      biodataBloc.add(OnSelectDepartemen());
      biodataBloc.add(OnSelectPosisi());
      biodataBloc.add(OnSelectZona());
      biodataBloc.add(OnSelectKota());
      biodataBloc.add(OnSelectJenisKelamin());
      biodataBloc.add(OnSelectCostcentre());
      biodataBloc.add(OnSelectStandarGaji());
      biodataBloc.add(OnSelectKodePresensi());
      biodataBloc.add(OnSelectTipeBJPS());
      biodataBloc.add(OnSelectPeriodeGaji());
      biodataBloc.add(OnSelectTipePembayaran());
      biodataBloc.add(OnSelectMetodePembayaran());
      biodataBloc.add(OnSelectNamaBank());
      biodataBloc.add(OnSelectAgama());
      biodataBloc.add(OnSelectGolDarah());
      biodataBloc.add(OnSelectStatusNikah());
      biodataBloc.add(OnSelectTanggungan());
      biodataBloc.add(OnSelectProvinsi());
    });
  }

  List<String> buttonTexts = [
    'Simpan Data Informasi',
    'Simpan Data Diri',
    'Simpan Data Info Lain',
    'Simpan Data Berkas',
    'Simpan Data Ukuran',
    'Simpan Data Pembayaran'
  ];

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

  Widget controlBuilders(BuildContext context, dynamic details) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          if (currentStep < 5) ...{
            TextButtonCustomV1(
              text: buttonTexts[currentStep],
              textSize: 13.sp,
              height: 50,
              backgroundColor: MyColorsConst.primaryColor.withOpacity(0.15),
              textColor: MyColorsConst.primaryColor,
              onPressed: details.onStepContinue,
            ),
          } else ...{
            TextButtonCustomV1(
              text: buttonTexts[currentStep],
              height: 50,
              backgroundColor: MyColorsConst.primaryColor.withOpacity(0.15),
              textColor: MyColorsConst.primaryColor,
              onPressed: () {
                print("Ini Klik Submit Edit Biodata");
                print(
                    "DivisiID : ${controllers.idDivisiController?.value.text}");
                print(
                    "DeptID : ${controllers.idDepartemenController?.value.text}");

                context.read<EditBiodataBloc>().add(EditDataBiodataSubmited(
                      divisiId:
                          controllers.idDivisiController?.value.text != null
                              ? int.tryParse(
                                  controllers.idDivisiController!.value.text)
                              : null,
                      deptId: controllers.idDepartemenController?.value.text !=
                              null
                          ? int.tryParse(
                              controllers.idDepartemenController!.value.text)
                          : null,
                      posisiId:
                          controllers.idPosisiController?.value.text != null
                              ? int.tryParse(
                                  controllers.idPosisiController!.value.text)
                              : null,
                      zonaId: controllers.idZonaController?.value.text != null
                          ? int.tryParse(
                              controllers.idZonaController!.value.text)
                          : null,
                      kodePresensi:
                          controllers.valueKodePresensiController?.value.text,
                      namaDepan: controllers.namaDepanController?.value.text,
                      nik: controllers.nikController?.value.text,
                      namaBelakang:
                          controllers.namaBelakangController?.value.text,
                      namaLengkap:
                          '${controllers.namaDepanController?.value.text} ${controllers.namaBelakangController?.value.text}',
                      namaPanggilan:
                          controllers.namaPanggilanController?.value.text,
                      jkId: controllers.idJenisKelaminController?.value.text !=
                              null
                          ? int.tryParse(
                              controllers.idJenisKelaminController!.value.text)
                          : null,
                      tempatLahir:
                          controllers.valueTempatLahirController?.value.text,
                      tglLahir: controllers.tanggalLahirController?.value.text,
                      provinsiId:
                          controllers.idProvinsiController?.value.text != null
                              ? int.tryParse(
                                  controllers.idProvinsiController!.value.text)
                              : null,
                      kotaId: controllers.idKotaController?.value.text != null
                          ? int.tryParse(
                              controllers.idKotaController!.value.text)
                          : null,
                      kecamatanId:
                          controllers.idKecamatanController?.value.text != null
                              ? int.tryParse(
                                  controllers.idKecamatanController!.value.text)
                              : null,
                      kodePos: controllers.kodePosController?.value.text,
                      alamatAsli: controllers.alamatKtpController?.value.text,
                      alamatDomisili: controllers
                          .alamatDomisiliTinggalController?.value.text,
                      noTlp: controllers.noTelpController?.value.text,
                      noTlpLainnya:
                          controllers.noTelpLainnyaController?.value.text,
                      noDarurat:
                          controllers.noTelpDaruratController?.value.text,
                      namaKontakDarurat:
                          controllers.namaKontakDaruratController?.value.text,
                      hubDgnKaryawan:
                          controllers.hubkaryawanController?.value.text,
                      agamaId: controllers.idAgamaController?.value.text != null
                          ? int.tryParse(
                              controllers.idAgamaController!.value.text)
                          : null,
                      golDarahId:
                          controllers.idGolDarahController?.value.text != null
                              ? int.tryParse(
                                  controllers.idGolDarahController!.value.text)
                              : null,
                      statusNikahId: controllers
                                  .idStatusPernikahanController?.value.text !=
                              null
                          ? int.tryParse(controllers
                              .idStatusPernikahanController!.value.text)
                          : null,
                      tanggunganId: controllers
                                  .idJumlahTanggunganController?.value.text !=
                              null
                          ? int.tryParse(controllers
                              .idJumlahTanggunganController!.value.text)
                          : null,
                      tglMasuk: controllers.tanggalMasukController?.value.text,
                      ktpFoto: ktp != null && ktp!.path.isNotEmpty
                          ? File(ktp!.path)
                          : null,
                      pasFoto:
                          fotoKaryawan != null && fotoKaryawan!.path.isNotEmpty
                              ? File(fotoKaryawan!.path)
                              : null,
                      // bpjsFoto: bpjs != null && bpjs!.path.isNotEmpty
                      //     ? File(bpjs!.path)
                      //     : null,
                      ktpNo: controllers.noKtpController?.value.text,
                      kkNo: controllers.noKkController?.value.text,
                      kkFoto: kartukeluarga != null &&
                              kartukeluarga!.path.isNotEmpty
                          ? File(kartukeluarga!.path)
                          : null,
                      npwpFoto: npwp != null && npwp!.path.isNotEmpty
                          ? File(npwp!.path)
                          : null,
                      npwpNo: controllers.noNpwpController?.value.text,
                      berkasLain: berkaspendukung != null &&
                              berkaspendukung!.path.isNotEmpty
                          ? File(berkaspendukung!.path)
                          : null,
                      npwpTglBerlaku:
                          controllers.tanggalNpwpController?.value.text,
                      bpjsTipeId:
                          controllers.idTipeBPJSController?.value.text != null
                              ? int.tryParse(
                                  controllers.idTipeBPJSController!.value.text)
                              : null,
                      // bpjsNo: controllers.noBpjsController?.value.text,
                      bpjsNo: controllers.noBpjsKesehatanController?.value.text,
                      bpjsKerjaNo: controllers
                          .noBpjsKetenagakerjaanController?.value.text,
                      desc: controllers.keteranganController?.value.text,
                      ukBaju: controllers.ukBajuController?.value.text,
                      ukCelana: controllers.ukCelanaController?.value.text,
                      ukSepatu: controllers.ukSepatuontroller?.value.text,
                      bankId:
                          controllers.idNamaBankController?.value.text != null
                              ? int.tryParse(
                                  controllers.idNamaBankController!.value.text)
                              : null,
                      noRek: controllers.noRekController?.value.text,
                      atasNamaRek: controllers.atasNamaController?.value.text,
                    ));
              },
            ),
          },
        ],
      ),
    );
  }

  void addToRequest(Map<String, dynamic> requestData, String fieldName,
      dynamic controllerValue) {
    if (controllerValue != null) {
      if (controllerValue is String) {
        if (controllerValue.isNotEmpty) {
          requestData[fieldName] = controllerValue;
        }
      } else if (controllerValue is int) {
        requestData[fieldName] = controllerValue;
      } else if (controllerValue is File) {
        // Langsung menetapkan File ke requestData
        requestData[fieldName] = controllerValue;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataKota = context.read<EditBiodataBloc>().dataKota;
    var jenisKelamin = context.read<EditBiodataBloc>().dataJenisKelamin;
    var dataDivisi = context.read<EditBiodataBloc>().dataDivisi;
    var dataDepartemen = context.read<EditBiodataBloc>().dataDepartemen;
    var dataPosisi = context.read<EditBiodataBloc>().dataPosisi;
    var dataZona = context.read<EditBiodataBloc>().dataZona;
    var dataKodePresensi = context.read<EditBiodataBloc>().dataKodePresensi;
    var dataStandarGaji = context.read<EditBiodataBloc>().dataStandarGaji;
    var dataCostCentre = context.read<EditBiodataBloc>().dataCostCentre;
    var dataTipeBPJS = context.read<EditBiodataBloc>().dataTipeBPJS;
    var dataPeriodeGaji = context.read<EditBiodataBloc>().dataPeriodeGaji;
    var dataTipePembayaran = context.read<EditBiodataBloc>().dataTipePembayaran;
    var dataMetodePembayaran =
        context.read<EditBiodataBloc>().dataMetodePembayaran;
    var dataNamaBank = context.read<EditBiodataBloc>().dataNamaBank;
    var dataAgama = context.read<EditBiodataBloc>().dataAgama;
    var dataGolDarah = context.read<EditBiodataBloc>().dataGolDarah;
    var dataStatusNikah = context.read<EditBiodataBloc>().dataStatusNikah;
    var dataTanggungan = context.read<EditBiodataBloc>().dataTanggungan;
    var dataProvinsi = context.read<EditBiodataBloc>().dataProvinsi;

    void _showDivisi(BuildContext context) async {
      if (dataDivisi.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectDivisi());
        dataDivisi = context.read<EditBiodataBloc>().dataDivisi;
      }

      if (dataDivisi.isNotEmpty) {
        final selectedDivisi = await showSearch<DataDivisi?>(
          context: context,
          delegate: DivisiSearchDelegate(
            dataDivisi: dataDivisi,
            filteredData: dataDivisi,
          ),
        );

        if (selectedDivisi != null) {
          controllers.idDivisiController!.text =
              selectedDivisi.id?.toString() ?? '';
          controllers.valueDivisiController!.text =
              selectedDivisi.nama?.toString() ?? '';

          setState(() {
            this.selectedDivisi = selectedDivisi.nama;
            print(selectedDivisi.nama);
            print("Selected ID Kota: ${selectedDivisi.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showDepartemen(BuildContext context) async {
      if (dataDepartemen.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectDepartemen());
        dataDepartemen = context.read<EditBiodataBloc>().dataDepartemen;
      }

      if (dataDepartemen.isNotEmpty) {
        final selectedDepartemen = await showSearch<DataDepartemen?>(
          context: context,
          delegate: DepartemenSearchDelegate(
            dataDepartemen: dataDepartemen,
            filteredData: dataDepartemen,
          ),
        );

        if (selectedDepartemen != null) {
          controllers.idDepartemenController!.text =
              selectedDepartemen.id?.toString() ?? '';
          controllers.valueDepartemenController!.text =
              selectedDepartemen.nama?.toString() ?? '';

          setState(() {
            this.selectedDepartemen = selectedDepartemen.nama;
            print(selectedDepartemen.nama);
            print("Selected ID Kota: ${selectedDepartemen.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showPosisi(BuildContext context) async {
      if (dataPosisi.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectPosisi());
        dataPosisi = context.read<EditBiodataBloc>().dataPosisi;
      }

      if (dataPosisi.isNotEmpty) {
        final selectedDivisi = await showSearch<DataPosisi?>(
          context: context,
          delegate: PosisiSearchDelegate(
            dataPosisi: dataPosisi,
            filteredData: dataPosisi,
          ),
        );

        if (selectedDivisi != null) {
          controllers.idPosisiController!.text =
              selectedDivisi.id?.toString() ?? '';
          controllers.valuePosisiController!.text =
              selectedDivisi.descKerja?.toString() ?? '';

          setState(() {
            this.selectedDivisi = selectedDivisi.descKerja;
            print(selectedDivisi.descKerja);
            print("Selected ID Kota: ${selectedDivisi.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showZona(BuildContext context) async {
      if (dataZona.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectZona());
        dataZona = context.read<EditBiodataBloc>().dataZona;
      }

      if (dataZona.isNotEmpty) {
        final selectedZona = await showSearch<DataZona?>(
          context: context,
          delegate: ZonaSearchDelegate(
            dataZona: dataZona,
            filteredData: dataZona,
          ),
        );

        if (selectedZona != null) {
          controllers.idZonaController!.text =
              selectedZona.id?.toString() ?? '';
          controllers.valueZonaController!.text =
              selectedZona.nama?.toString() ?? '';

          setState(() {
            this.selectedZona = selectedZona.nama;
            print(selectedZona.nama);
            print("Selected ID Kota: ${selectedZona.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showCostCentre(BuildContext context) async {
      if (dataCostCentre.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectCostcentre());
        dataCostCentre = context.read<EditBiodataBloc>().dataCostCentre;
      }

      if (dataCostCentre.isNotEmpty) {
        final selectedCostCentre = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataCostCentre,
            filteredData: dataCostCentre,
          ),
        );

        if (selectedCostCentre != null) {
          controllers.idCostCentreController!.text =
              selectedCostCentre.id?.toString() ?? '';
          controllers.valueCostCentreController!.text =
              selectedCostCentre.value?.toString() ?? '';

          setState(() {
            this.selectedCostCentre = selectedCostCentre.value;
            print(selectedCostCentre.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedCostCentre?.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showKotaMenu(BuildContext context) async {
      if (dataKota.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectKota());
        dataKota = context.read<EditBiodataBloc>().dataKota;
      }

      if (dataKota.isNotEmpty) {
        final selectedKota = await showSearch<DataKota?>(
          context: context,
          delegate: KotaSearchDelegate(
            dataKota: dataKota,
            filteredData: dataKota,
          ),
        );

        if (selectedKota != null) {
          controllers.idTempatLahirController!.text =
              selectedKota.id?.toString() ?? '';
          controllers.valueTempatLahirController!.text =
              selectedKota.value?.toString() ?? '';

          setState(() {
            this.selectedKota = selectedKota.value;
            print(selectedKota.value);
            print("Selected ID Kota: ${selectedKota.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showGenderMenu(BuildContext context) async {
      if (jenisKelamin.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectJenisKelamin());
        jenisKelamin = context.read<EditBiodataBloc>().dataJenisKelamin;
      }

      if (jenisKelamin.isNotEmpty) {
        final selectedJenisKelamin = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: jenisKelamin,
            filteredData: jenisKelamin,
          ),
        );

        if (selectedJenisKelamin != null) {
          controllers.idJenisKelaminController!.text =
              selectedJenisKelamin.id?.toString() ?? '';
          controllers.valueJenisKelaminController!.text =
              selectedJenisKelamin.value?.toString() ?? '';

          setState(() {
            this.selectedJenisKelamin = selectedJenisKelamin.value;
            print(selectedJenisKelamin.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedJenisKelamin.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showStandarGajiMenu(BuildContext context) async {
      print(selectedStandarGaji);

      if (dataStandarGaji.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectStandarGaji());
        dataStandarGaji = context.read<EditBiodataBloc>().dataStandarGaji;
      }

      if (dataStandarGaji.isNotEmpty) {
        final selectedStandarGaji = await showSearch<DataStandarGaji?>(
          context: context,
          delegate: StandarGajiSearchDelegate(
            dataStandarGajiList: dataStandarGaji,
            filteredData: dataStandarGaji,
          ),
        );

        if (selectedStandarGaji != null) {
          controllers.idStandardGajiController!.text =
              selectedStandarGaji.id?.toString() ?? '';
          controllers.valueStandardGajiController!.text =
              selectedStandarGaji.kode?.toString() ?? '';

          setState(() {
            this.selectedStandarGaji = selectedStandarGaji.kode;
            print(selectedStandarGaji.kode);
            print(
                "Selected ID Standar Gaji Terakhir: ${selectedStandarGaji.id}");
          });
        }
      } else {
        showDialog(
          context: context,
          builder: (_) => const DialogCustom(
              state: DialogCustomItem.error, message: "Tidak Ada Item"),
        );
        print("Tidak Ada Item");
      }
    }

    void showKodePresensiMenu(BuildContext context) async {
      print(selectedKodePresensi);

      if (dataKodePresensi.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectKodePresensi());
        dataKodePresensi = context.read<EditBiodataBloc>().dataKodePresensi;
      }

      if (dataKodePresensi.isNotEmpty) {
        final selectedKodePresensi = await showSearch<DataKodePresensi?>(
          context: context,
          delegate: KodePresensiSearchDelegate(
            dataKodePresensi: dataKodePresensi,
            filteredData: dataKodePresensi,
          ),
        );

        if (selectedKodePresensi != null) {
          controllers.valueKodePresensiController!.text =
              selectedKodePresensi.id?.toString() ?? '';
          controllers.valueKodePresensiController!.text =
              selectedKodePresensi.kode?.toString() ?? '';

          setState(() {
            this.selectedKodePresensi = selectedKodePresensi.kode;
            print(selectedKodePresensi.kode);
            print(
                "Selected ID kode presensi Terakhir: ${selectedKodePresensi.id}");
          });
        }
      } else {
        showDialog(
          context: context,
          builder: (_) => const DialogCustom(
              state: DialogCustomItem.error, message: "Tidak Ada Item"),
        );
        print("Tidak Ada Item");
      }
    }

    void showAgamaMenu(BuildContext context) async {
      if (dataAgama.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectAgama());
        dataAgama = context.read<EditBiodataBloc>().dataAgama;
      }

      if (dataAgama.isNotEmpty) {
        final selectedAgama = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataAgama,
            filteredData: dataAgama,
          ),
        );

        if (selectedAgama != null) {
          controllers.idAgamaController!.text =
              selectedAgama.id?.toString() ?? '';
          controllers.valueAgamaController!.text =
              selectedAgama.value?.toString() ?? '';

          setState(() {
            this.selectedAgama = selectedAgama.value;
            print(selectedAgama.value);
            print("Selected ID agama Terakhir: ${selectedAgama.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showStatusNikahMenu(BuildContext context) async {
      if (dataStatusNikah.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectStatusNikah());
        dataStatusNikah = context.read<EditBiodataBloc>().dataStatusNikah;
      }

      if (dataStatusNikah.isNotEmpty) {
        final selectedStatusNikah = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataStatusNikah,
            filteredData: dataStatusNikah,
          ),
        );

        if (selectedStatusNikah != null) {
          controllers.idStatusPernikahanController!.text =
              selectedStatusNikah.id?.toString() ?? '';
          controllers.valueStatusPernikahanController!.text =
              selectedStatusNikah.value?.toString() ?? '';

          setState(() {
            this.selectedStatusNikah = selectedStatusNikah.value;
            print(selectedStatusNikah.value);
            print(
                "Selected ID Status Nikah Terakhir: ${selectedStatusNikah.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showGolDarahMenu(BuildContext context) async {
      if (dataGolDarah.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectGolDarah());
        dataGolDarah = context.read<EditBiodataBloc>().dataGolDarah;
      }

      if (dataGolDarah.isNotEmpty) {
        final selectedGolDarah = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataGolDarah,
            filteredData: dataGolDarah,
          ),
        );

        if (selectedGolDarah != null) {
          controllers.idGolDarahController!.text =
              selectedGolDarah.id?.toString() ?? '';
          controllers.valueGolDarahController!.text =
              selectedGolDarah.value?.toString() ?? '';

          setState(() {
            this.selectedGolDarah = selectedGolDarah.value;
            print(selectedGolDarah.value);
            print("Selected ID gol darah Terakhir: ${selectedGolDarah.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showTanggunganMenu(BuildContext context) async {
      if (dataTanggungan.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectTanggungan());
        dataTanggungan = context.read<EditBiodataBloc>().dataTanggungan;
      }

      if (dataTanggungan.isNotEmpty) {
        final selectedTanggungan = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataTanggungan,
            filteredData: dataTanggungan,
          ),
        );

        if (selectedTanggungan != null) {
          controllers.idJumlahTanggunganController!.text =
              selectedTanggungan.id?.toString() ?? '';
          controllers.valueJumlahTanggunganController!.text =
              selectedTanggungan.value?.toString() ?? '';

          setState(() {
            this.selectedTanggungan = selectedTanggungan.value;
            print(selectedTanggungan.value);
            print("Selected ID Tanggungan Terakhir: ${selectedTanggungan.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showProvinsiMenu(BuildContext context) async {
      if (dataProvinsi.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectProvinsi());
        dataProvinsi = context.read<EditBiodataBloc>().dataProvinsi;
      }

      if (dataProvinsi.isNotEmpty) {
        final selectedProvinsi = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataProvinsi,
            filteredData: dataProvinsi,
          ),
        );

        if (selectedProvinsi != null) {
          controllers.idProvinsiController!.text =
              selectedProvinsi.id?.toString() ?? '';
          controllers.valueProvinsiController!.text =
              selectedProvinsi.value?.toString() ?? '';

          setState(() {
            this.selectedProvinsi = selectedProvinsi.value;
            context.read<EditBiodataBloc>().add(OnSelectKotabyProvinsi(
                idProvinsi: int.parse(controllers.idProvinsiController!.text)));

            print(selectedProvinsi.value);
            print("Selected ID Provinsi Terakhir: ${selectedProvinsi.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showKotabyProvinsiMenu(BuildContext context) {
      if (controllers.idProvinsiController!.value.text.isEmpty) {
        CircularProgressIndicator();
      }

      // Dapatkan ID provinsi yang dipilih
      int selectedProvinsiId =
          int.parse(controllers.idProvinsiController!.text);

      // Panggil fungsi untuk mendapatkan list kota berdasarkan provinsi
      context
          .read<EditBiodataBloc>()
          .add(OnSelectKotabyProvinsi(idProvinsi: selectedProvinsiId));

      // Ambil data kota berdasarkan provinsi
      List<DataGeneral> dataKotabyProvinsi =
          context.read<EditBiodataBloc>().dataKotabyProvinsi;

      if (dataKotabyProvinsi.isEmpty) {
        print("Tidak Ada Kota untuk Provinsi yang Dipilih");
        showDialog(
          context: context,
          builder: (_) => const DialogCustom(
            state: DialogCustomItem.error,
            message: "Anda belum memilih Provinsi",
          ),
        );
        return;
      }

      // Tampilkan pencarian kota berdasarkan provinsi
      showSearch<DataGeneral?>(
        context: context,
        delegate: GeneralSearchDelegate(
          dataList: dataKotabyProvinsi,
          filteredData: dataKotabyProvinsi,
        ),
      ).then((selectedKota) {
        if (selectedKota != null) {
          controllers.idKotaController!.text =
              selectedKota.id?.toString() ?? '';
          controllers.valueKotaController!.text =
              selectedKota.value?.toString() ?? '';

          setState(() {
            this.selectedKotabyProvinsi = selectedKota.value;
            context.read<EditBiodataBloc>().add(OnSelectKecamatan(
                idKota: int.parse(controllers.idKotaController!.text)));
            print(selectedKota.value);
            print("Selected ID Kota Terakhir: ${selectedKota.id}");
          });
        }
      });
    }

    void showKecamatanMenu(BuildContext context) {
      if (controllers.idKotaController!.text.isEmpty) {
        CircularProgressIndicator();
      }

      // Dapatkan ID provinsi yang dipilih
      int selectedKotaId = int.parse(controllers.idKotaController!.text);

      // Panggil fungsi untuk mendapatkan list kota berdasarkan provinsi
      context
          .read<EditBiodataBloc>()
          .add(OnSelectKecamatan(idKota: selectedKotaId));

      // Ambil data kota berdasarkan provinsi
      List<DataGeneral> dataKecamatan =
          context.read<EditBiodataBloc>().dataKecamatan;

      if (dataKecamatan.isEmpty) {
        print("Tidak Ada Kecamatan untuk Kota yang Dipilih");
        showDialog(
          context: context,
          builder: (_) => const DialogCustom(
            state: DialogCustomItem.error,
            message: "Anda belum memilih Kota",
          ),
        );
        return;
      }

      // Tampilkan pencarian kota berdasarkan provinsi
      showSearch<DataGeneral?>(
        context: context,
        delegate: GeneralSearchDelegate(
          dataList: dataKecamatan,
          filteredData: dataKecamatan,
        ),
      ).then((selectedKecamatan) {
        if (selectedKecamatan != null) {
          controllers.idKecamatanController!.text =
              selectedKecamatan.id?.toString() ?? '';
          controllers.valueKecamatanController!.text =
              selectedKecamatan.value?.toString() ?? '';

          setState(() {
            this.selectedKecamatan = selectedKecamatan.value;
            print(selectedKecamatan.value);
            print("Selected ID Kota Terakhir: ${selectedKecamatan.id}");
          });
        }
      });
    }

    void showTipeBPJS(BuildContext context) async {
      if (dataTipeBPJS.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectCostcentre());
        dataTipeBPJS = context.read<EditBiodataBloc>().dataTipeBPJS;
      }

      if (dataTipeBPJS.isNotEmpty) {
        final selectedTipeBPJS = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataTipeBPJS,
            filteredData: dataTipeBPJS,
          ),
        );

        if (selectedTipeBPJS != null) {
          controllers.idTipeBPJSController!.text =
              selectedTipeBPJS.id?.toString() ?? '';
          controllers.valueTipeBPJSController!.text =
              selectedTipeBPJS.value?.toString() ?? '';

          setState(() {
            this.selectedTipeBPJS = selectedTipeBPJS.value;
            print(selectedTipeBPJS.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedTipeBPJS.id!}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showPeriodeGaji(BuildContext context) async {
      if (dataPeriodeGaji.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectCostcentre());
        dataPeriodeGaji = context.read<EditBiodataBloc>().dataPeriodeGaji;
      }

      if (dataPeriodeGaji.isNotEmpty) {
        final selectedPeriodeGaji = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataPeriodeGaji,
            filteredData: dataPeriodeGaji,
          ),
        );

        if (selectedPeriodeGaji != null) {
          controllers.idPeriodeGajiController!.text =
              selectedPeriodeGaji.id?.toString() ?? '';
          controllers.valuePeriodeGajiController!.text =
              selectedPeriodeGaji.value?.toString() ?? '';

          setState(() {
            this.selectedPeriodeGaji = selectedPeriodeGaji.value;
            print(selectedPeriodeGaji.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedPeriodeGaji.id!}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showTipePembayaran(BuildContext context) async {
      if (dataTipePembayaran.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectCostcentre());
        dataTipePembayaran = context.read<EditBiodataBloc>().dataTipePembayaran;
      }

      if (dataTipePembayaran.isNotEmpty) {
        final selectedTipePembayaran = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataTipePembayaran,
            filteredData: dataTipePembayaran,
          ),
        );

        if (selectedTipePembayaran != null) {
          controllers.idTipePembayaranController!.text =
              selectedTipePembayaran.id?.toString() ?? '';
          controllers.valueTipePembayaranController!.text =
              selectedTipePembayaran.value?.toString() ?? '';

          setState(() {
            this.selectedTipePembayaran = selectedTipePembayaran.value;
            print(selectedTipePembayaran.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedTipePembayaran.id!}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showMetodePembayaran(BuildContext context) async {
      if (dataMetodePembayaran.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectCostcentre());
        dataMetodePembayaran =
            context.read<EditBiodataBloc>().dataMetodePembayaran;
      }

      if (dataMetodePembayaran.isNotEmpty) {
        final selectedMetodePembayaran = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataMetodePembayaran,
            filteredData: dataMetodePembayaran,
          ),
        );

        if (selectedMetodePembayaran != null) {
          controllers.idMetodePembayaranController!.text =
              selectedMetodePembayaran.id?.toString() ?? '';
          controllers.valueMetodePembayaranController!.text =
              selectedMetodePembayaran.value?.toString() ?? '';

          setState(() {
            this.selectedMetodePembayaran = selectedMetodePembayaran.value;
            print(selectedMetodePembayaran.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedMetodePembayaran.id!}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showNamaBank(BuildContext context) async {
      if (dataNamaBank.isEmpty) {
        context.read<EditBiodataBloc>().add(OnSelectCostcentre());
        dataNamaBank = context.read<EditBiodataBloc>().dataNamaBank;
      }

      if (dataNamaBank.isNotEmpty) {
        final selectedNamaBank = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataNamaBank,
            filteredData: dataNamaBank,
          ),
        );

        if (selectedNamaBank != null) {
          controllers.idNamaBankController!.text =
              selectedNamaBank.id?.toString() ?? '';
          controllers.valueNamaBankController!.text =
              selectedNamaBank.value?.toString() ?? '';

          setState(() {
            this.selectedNamaBank = selectedNamaBank.value;
            print(selectedNamaBank.value);
            print(
                "Selected ID jenis kelamin Terakhir: ${selectedNamaBank.id!}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

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
      child: BlocListener<EditBiodataBloc, EditBiodataState>(
        listener: (context, state) async {
          if (state is EditBiodataLoading) {
            LoadingDialog.showLoadingDialog(context);
          } else if (state is EditBiodataSuccess) {
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
          } else if (state is EditBiodataFailed) {
            LoadingDialog.dismissDialog(context);
            await showDialog(
              context: context,
              builder: (_) => DialogCustom(
                state: DialogCustomItem.error,
                message: state.message,
              ),
            );
            Navigator.pop(context);
          } else if (state is EditBiodataFailedUserExpired) {
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
          } else if (state is EditBiodataFailedInBackground) {
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
                  child: BlocBuilder<EditBiodataBloc, EditBiodataState>(
                    builder: (context, state) {
                      return Container(
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
                                    showRedStar: false,
                                    onTap: () {
                                      _showDivisi(context);
                                    },
                                    hintText: 'Pilih Divisi',
                                    labelForm: 'Divisi',
                                    labelTag: 'Label-DivisiDiri',
                                    formTag: 'Form-DivisiDiri',
                                    valueController:
                                        controllers.valueDivisiController!,
                                    idController:
                                        controllers.idDivisiController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      _showDepartemen(context);
                                    },
                                    hintText: 'Pilih Departemen',
                                    labelForm: 'Departemen',
                                    labelTag: 'Label-DepartemenDiri',
                                    formTag: 'Form-DepartemenDiri',
                                    valueController:
                                        controllers.valueDepartemenController!,
                                    idController:
                                        controllers.idDepartemenController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      _showPosisi(context);
                                    },
                                    hintText: 'Pilih Posisi',
                                    labelForm: 'Posisi',
                                    labelTag: 'Label-PosisiDiri',
                                    formTag: 'Form-PosisiDiri',
                                    valueController:
                                        controllers.valuePosisiController!,
                                    idController:
                                        controllers.idPosisiController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      _showZona(context);
                                    },
                                    hintText: 'Pilih Zona',
                                    labelForm: 'Zona',
                                    labelTag: 'Label-ZonaDiri',
                                    formTag: 'Form-ZonaDiri',
                                    valueController:
                                        controllers.valueZonaController!,
                                    idController: controllers.idZonaController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showKodePresensiMenu(context);
                                    },
                                    hintText: 'Pilih Kode Presensi',
                                    labelForm: 'Kode Presensi',
                                    labelTag: 'Label-KodePresensi',
                                    formTag: 'Form-KodePresensi',
                                    valueController: controllers
                                        .valueKodePresensiController!,
                                    idController:
                                        controllers.idKodePresensiController!,
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
                                    showRedStar: false,
                                    hintText: 'Tuliskan NIK',
                                    labelForm: 'NIK',
                                    labelTag: 'Label-NIK',
                                    formTag: 'Form-NIK',
                                    controller: controllers.nikController!,
                                    enabled: true,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Nama Depan Anda',
                                    labelForm: 'Nama Depan',
                                    labelTag: 'Label-NamaDepanDiri',
                                    formTag: 'Form-NamaDepanDiri',
                                    controller:
                                        controllers.namaDepanController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Nama Belakang Anda',
                                    labelForm: 'Nama Belakang',
                                    labelTag: 'Label-NamaBelakangDiri',
                                    formTag: 'Form-NamaBelakangDiri',
                                    controller:
                                        controllers.namaBelakangController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Nama Panggilan Anda',
                                    labelForm: 'Nama Panggilan',
                                    labelTag: 'Label-NamaPanggilan',
                                    formTag: 'Form-NamaPanggilan',
                                    controller:
                                        controllers.namaPanggilanController!,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showGenderMenu(context);
                                    },
                                    hintText: 'Laki-laki / Perempuan',
                                    labelForm: 'Jenis Kelamin',
                                    labelTag: 'Label-JenisKelamin',
                                    formTag: 'Form-JenisKelamin',
                                    valueController: controllers
                                        .valueJenisKelaminController!,
                                    idController: controllers
                                        .valueJenisKelaminController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showKotaMenu(context);
                                    },
                                    hintText: 'Pilih Tempat Lahir',
                                    labelForm: 'Tempat Lahir',
                                    labelTag: 'Label-TempatLahir',
                                    formTag: 'Form-TempatLahir',
                                    valueController:
                                        controllers.valueTempatLahirController!,
                                    idController:
                                        controllers.idTempatLahirController!,
                                  ),
                                  FormDateData(
                                    showRedStar: false,
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalLahirController!);
                                    },
                                    hintText: 'Pilih Tanggal Lahir',
                                    labelForm: 'Tanggal Lahir',
                                    labelTag: 'Label-TanggalLahir',
                                    formTag: 'Form-TanggalLahir',
                                    valueController:
                                        controllers.tanggalLahirController!,
                                    idController:
                                        controllers.tanggalLahirController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showProvinsiMenu(context);
                                    },
                                    hintText: 'Pilih Provinsi',
                                    labelForm: 'Provinsi',
                                    labelTag: 'Label-Provinsi',
                                    formTag: 'Form-Provinsi',
                                    valueController:
                                        controllers.valueProvinsiController!,
                                    idController:
                                        controllers.idProvinsiController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showKotabyProvinsiMenu(context);
                                    },
                                    hintText: 'Pilih Kota',
                                    labelForm: 'Kota',
                                    labelTag: 'Label-Kota',
                                    formTag: 'Form-Kota',
                                    valueController:
                                        controllers.valueKotaController!,
                                    idController: controllers.idKotaController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showKecamatanMenu(context);
                                    },
                                    hintText: 'Pilih Kecamatan',
                                    labelForm: 'Kecamatan',
                                    labelTag: 'Label-Kecamatan',
                                    formTag: 'Form-Kecamatan',
                                    valueController:
                                        controllers.valueKecamatanController!,
                                    idController:
                                        controllers.idKecamatanController!,
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Kode Pos',
                                    labelForm: 'Kode Pos',
                                    labelTag: 'Label-KodePos',
                                    formTag: 'Form-KodePos',
                                    controller: controllers.kodePosController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText:
                                        'Tuliskan Alamat Domisili Tinggal',
                                    labelForm: 'Alamat Tinggal',
                                    labelTag: 'Label-AlamatTinggal',
                                    formTag: 'Form-AlamatTinggal',
                                    controller: controllers
                                        .alamatDomisiliTinggalController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. Telepon',
                                    labelForm: 'No. Telepon',
                                    labelTag: 'Label-NoTelepon',
                                    formTag: 'Form-NoTelepon',
                                    controller: controllers.noTelpController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. Telepon Lainnya',
                                    labelForm: 'No. Telepon Lainnya',
                                    labelTag: 'Label-NoTeleponLainnya',
                                    formTag: 'Form-NoTeleponLainnya',
                                    controller:
                                        controllers.noTelpLainnyaController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. Telepon Darurat',
                                    labelForm: 'No. Telepon Darurat',
                                    labelTag: 'Label-NoTelpDarurat',
                                    formTag: 'Form-NoTelpDarurat',
                                    controller:
                                        controllers.noTelpDaruratController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Nama Kontak Darurat',
                                    labelForm: 'Nama Kontak Darurat',
                                    labelTag: 'Label-KontakDarurat',
                                    formTag: 'Form-KontakDarurat',
                                    controller: controllers
                                        .namaKontakDaruratController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Contoh: Adik Kandung',
                                    labelForm: 'Hubungan Dengan Karyawan',
                                    labelTag: 'Label-HubunganKaryawan',
                                    formTag: 'Form-HubunganKaryawan',
                                    controller:
                                        controllers.hubkaryawanController!,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showAgamaMenu(context);
                                    },
                                    hintText: 'Pilih Agama',
                                    labelForm: 'Agama',
                                    labelTag: 'Label-Agama',
                                    formTag: 'Form-Agama',
                                    valueController:
                                        controllers.valueAgamaController!,
                                    idController:
                                        controllers.idAgamaController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showGolDarahMenu(context);
                                    },
                                    hintText: 'Pilih Golongan Darah',
                                    labelForm: 'Golongan Darah',
                                    labelTag: 'Label-GolonganDarah',
                                    formTag: 'Form-GolonganDarah',
                                    valueController:
                                        controllers.valueGolDarahController!,
                                    idController:
                                        controllers.idGolDarahController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showStatusNikahMenu(context);
                                    },
                                    hintText: 'Pilih Status Pernikahan',
                                    labelForm: 'Status Pernikahan',
                                    labelTag: 'Label-StatusPernikahan',
                                    formTag: 'Form-StatusPernikahan',
                                    valueController: controllers
                                        .valueStatusPernikahanController!,
                                    idController: controllers
                                        .idStatusPernikahanController!,
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showTanggunganMenu(context);
                                    },
                                    hintText: 'Pilih Jumlah Tanggungan',
                                    labelForm: 'Jumlah Tanggungan',
                                    labelTag: 'Label-JumlahTanggungan',
                                    formTag: 'Form-JumlahTanggungan',
                                    valueController: controllers
                                        .valueJumlahTanggunganController!,
                                    idController: controllers
                                        .idJumlahTanggunganController!,
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
                                  FormDateData(
                                    showRedStar: false,
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalMasukController!);
                                    },
                                    hintText: 'Pilih Tanggal',
                                    labelForm: 'Tanggal Masuk Kerja',
                                    labelTag: 'Label-TanggalMasuk',
                                    formTag: 'Form-TanggalMasuk',
                                    valueController:
                                        controllers.tanggalMasukController!,
                                    idController:
                                        controllers.tanggalMasukController!,
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
                                  FileSelectionWidget(
                                    onFileSelected: (file, fileUrl) {
                                      setState(() {
                                        fotoKaryawan = file;
                                        fileNameFotoKaryawan =
                                            file.path.split('/').last;
                                      });
                                    },
                                    title: 'Foto Karyawan',
                                    fileName: fileNameFotoKaryawan,
                                    selectedFile: fotoKaryawan,
                                  ),
                                  // FilePickerWidget(
                                  //   onFileSelected: (File? file) {
                                  //     setState(() {
                                  //       fotoKaryawan = file;
                                  //       // Dapatkan nama file dari path
                                  //       fileNameFotoKaryawan = fotoKaryawan !=
                                  //               null
                                  //           ? fotoKaryawan!.path.split('/').last
                                  //           : "";
                                  //       print(
                                  //           'Selected file: $fileNameFotoKaryawan');
                                  //     });
                                  //   },
                                  //   title: 'Foto Karyawan',
                                  //   fileName: fileNameFotoKaryawan,
                                  //   selectedFile: fotoKaryawan,
                                  // ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. KTP',
                                    labelForm: 'No. KTP',
                                    labelTag: 'Label-NoKtp',
                                    formTag: 'Form-NoKtp',
                                    controller: controllers.noKtpController!,
                                    validator: (value) {},
                                  ),
                                  FileSelectionWidget(
                                    onFileSelected: (file, fileUrl) {
                                      setState(() {
                                        ktp = file;
                                        fileNameKtp = file.path.split('/').last;
                                      });
                                    },
                                    title: 'Foto KTP',
                                    fileName: fileNameKtp,
                                    selectedFile: ktp,
                                  ),

                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Alamat Sesuai KTP',
                                    labelForm: 'Alamat Asli Sesuai KTP',
                                    labelTag: 'Label-AlamatKTP',
                                    formTag: 'Form-AlamatKTP',
                                    controller:
                                        controllers.alamatKtpController!,
                                    validator: (value) {},
                                  ),
                                  FileSelectionWidget(
                                    onFileSelected: (file, fileUrl) {
                                      setState(() {
                                        kartukeluarga = file;
                                        fileNameKk = file.path.split('/').last;
                                      });
                                    },
                                    title: 'Foto Kartu Keluarga',
                                    fileName: fileNameKk,
                                    selectedFile: kartukeluarga,
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. Kartu Keluarga',
                                    labelForm: 'No. Kartu Keluarga',
                                    labelTag: 'Label-NoKk',
                                    formTag: 'Form-NoKk',
                                    controller: controllers.noKkController!,
                                    validator: (value) {},
                                  ),
                                  FileSelectionWidget(
                                    onFileSelected: (file, fileUrl) {
                                      setState(() {
                                        npwp = file;
                                        fileNameNpwp =
                                            file.path.split('/').last;
                                      });
                                    },
                                    title: 'Foto NPWP',
                                    fileName: fileNameNpwp,
                                    selectedFile: npwp,
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. NPWP',
                                    labelForm: 'No. NPWP',
                                    labelTag: 'Label-NoNpwp',
                                    formTag: 'Form-NoNpwp',
                                    controller: controllers.noNpwpController!,
                                    validator: (value) {},
                                  ),
                                  FormDateData(
                                    showRedStar: false,
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalNpwpController!);
                                    },
                                    hintText: 'Pilih Tanggal',
                                    labelForm: 'Tanggal Berlaku NPWP',
                                    labelTag: 'Label-TanggalNpwp',
                                    formTag: 'Form-TanggalNpwp',
                                    valueController:
                                        controllers.tanggalNpwpController!,
                                    idController:
                                        controllers.tanggalNpwpController!,
                                  ),
                                  // FileSelectionWidget(
                                  //   onFileSelected: (file, fileUrl) {
                                  //     setState(() {
                                  //       bpjs = file;
                                  //       fileNameBpjs =
                                  //           file.path.split('/').last;
                                  //     });
                                  //   },
                                  //   title: 'Foto BPJS',
                                  //   fileName: fileNameBpjs,
                                  //   selectedFile: bpjs,
                                  // ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan No. BPJS Kesehatan',
                                    labelForm: 'No. BPJS Kesehatan',
                                    labelTag: 'Label-NoBpjsKes',
                                    formTag: 'Form-NoBpjsKes',
                                    controller:
                                        controllers.noBpjsKesehatanController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText:
                                        'Tuliskan No. BPJS Ketenagakerjaan',
                                    labelForm: 'No. BPJS Ketenagakerjaan',
                                    labelTag: 'Label-NoBpjsKer',
                                    formTag: 'Form-NoBpjsKer',
                                    controller: controllers
                                        .noBpjsKetenagakerjaanController!,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    showRedStar: false,
                                    onTap: () {
                                      showTipeBPJS(context);
                                    },
                                    hintText: 'Pilih Tipe BPJS',
                                    labelForm: 'Tipe BPJS',
                                    labelTag: 'Label-TipeBpjs',
                                    formTag: 'Form-TipeBpjs',
                                    valueController:
                                        controllers.valueTipeBPJSController!,
                                    idController:
                                        controllers.idTipeBPJSController!,
                                  ),
                                  FileSelectionWidget(
                                    onFileSelected: (file, fileUrl) {
                                      setState(() {
                                        berkaspendukung = file;
                                        fileNameBerkasPendukung =
                                            file.path.split('/').last;
                                      });
                                    },
                                    title: 'Berkas Pendukung Lainnya',
                                    fileName: fileNameBerkasPendukung,
                                    selectedFile: berkaspendukung,
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Keterangan',
                                    labelForm: 'Keterangan',
                                    labelTag: 'Label-KeteranganDiri',
                                    formTag: 'Form-KeteranganDiri',
                                    controller:
                                        controllers.keteranganController!,
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
                                    showRedStar: false,
                                    hintText: 'S / M / L / XL / XXL',
                                    labelForm: 'Ukuran Baju',
                                    labelTag: 'Label-UkBaju',
                                    formTag: 'Form-UkBaju',
                                    controller: controllers.ukBajuController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Contoh: 32',
                                    labelForm: 'Ukuran Celana',
                                    labelTag: 'Label-UkCelana',
                                    formTag: 'Form-UkCelana',
                                    controller: controllers.ukCelanaController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Contoh: 43',
                                    labelForm: 'Ukuran Sepatu',
                                    labelTag: 'Label-UkSepatu',
                                    formTag: 'Form-UkSepatu',
                                    controller: controllers.ukSepatuontroller!,
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
                                    showRedStar: false,
                                    onTap: () {
                                      showNamaBank(context);
                                    },
                                    hintText: 'Pilih Nama Bank',
                                    labelForm: 'Nama Bank',
                                    labelTag: 'Label-NamaBank',
                                    formTag: 'Form-NamaBank',
                                    valueController:
                                        controllers.valueNamaBankController!,
                                    idController:
                                        controllers.idNamaBankController!,
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText: 'Tuliskan Nomor Rekening',
                                    labelForm: 'Nomor Rekening',
                                    labelTag: 'Label-NoRek',
                                    formTag: 'Form-NoRek',
                                    controller: controllers.noRekController!,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    showRedStar: false,
                                    hintText:
                                        'Tuliskan Atas Nama Pemilik Rekening',
                                    labelForm: 'Atas Nama Rekening',
                                    labelTag: 'Label-NamaRek',
                                    formTag: 'Form-NamaRek',
                                    controller: controllers.atasNamaController!,
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showTahunMenu(
      BuildContext context, TextEditingController controller) async {
    DateTime currentDate = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(currentDate.year - 100),
      lastDate: DateTime(currentDate.year + 5),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: MyColorsConst.primaryColor, //
            colorScheme: ColorScheme.light(primary: MyColorsConst.primaryColor),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate != null && selectedDate != currentDate) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);

      controller.text = formattedDate;
    }
  }
}
