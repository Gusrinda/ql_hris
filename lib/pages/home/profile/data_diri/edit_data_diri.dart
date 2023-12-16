import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_zona_model.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kode_presensi.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditDataDiriPage extends StatefulWidget {
  static const routeName = '/EditDataDiriPage';
  final Biodata? bioData;

  EditDataDiriPage({super.key, this.bioData});

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
  String? selectedAgama;
  String? selectedGolDarah;
  String? selectedStatusNikah;
  String? selectedTanggungan;
  String? selectedProvinsi;
  String? selectedKotabyProvinsi;
  String? selectedKecamatan;
  File? fotoKaryawan;
  File? ktp;
  File? kartukeluarga;
  File? npwp;
  File? bpjs;
  File? berkaspendukung;
  // final _picker = ImagePicker();
  // File? uploadedFile;
  // String fileName = "";
  // String fileUrl = "";

  // Future<FilePickerResult?> uploadFile(BuildContext context) async {
  //   try {
  //     FilePickerResult? pickedFileNonCamera =
  //         await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['pdf', 'jpeg', 'jpg', 'png'],
  //     );

  //     if (pickedFileNonCamera != null) {
  //       PlatformFile file = pickedFileNonCamera.files.first;
  //       setState(() {
  //         uploadedFile = File(file.path ?? '');
  //         fileName = file.name;
  //         fileUrl = file.path ?? '';
  //       });
  //       print('Path: ${file.path}');
  //       print('File Name: $fileName');
  //       print('Size: ${file.size}');
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           duration: Duration(seconds: 2),
  //           content: Text('Gagal Mengambil File!'),
  //           backgroundColor: MyColorsConst.redColor,
  //         ),
  //       );
  //       return null;
  //     }
  //     return pickedFileNonCamera;
  //   } on PlatformException catch (e) {
  //     print('Failed to upload file: $e');
  //     return null;
  //   }
  // }

  @override
  void initState() {
    super.initState();
    controllers = DataDiriControllers(bioData: widget.bioData!);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final keluargaBloc = context.read<EditBiodataBloc>();

      keluargaBloc.add(OnSelectDivisi());
      keluargaBloc.add(OnSelectDepartemen());
      keluargaBloc.add(OnSelectPosisi());
      keluargaBloc.add(OnSelectZona());
      keluargaBloc.add(OnSelectKota());
      keluargaBloc.add(OnSelectJenisKelamin());
      keluargaBloc.add(OnSelectKodePresensi());
      keluargaBloc.add(OnSelectAgama());
      keluargaBloc.add(OnSelectGolDarah());
      keluargaBloc.add(OnSelectStatusNikah());
      keluargaBloc.add(OnSelectTanggungan());
      keluargaBloc.add(OnSelectProvinsi());
      // keluargaBloc.add(OnSelectKotabyProvinsi(
      //     idProvinsi: int.parse(controllers.idProvinsiController.text)));
    });
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
    var dataKota = context.read<EditBiodataBloc>().dataKota;
    var jenisKelamin = context.read<EditBiodataBloc>().dataJenisKelamin;
    var dataDivisi = context.read<EditBiodataBloc>().dataDivisi;
    var dataDepartemen = context.read<EditBiodataBloc>().dataDepartemen;
    var dataPosisi = context.read<EditBiodataBloc>().dataPosisi;
    var dataZona = context.read<EditBiodataBloc>().dataZona;
    var dataKodePresensi = context.read<EditBiodataBloc>().dataKodePresensi;
    var dataAgama = context.read<EditBiodataBloc>().dataAgama;
    var dataGolDarah = context.read<EditBiodataBloc>().dataGolDarah;
    var dataStatusNikah = context.read<EditBiodataBloc>().dataStatusNikah;
    var dataTanggungan = context.read<EditBiodataBloc>().dataTanggungan;
    var dataProvinsi = context.read<EditBiodataBloc>().dataProvinsi;

    void onFotoKaryawanSelected(File? file) {
      setState(() {
        fotoKaryawan = file;
      });
    }

    void onKtpSelected(File? file) {
      setState(() {
        ktp = file;
      });
    }

    void onKartuKeluargaSelected(File? file) {
      setState(() {
        kartukeluarga = file;
      });
    }

    void onNpwpSelected(File? file) {
      setState(() {
        ktp = file;
      });
    }

    void onBpjsSelected(File? file) {
      setState(() {
        ktp = file;
      });
    }

    void onBerkasPendukungSelected(File? file) {
      setState(() {
        ktp = file;
      });
    }

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
          controllers.idDivisiController.text =
              selectedDivisi.id?.toString() ?? '';
          controllers.valueDivisiController.text =
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
          controllers.idDepartemenController.text =
              selectedDepartemen.id?.toString() ?? '';
          controllers.valueDepartemenController.text =
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
          controllers.idPosisiController.text =
              selectedDivisi.id?.toString() ?? '';
          controllers.valuePosisiController.text =
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
          controllers.idZonaController.text = selectedZona.id?.toString() ?? '';
          controllers.valueZonaController.text =
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
          controllers.idKotaController.text = selectedKota.id?.toString() ?? '';
          controllers.valueKotaController.text =
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
          controllers.idJenisKelaminController.text =
              selectedJenisKelamin.id?.toString() ?? '';
          controllers.valueJenisKelaminController.text =
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

    void showKodePresensiMenu(BuildContext context) async {
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
          controllers.idKodePresensiController.text =
              selectedKodePresensi.id?.toString() ?? '';
          controllers.valueJenisKelaminController.text =
              selectedKodePresensi.kode?.toString() ?? '';

          setState(() {
            this.selectedKodePresensi = selectedKodePresensi.kode;
            print(selectedKodePresensi.kode);
            print(
                "Selected ID kode presensi Terakhir: ${selectedKodePresensi.id}");
          });
        }
      } else {
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
          controllers.idAgamaController.text =
              selectedAgama.id?.toString() ?? '';
          controllers.valueAgamaController.text =
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
          controllers.idStatusPernikahanController.text =
              selectedStatusNikah.id?.toString() ?? '';
          controllers.valueStatusPernikahanController.text =
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
          controllers.idGolDarahController.text =
              selectedGolDarah.id?.toString() ?? '';
          controllers.valueGolDarahController.text =
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
          controllers.idKodePresensiController.text =
              selectedTanggungan.id?.toString() ?? '';
          controllers.valueKodePresensiController.text =
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
          controllers.idProvinsiController.text =
              selectedProvinsi.id?.toString() ?? '';
          controllers.valueProvinsiController.text =
              selectedProvinsi.value?.toString() ?? '';

          setState(() {
            this.selectedProvinsi = selectedProvinsi.value;
            context.read<EditBiodataBloc>().add(OnSelectKotabyProvinsi(
                idProvinsi: int.parse(controllers.idProvinsiController.text)));

            print(selectedProvinsi.value);
            print("Selected ID Provinsi Terakhir: ${selectedProvinsi.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showKotabyProvinsiMenu(BuildContext context) {
      if (controllers.idProvinsiController.text.isEmpty) {
        CircularProgressIndicator();
      }

      // Dapatkan ID provinsi yang dipilih
      int selectedProvinsiId = int.parse(controllers.idProvinsiController.text);

      // Panggil fungsi untuk mendapatkan list kota berdasarkan provinsi
      context
          .read<EditBiodataBloc>()
          .add(OnSelectKotabyProvinsi(idProvinsi: selectedProvinsiId));

      // Ambil data kota berdasarkan provinsi
      List<DataGeneral> dataKotabyProvinsi =
          context.read<EditBiodataBloc>().dataKotabyProvinsi;

      if (dataKotabyProvinsi.isEmpty) {
        print("Tidak Ada Kota untuk Provinsi yang Dipilih");
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
          controllers.idKotaController.text = selectedKota.id?.toString() ?? '';
          controllers.valueKotaController.text =
              selectedKota.value?.toString() ?? '';

          setState(() {
            this.selectedKotabyProvinsi = selectedKota.value;
            context.read<EditBiodataBloc>().add(OnSelectKecamatan(
                idKota: int.parse(controllers.idKotaController.text)));
            print(selectedKota.value);
            print("Selected ID Kota Terakhir: ${selectedKota.id}");
          });
        }
      });
    }

    void showKecamatanMenu(BuildContext context) {
      if (controllers.idKotaController.text.isEmpty) {
        CircularProgressIndicator();
      }

      // Dapatkan ID provinsi yang dipilih
      int selectedKotaId = int.parse(controllers.idKotaController.text);

      // Panggil fungsi untuk mendapatkan list kota berdasarkan provinsi
      context
          .read<EditBiodataBloc>()
          .add(OnSelectKecamatan(idKota: selectedKotaId));

      // Ambil data kota berdasarkan provinsi
      List<DataGeneral> dataKecamatan =
          context.read<EditBiodataBloc>().dataKecamatan;

      if (dataKecamatan.isEmpty) {
        print("Tidak Ada Kecamatan untuk Kota yang Dipilih");
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
          controllers.idKecamatanController.text =
              selectedKecamatan.id?.toString() ?? '';
          controllers.valueKecamatanController.text =
              selectedKecamatan.value?.toString() ?? '';

          setState(() {
            this.selectedKecamatan = selectedKecamatan.value;
            print(selectedKecamatan.value);
            print("Selected ID Kota Terakhir: ${selectedKecamatan.id}");
          });
        }
      });
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
                                    onTap: () {
                                      _showDivisi(context);
                                    },
                                    hintText: 'Pilih Divisi',
                                    labelForm: 'Divisi',
                                    labelTag: 'Label-DivisiDiri',
                                    formTag: 'Form-DivisiDiri',
                                    valueController:
                                        controllers.valueDivisiController,
                                    idController:
                                        controllers.idDivisiController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      _showDepartemen(context);
                                    },
                                    hintText: 'Pilih Departemen',
                                    labelForm: 'Departemen',
                                    labelTag: 'Label-DepartemenDiri',
                                    formTag: 'Form-DepartemenDiri',
                                    valueController:
                                        controllers.valueDepartemenController,
                                    idController:
                                        controllers.idDepartemenController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      _showPosisi(context);
                                    },
                                    hintText: 'Pilih Posisi',
                                    labelForm: 'Posisi',
                                    labelTag: 'Label-PosisiDiri',
                                    formTag: 'Form-PosisiDiri',
                                    valueController:
                                        controllers.valuePosisiController,
                                    idController:
                                        controllers.idPosisiController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      _showZona(context);
                                    },
                                    hintText: 'Pilih Zona',
                                    labelForm: 'Zona',
                                    labelTag: 'Label-ZonaDiri',
                                    formTag: 'Form-ZonaDiri',
                                    valueController:
                                        controllers.valueZonaController,
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
                                    idController:
                                        controllers.idCostcentreController,
                                  ),
                                  FormTemplateSpd(
                                    onTap: () {
                                      showKodePresensiMenu(context);
                                    },
                                    hintText: 'Pilih Kode Presensi',
                                    labelForm: 'Kode Presensi',
                                    labelTag: 'Label-KodePresensi',
                                    formTag: 'Form-KodePresensi',
                                    valueController:
                                        controllers.valueKodePresensiController,
                                    idController:
                                        controllers.idKodePresensiController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {},
                                    hintText: 'Pilih Status',
                                    labelForm: 'Status',
                                    labelTag: 'Label-StatusDiri',
                                    formTag: 'Form-StatusDiri',
                                    valueController:
                                        controllers.valueStatusController,
                                    idController:
                                        controllers.idStatusController,
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
                                    controller:
                                        controllers.namaLengkapController,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    hintText: 'Tuliskan Nama Panggilan',
                                    labelForm: 'Nama Panggilan',
                                    labelTag: 'Label-NamaPanggilan',
                                    formTag: 'Form-NamaPanggilan',
                                    controller:
                                        controllers.namaPanggilanController,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showGenderMenu(context);
                                    },
                                    hintText: 'Pilih Jenis Kelamin',
                                    labelForm: 'Jenis Kelamin',
                                    labelTag: 'Label-JenisKelamin',
                                    formTag: 'Form-JenisKelamin',
                                    valueController:
                                        controllers.valueJenisKelaminController,
                                    idController:
                                        controllers.valueJenisKelaminController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showKotaMenu(context);
                                    },
                                    hintText: 'Pilih Tempat Lahir',
                                    labelForm: 'Tempat Lahir',
                                    labelTag: 'Label-TempatLahir',
                                    formTag: 'Form-TempatLahir',
                                    valueController:
                                        controllers.valueTempatLahirController,
                                    idController:
                                        controllers.idTempatLahirController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalLahirController);
                                    },
                                    hintText: 'Pilih Tanggal Lahir',
                                    labelForm: 'Tanggal Lahir',
                                    labelTag: 'Label-TanggalLahir',
                                    formTag: 'Form-TanggalLahir',
                                    valueController:
                                        controllers.tanggalLahirController,
                                    idController:
                                        controllers.tanggalLahirController,
                                  ),
                                  FormInputData(
                                    hintText: 'Tuliskan Alamat Tinggal',
                                    labelForm: 'Alamat Tinggal',
                                    labelTag: 'Label-AlamatTinggal',
                                    formTag: 'Form-AlamatTinggal',
                                    controller:
                                        controllers.alamatTinggalController,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showProvinsiMenu(context);
                                    },
                                    hintText: 'Pilih Provinsi',
                                    labelForm: 'Provinsi',
                                    labelTag: 'Label-Provinsi',
                                    formTag: 'Form-Provinsi',
                                    valueController:
                                        controllers.valueProvinsiController,
                                    idController:
                                        controllers.idProvinsiController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showKotabyProvinsiMenu(context);
                                    },
                                    hintText: 'Pilih Kota',
                                    labelForm: 'Kota',
                                    labelTag: 'Label-Kota',
                                    formTag: 'Form-Kota',
                                    valueController:
                                        controllers.valueKotaController,
                                    idController: controllers.idKotaController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showKecamatanMenu(context);
                                    },
                                    hintText: 'Pilih Kecamatan',
                                    labelForm: 'Kecamatan',
                                    labelTag: 'Label-Kecamatan',
                                    formTag: 'Form-Kecamatan',
                                    valueController:
                                        controllers.valueKecamatanController,
                                    idController:
                                        controllers.idKecamatanController,
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
                                    controller:
                                        controllers.noTelpLainnyaController,
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
                                    hintText:
                                        'Tuliskan Hubungan Dengan Karyawan',
                                    labelForm: 'Hubungan Dengan Karyawan',
                                    labelTag: 'Label-HubunganKaryawan',
                                    formTag: 'Form-HubunganKaryawan',
                                    controller:
                                        controllers.hubkaryawanController,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showAgamaMenu(context);
                                    },
                                    hintText: 'Pilih Agama',
                                    labelForm: 'Agama',
                                    labelTag: 'Label-Agama',
                                    formTag: 'Form-Agama',
                                    valueController:
                                        controllers.valueAgamaController,
                                    idController: controllers.idAgamaController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showGolDarahMenu(context);
                                    },
                                    hintText: 'Pilih Golongan Darah',
                                    labelForm: 'Golongan Darah',
                                    labelTag: 'Label-GolonganDarah',
                                    formTag: 'Form-GolonganDarah',
                                    valueController:
                                        controllers.valueGolDarahController,
                                    idController:
                                        controllers.idGolDarahController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showStatusNikahMenu(context);
                                    },
                                    hintText: 'Pilih Status Pernikahan',
                                    labelForm: 'Status Pernikahan',
                                    labelTag: 'Label-StatusPernikahan',
                                    formTag: 'Form-StatusPernikahan',
                                    valueController: controllers
                                        .valueStatusPernikahanController,
                                    idController: controllers
                                        .idStatusPernikahanController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showTanggunganMenu(context);
                                    },
                                    hintText: 'Pilih Jumlah Tanggungan',
                                    labelForm: 'Jumlah Tanggungan',
                                    labelTag: 'Label-JumlahTanggungan',
                                    formTag: 'Form-JumlahTanggungan',
                                    valueController: controllers
                                        .valueJumlahTanggunganController,
                                    idController: controllers
                                        .idJumlahTanggunganController,
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
                                    enabled: false,
                                    controller:
                                        controllers.jatahCutiRegController,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    hintText: 'Sisa Cuti Reguler',
                                    labelForm: 'Sisa Cuti Reguler',
                                    labelTag: 'Label-SisaCutiReguler',
                                    formTag: 'Form-SisaCutiReguler',
                                    enabled: false,
                                    controller:
                                        controllers.sisaCutiRegController,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    hintText: 'Jatah Cuti Masa Kerja',
                                    labelForm: 'Jatah Cuti Masa Kerja',
                                    labelTag: 'Label-JatahCutiMasaKerja',
                                    formTag: 'Form-JatahCutiMasaKerja',
                                    controller:
                                        controllers.jatahCutiKerjaController,
                                    validator: (value) {},
                                  ),
                                  FormInputData(
                                    hintText: 'Sisa Cuti Masa Kerja',
                                    labelForm: 'Sisa Cuti Masa Kerja',
                                    labelTag: 'Label-SisaCutiMasaKerja',
                                    formTag: 'Form-SisaCutiMasaKerja',
                                    enabled: false,
                                    controller:
                                        controllers.sisaCutiKerjaController,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalMasukController);
                                    },
                                    hintText: 'Pilih Tanggal',
                                    labelForm: 'Tanggal Masuk Kerja',
                                    labelTag: 'Label-TanggalMasuk',
                                    formTag: 'Form-TanggalMasuk',
                                    valueController:
                                        controllers.tanggalMasukController,
                                    idController:
                                        controllers.tanggalMasukController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalLahirController);
                                    },
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
                                  FileUploadWidget(
                                    label: 'Foto Karyawan',
                                    onFileSelected: onFotoKaryawanSelected,
                                  ),

                                  // FormInputData(
                                  //   hintText: 'Foto Karyawan',
                                  //   labelForm: 'Foto Karyawan',
                                  //   labelTag: 'Label-FotoKaryawan',
                                  //   formTag: 'Form-FotoKaryawan',
                                  //   controller:
                                  //       controllers.fotoKaryawanController,
                                  //   validator: (value) {},
                                  // ),
                                  FileUploadWidget(
                                    label: 'Foto KTP',
                                    onFileSelected: onKtpSelected,
                                  ),
                                  // FormInputData(
                                  //   hintText: 'Foto KTP',
                                  //   labelForm: 'Foto KTP',
                                  //   labelTag: 'Label-FotoKTP',
                                  //   formTag: 'Form-FotoKTP',
                                  //   controller: controllers.fotoKtpController,
                                  //   validator: (value) {},
                                  // ),
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
                                  FileUploadWidget(
                                    label: 'Foto Kartu Keluarga',
                                    onFileSelected: onKartuKeluargaSelected,
                                  ),
                                  // FormInputData(
                                  //   hintText: 'Foto Kartu Keluarga',
                                  //   labelForm: 'Foto Kartu Keluarga',
                                  //   labelTag: 'Label-FotoKK',
                                  //   formTag: 'Form-FotoKK',
                                  //   controller: controllers.fotoKkController,
                                  //   validator: (value) {},
                                  // ),
                                  FormInputData(
                                    hintText: 'Tuliskan No. Kartu Keluarga',
                                    labelForm: 'No. Kartu Keluarga',
                                    labelTag: 'Label-NoKk',
                                    formTag: 'Form-NoKk',
                                    controller: controllers.noKkController,
                                    validator: (value) {},
                                  ),
                                  FileUploadWidget(
                                    label: 'Foto NPWP',
                                    onFileSelected: onNpwpSelected,
                                  ),
                                  // FormInputData(
                                  //   hintText: 'Foto NPWP',
                                  //   labelForm: 'Foto NPWP',
                                  //   labelTag: 'Label-FotoNpwp',
                                  //   formTag: 'Form-FotoNpwp',
                                  //   controller: controllers.fotoNpwpController,
                                  //   validator: (value) {},
                                  // ),
                                  FormInputData(
                                    hintText: 'Tuliskan No. NPWP',
                                    labelForm: 'No. NPWP',
                                    labelTag: 'Label-NoNpwp',
                                    formTag: 'Form-NoNpwp',
                                    controller: controllers.noNpwpController,
                                    validator: (value) {},
                                  ),
                                  FormDropDownData(
                                    onTap: () {
                                      showTahunMenu(context,
                                          controllers.tanggalLahirController);
                                    },
                                    hintText: 'Pilih Tanggal',
                                    labelForm: 'Tanggal Berlaku NPWP',
                                    labelTag: 'Label-TanggalNpwp',
                                    formTag: 'Form-TanggalNpwp',
                                    valueController:
                                        controllers.tanggalNpwpController,
                                    idController:
                                        controllers.tanggalNpwpController,
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
                                    idController:
                                        controllers.idTipeBpjsController,
                                  ),
                                  FileUploadWidget(
                                    label: 'Foto KTP',
                                    onFileSelected: onBerkasPendukungSelected,
                                  ),
                                  // FormInputData(
                                  //   hintText: 'Berkas Pendukung Lainnya',
                                  //   labelForm: 'Berkas Pendukung Lainnya',
                                  //   labelTag: 'Label-BerkasPendukung',
                                  //   formTag: 'Form-BerkasPendukung',
                                  //   controller:
                                  //       controllers.berkasLainnyaController,
                                  //   validator: (value) {},
                                  // ),
                                  FormInputData(
                                    hintText: 'Tuliskan Keterangan',
                                    labelForm: 'Keterangan',
                                    labelTag: 'Label-KeteranganDiri',
                                    formTag: 'Form-KeteranganDiri',
                                    controller:
                                        controllers.keteranganController,
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
                                    idController:
                                        controllers.idPeriodeGajiController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {},
                                    hintText: 'Pilih Tipe Pembayaran',
                                    labelForm: 'Pilih Tipe Pembayaran',
                                    labelTag: 'Label-TipeBayar',
                                    formTag: 'Form-TipeBayar',
                                    valueController: controllers
                                        .valueTipePembayaranController,
                                    idController:
                                        controllers.idTipePembayaranController,
                                  ),
                                  FormDropDownData(
                                    onTap: () {},
                                    hintText: 'Pilih Metode Pembayaran',
                                    labelForm: 'Metode Pembayaran',
                                    labelTag: 'Label-MetodeBayar',
                                    formTag: 'Form-MetodeBayar',
                                    valueController: controllers
                                        .valueMetodePembayaranController,
                                    idController: controllers
                                        .idMetodePembayaranController,
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
                                    hintText:
                                        'Tuliskan Atas Nama Pemilik Rekening',
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
      String formattedDate = DateFormat('dd-MM-yyyy').format(selectedDate);

      controller.text = formattedDate;
    }
  }
}
