import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/direktorat_search.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/jenisspd_search.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/lokasi_search.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/pic_search.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/posisi_search.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/search_departemen.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/search_divisi.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/templatespd_search.dart.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/zona_search.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_direktorat_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_jenisspd_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_lokasitujuan_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_templatespd_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_zona_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';
import 'package:http/http.dart' as http;

class EditDinasPage extends StatefulWidget {
  static const routeName = '/EditDinasPage';
  EditDinasPage({
    super.key,
    required this.dinasId,
    this.jenisSpd,
    this.jenisSpdId,
    this.zonaAwal,
    this.zonaAwalId,
    this.zonaTujuan,
    this.zonaTujuanId,
    this.lokasiTujuan,
    this.lokasiTujuanId,
    this.templateSpd,
    this.templateSpdId,
    this.tanggalAwal,
    this.tanggalAkhir,
    this.posisi,
    this.posisiId,
    this.divisiId,
    this.divisiValue,
    this.deptId,
    this.deptValue,
    this.direktoratId,
    this.direktoratValue,
    this.tanggal,
    this.isKendDinas,
    this.namaKend,
    this.dataDinas,
    required this.reloadDataCallback,
    // required this.reloadDataCallback,
  });
  // final VoidCallback reloadDataCallback;
  final int? dinasId;
  final String? jenisSpd;
  final int? jenisSpdId;
  final String? zonaAwal;
  final int? zonaAwalId;
  final String? zonaTujuan;
  final int? zonaTujuanId;
  final String? lokasiTujuan;
  final int? lokasiTujuanId;
  final String? templateSpd;
  final int? templateSpdId;
  final String? tanggalAwal;
  final String? tanggalAkhir;
  final String? posisi;
  final int? posisiId;
  final int? divisiId;
  final String? divisiValue;
  final int? deptId;
  final String? deptValue;
  final int? direktoratId;
  final String? direktoratValue;
  final String? tanggal;
  final bool? isKendDinas;
  final String? namaKend;
  final DataDinas? dataDinas;
  final VoidCallback reloadDataCallback;

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

  // TemplateSpd Controller
  final TextEditingController? idTemplateSpdController =
      TextEditingController();
  final TextEditingController? valueTemplateSpdController =
      TextEditingController();

  // Direktorat Controller
  final TextEditingController idDirektoratController = TextEditingController();
  final TextEditingController valueDirektoratController =
      TextEditingController();

  // Tanggal Controller
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController tanggalAwalController = TextEditingController();
  final TextEditingController tanggalAkhirController = TextEditingController();

  // Jenis Spd Controller
  final TextEditingController idJenisSpdController = TextEditingController();
  final TextEditingController valueJenisSpdController = TextEditingController();

  // Zona Asal Controller
  final TextEditingController idZonaAsalController = TextEditingController();
  final TextEditingController valueZonaAsalController = TextEditingController();

  // Zona Tujuan Controller
  final TextEditingController idZonaTujuanController = TextEditingController();
  final TextEditingController valueZonaTujuanController =
      TextEditingController();

  // Lokasi Tujuan Controller
  final TextEditingController idLokasiTujuanController =
      TextEditingController();
  final TextEditingController valueLokasiTujuanController =
      TextEditingController();

  // Pic Controller
  final TextEditingController idPicController = TextEditingController();
  final TextEditingController valuePicController = TextEditingController();

  // kend Dinas
  final TextEditingController kendDinasController = TextEditingController();

  final TextEditingController? catatanController = TextEditingController();

  @override
  State<EditDinasPage> createState() => _EditDinasPageState();
}

class _EditDinasPageState extends State<EditDinasPage> {
  String? selectedDivisi;
  String? selectedDepartemen;
  String? selectedPosisi;
  String? selectedTemplateSpd;
  String? selectedDirektorat;
  String? selectedJenisSpd;
  String? selectedZonaAsal;
  String? selectedZonaTujuan;
  String? selectedLokasiTujuan;
  String? selectedPic;
  DateTime? selectedDate;
  DateTime? selectedTanggal;
  DateTime? selectedTanggalAwal;
  DateTime? selectedTanggalAkhir;
  int? _kendDinas;
  int weekdaysCount = 0;

  int currentStep = 0;
  late GlobalKey<FormState> _formKeyStep1;
  late GlobalKey<FormState> _formKeyStep2;
  late GlobalKey<FormState> _formKeyStep3;
  @override
  void initState() {
    super.initState();
    _formKeyStep1 = GlobalKey<FormState>();
    _formKeyStep2 = GlobalKey<FormState>();
    _formKeyStep3 = GlobalKey<FormState>();

    widget.idDivisiController.text = widget.divisiId.toString();
    widget.valueDivisiController.text = widget.divisiValue.toString();

    widget.idDepartemenController.text = widget.deptId.toString();
    widget.valueDepartemenController.text = widget.deptValue ?? '';

    widget.idPosisiController.text = widget.posisiId.toString();
    widget.valuePosisiController.text = widget.posisi ?? '';

    widget.idTemplateSpdController!.text = widget.templateSpdId.toString();
    widget.valueTemplateSpdController!.text = widget.templateSpd ?? '';

    widget.idDirektoratController.text = widget.direktoratId.toString();
    widget.valueDirektoratController.text = widget.direktoratValue ?? '';

    widget.idJenisSpdController.text = widget.jenisSpdId.toString();
    widget.valueJenisSpdController.text = widget.jenisSpd ?? '';

    widget.idZonaAsalController.text = widget.zonaAwalId.toString();
    widget.valueZonaAsalController.text = widget.zonaTujuan ?? '';

    widget.idZonaTujuanController.text = widget.zonaTujuanId.toString();
    widget.valueZonaTujuanController.text = widget.zonaTujuan ?? '';

    widget.idLokasiTujuanController.text = widget.lokasiTujuanId.toString();
    widget.valueLokasiTujuanController.text = widget.lokasiTujuan ?? '';

    widget.idPicController.text = widget.dataDinas!.picId.toString();
    widget.valuePicController.text = widget.dataDinas?.namaPic ?? "";

    widget.tanggalController.text = widget.tanggal ?? '';
    widget.tanggalAwalController.text = widget.tanggalAwal ?? '';
    widget.tanggalAkhirController.text = widget.tanggalAkhir ?? '';

    widget.catatanController!.text = widget.dataDinas!.catatanKend ?? '';

    if (widget.dataDinas?.isKendDinas == true) {
      _kendDinas = 1
      widget.kendDinasController.text = 1.toString();
    } else {
      _kendDinas = 0;
      widget.kendDinasController.text = 0.toString();
    }

    weekdaysCount = widget.dataDinas!.interval!;

    selectedTanggal = parseDateString(widget.tanggal);
    selectedTanggalAwal = parseDateString(widget.tanggalAwal);
    selectedTanggalAkhir = parseDateString(widget.tanggalAkhir);
  }

  DateTime? parseDateString(String? date) {
    try {
      if (date != null) {
        final List<String> dateParts = date.split('/');
        final day = int.parse(dateParts[0]);
        final month = int.parse(dateParts[1]);
        final year = int.parse(dateParts[2]);
        return DateTime(year, month, day);
      }
    } catch (e) {
      print("Error parsing date string: $e");
    }
    return null;
  }

  List<String> buttonTexts = ['Selanjutnya', 'Selanjutnya', 'Kirim Revisi'];
  late AddDinasBloc addDinasBloc;

  continueStep() {
    switch (currentStep) {
      case 0:
        if (_formKeyStep1.currentState?.validate() ?? false) {
          setState(() {
            currentStep = currentStep + 1;
          });
        }
        break;
      case 1:
        // Validate date fields before proceeding to the next step
        if (_validateDateFields()) {
          setState(() {
            currentStep = currentStep + 1;
          });
        }
        break;
      case 2:
        if (_formKeyStep3.currentState?.validate() ?? false) {
          // Navigasi ke halaman baru di sini
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DinasPage()),
          );
        }
        break;
      default:
        break;
    }
  }

  bool _validateDateFields() {
    // Validate date fields manually
    if (selectedTanggal == null) {
      // Show an error message or handle validation failure
      return false;
    }
    if (selectedTanggalAwal == null) {
      // Show an error message or handle validation failure
      return false;
    }
    if (selectedTanggalAkhir == null) {
      // Show an error message or handle validation failure
      return false;
    }
    return true;
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
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          TextButtonCustomV1(
            height: 50,
            backgroundColor: MyColorsConst.primaryColor.withOpacity(0.1),
            textColor: MyColorsConst.primaryColor,
            onPressed: () {
              if (currentStep == 2) {
                context.read<AddDinasBloc>().add(
                      EditDinasSubmited(
                          spdID: widget.dinasId ?? -99,
                          divisi: int.parse(widget.idDivisiController.text),
                          departemen:
                              int.parse(widget.idDepartemenController.text),
                          posisi: int.parse(widget.idPosisiController.text),
                          templateSpd:
                              widget.idTemplateSpdController?.text != null
                                  ? int.tryParse(
                                      widget.idTemplateSpdController!.text)
                                  : null,
                          // direktorat:
                          //     int.parse(widget.idDirektoratController!.text),
                          tanggal: widget.tanggalController.text,
                          tanggalAwal: widget.tanggalAwalController.text,
                          tanggalAkhir: widget.tanggalAkhirController.text,
                          jenisSpd: int.parse(widget.idJenisSpdController.text),
                          zonaAsal: int.parse(widget.idZonaAsalController.text),
                          zonaTujuan:
                              int.parse(widget.idZonaTujuanController.text),
                          lokasiTujuan:
                              int.parse(widget.idLokasiTujuanController.text),
                          pic: int.tryParse(widget.idPicController.text) ?? -99,
                          kendDinas: int.parse(widget.kendDinasController.text),
                          desc: widget.catatanController?.value.text),
                    );
              } else {
                continueStep();
              }
            },
            text: buttonTexts[currentStep],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataDivisi = context.read<AddDinasBloc>().dataDivisi;
    var dataDepartemen = context.read<AddDinasBloc>().dataDepartemen;
    var dataPosisi = context.read<AddDinasBloc>().dataPosisi;
    var dataTemplateSpd = context.read<AddDinasBloc>().dataTemplateSpd;
    var dataDirektorat = context.read<AddDinasBloc>().dataDirektorat;
    var dataJenisSpd = context.read<AddDinasBloc>().dataJenisSpd;
    var dataZona = context.read<AddDinasBloc>().dataZona;
    var dataLokasi = context.read<AddDinasBloc>().dataLokasiTujuan;
    var dataPic = context.read<AddDinasBloc>().dataPic;

    void _showDivisi(BuildContext context) async {
      if (dataDivisi.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectDivisi());
        dataDivisi = context.read<AddDinasBloc>().dataDivisi;
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
          widget.idDivisiController.text = selectedDivisi.id?.toString() ?? '';
          widget.valueDivisiController.text =
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
        context.read<AddDinasBloc>().add(OnSelectDepartemen());
        dataDepartemen = context.read<AddDinasBloc>().dataDepartemen;
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
          widget.idDepartemenController.text =
              selectedDepartemen.id?.toString() ?? '';
          widget.valueDepartemenController.text =
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
        context.read<AddDinasBloc>().add(OnSelectPosisi());
        dataPosisi = context.read<AddDinasBloc>().dataPosisi;
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
          widget.idPosisiController.text = selectedDivisi.id?.toString() ?? '';
          widget.valuePosisiController.text =
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

    void _showTemplateSpd(BuildContext context) async {
      if (dataTemplateSpd.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectTemplateSpd());
        dataTemplateSpd = context.read<AddDinasBloc>().dataTemplateSpd;
      }

      if (dataTemplateSpd.isNotEmpty) {
        final selectedTemplateSpdValue = await showSearch<DataTemplateSpd?>(
          context: context,
          delegate: TemplateSpdSearchDelegate(
            dataTemplateSpd: dataTemplateSpd,
            filteredData: dataTemplateSpd,
          ),
        );

        if (selectedTemplateSpdValue != null) {
          widget.valueTemplateSpdController!.text =
              selectedTemplateSpdValue.kode?.toString() ?? '';
          widget.idTemplateSpdController!.text =
              selectedTemplateSpdValue.id?.toString() ?? '';

          widget.valueDivisiController.text =
              selectedTemplateSpdValue.mDivisiNama?.toString() ?? '';
          widget.idDivisiController.text =
              selectedTemplateSpdValue.mDivisiId?.toString() ?? '';

          widget.valueDepartemenController.text =
              selectedTemplateSpdValue.mDeptNama?.toString() ?? '';
          widget.idDepartemenController.text =
              selectedTemplateSpdValue.mDeptId?.toString() ?? '';

          widget.valuePosisiController.text =
              selectedTemplateSpdValue.mPosisiDescKerja?.toString() ?? '';
          widget.idPosisiController.text =
              selectedTemplateSpdValue.mPosisiId?.toString() ?? '';

          widget.valueDirektoratController.text =
              selectedTemplateSpdValue.mDirNama?.toString() ?? '';
          widget.idDirektoratController.text =
              selectedTemplateSpdValue.mDirId?.toString() ?? '';

          // widget.valueJenisSpdController.text =
          // selectedTemplateSpdValue.?.toString() ?? '';
          //  widget.idPicController.text =
          // selectedTemplateSpdValue.?.toString() ?? '';

          setState(() {
            this.selectedTemplateSpd = selectedTemplateSpdValue.kode;
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showDirektorat(BuildContext context) async {
      if (dataDirektorat.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectDirektorat());
        dataDirektorat = context.read<AddDinasBloc>().dataDirektorat;
      }

      if (dataDirektorat.isNotEmpty) {
        final selectedDirektorat = await showSearch<DataDirektorat?>(
          context: context,
          delegate: DirektoratSearchDelegate(
            dataDirektorat: dataDirektorat,
            filteredData: dataDirektorat,
          ),
        );

        if (selectedDirektorat != null) {
          widget.idDirektoratController!.text =
              selectedDirektorat.id?.toString() ?? '';
          widget.valueDirektoratController.text =
              selectedDirektorat.nama?.toString() ?? '';

          // widget.valueDirektoratController.text =
          //     selectedDirektorat.id?.toString() ?? '';

          setState(() {
            this.selectedDirektorat = selectedDirektorat.nama;
            print(selectedDirektorat.nama);
            print("Selected ID Kota: ${selectedDirektorat.id}");
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

    void _showJenisSpd(BuildContext context) async {
      if (dataJenisSpd.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectJenisSpd());
        dataJenisSpd = context.read<AddDinasBloc>().dataJenisSpd;
      }

      if (dataJenisSpd.isNotEmpty) {
        final selectedJenisSpd = await showSearch<DataJenisSpd?>(
          context: context,
          delegate: JenisSpdSearchDelegate(
            dataJenisSpd: dataJenisSpd,
            filteredData: dataJenisSpd,
          ),
        );

        if (selectedJenisSpd != null) {
          widget.idJenisSpdController.text =
              selectedJenisSpd.id?.toString() ?? '';
          widget.valueJenisSpdController.text =
              selectedJenisSpd.value?.toString() ?? '';

          setState(() {
            this.selectedJenisSpd = selectedJenisSpd.value;
            print(selectedJenisSpd.value);
            print("Selected ID Kota: ${selectedJenisSpd.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showZonaAsal(BuildContext context) async {
      if (dataZona.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectZona());
        dataZona = context.read<AddDinasBloc>().dataZona;
      }

      if (dataZona.isNotEmpty) {
        final selectedZonaAsal = await showSearch<DataZona?>(
          context: context,
          delegate: ZonaSearchDelegate(
            dataZona: dataZona,
            filteredData: dataZona,
          ),
        );

        if (selectedZonaAsal != null) {
          widget.idZonaAsalController.text =
              selectedZonaAsal.id?.toString() ?? '';
          widget.valueZonaAsalController.text =
              selectedZonaAsal.nama?.toString() ?? '';

          setState(() {
            this.selectedZonaAsal = selectedZonaAsal.nama;
            print(selectedZonaAsal.nama);
            print("Selected ID Kota: ${selectedZonaAsal.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showZonaTujuan(BuildContext context) async {
      if (dataZona.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectZona());
        dataZona = context.read<AddDinasBloc>().dataZona;
      }

      if (dataZona.isNotEmpty) {
        final selectedZonaTujuan = await showSearch<DataZona?>(
          context: context,
          delegate: ZonaSearchDelegate(
            dataZona: dataZona,
            filteredData: dataZona,
          ),
        );

        if (selectedZonaTujuan != null) {
          widget.idZonaTujuanController.text =
              selectedZonaTujuan.id?.toString() ?? '';
          widget.valueZonaTujuanController.text =
              selectedZonaTujuan.nama?.toString() ?? '';

          setState(() {
            this.selectedZonaTujuan = selectedZonaTujuan.nama;
            print(selectedZonaTujuan.nama);
            print("Selected ID Kota: ${selectedZonaTujuan.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showLokasiTujuan(BuildContext context) async {
      if (dataLokasi.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectLokasiTujuan());
        dataLokasi = context.read<AddDinasBloc>().dataLokasiTujuan;
      }

      if (dataLokasi.isNotEmpty) {
        final selectedLokasiTujuan = await showSearch<DataLokasiTujuan?>(
          context: context,
          delegate: LokasiTujuanSearchDelegate(
            dataLokasi: dataLokasi,
            filteredData: dataLokasi,
          ),
        );

        if (selectedLokasiTujuan != null) {
          widget.idLokasiTujuanController.text =
              selectedLokasiTujuan.id?.toString() ?? '';
          widget.valueLokasiTujuanController.text =
              selectedLokasiTujuan.nama?.toString() ?? '';

          setState(() {
            this.selectedLokasiTujuan = selectedLokasiTujuan.nama;
            print(selectedLokasiTujuan.nama);
            print("Selected ID Kota: ${selectedLokasiTujuan.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void _showPic(BuildContext context) async {
      if (dataPic.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectPic());
        dataPic = context.read<AddDinasBloc>().dataPic;
      }

      if (dataPic.isNotEmpty) {
        final selectedPic = await showSearch<DataPic?>(
          context: context,
          delegate: PicSearchDelegate(
            dataPic: dataPic,
            filteredData: dataPic,
          ),
        );

        if (selectedPic != null) {
          widget.idPicController.text = selectedPic.id?.toString() ?? '';
          widget.valuePicController.text = selectedPic.name?.toString() ?? '';

          setState(() {
            this.selectedPic = selectedPic.name;
            print(selectedPic.name);
            print("Selected ID Kota: ${selectedPic.id}");
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
      child: BlocListener<AddDinasBloc, AddDinasState>(
        listener: (context, state) async {
          if (state is AddDinasLoading) {
            LoadingDialog.showLoadingDialog(context);
          } else if (state is AddDinasSuccess) {
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
            // Navigator.of(context).popUntil((route) => route.isFirst);
            widget.reloadDataCallback();
          } else if (state is AddDinasFailed) {
            LoadingDialog.dismissDialog(context);
            await showDialog(
              context: context,
              builder: (_) => DialogCustom(
                state: DialogCustomItem.error,
                message: state.message,
              ),
            );
          } else if (state is AddDinasFailedUserExpired) {
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
          } else if (state is AddDinasFailedInBackground) {
            LoadingDialog.dismissDialog(context);
            Navigator.of(context)
                .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
          } else {
            LoadingDialog.dismissDialog(context);
          }
        },
        child: Scaffold(
          // appBar: appBarCustomV1(
          //   title: "Revisi Perjalanan Dinas",
          //   padLeft: 8,
          // ),
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
                        width: size.width * 0.5 / 8,
                      ),
                      Expanded(
                        child: Text(
                          "Revisi Pengajuan Perjalanan Dinas",
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
                      padding: const EdgeInsets.all(18.0),
                      child: BlocBuilder<AddDinasBloc, AddDinasState>(
                        builder: (context, state) {
                          return Stepper(
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
                                  'Jabatan',
                                  style: GoogleFonts.poppins(fontSize: 10),
                                ),
                                title: SizedBox.shrink(),
                                content: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  key: _formKeyStep1,
                                  child: Column(
                                    children: [
                                      FormTemplateSpd(
                                        input: selectedTemplateSpd ?? '',
                                        onTap: () {
                                          _showTemplateSpd(context);
                                        },
                                        idController:
                                            widget.idTemplateSpdController!,
                                        valueController:
                                            widget.valueTemplateSpdController!,
                                        labelForm: 'Template SPD',
                                        hintText: 'Cari Template SPD',
                                        labelTag: 'Label-TemplateSPd',
                                        formTag: 'Form-TemplateSpd',
                                        // validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return 'Pilih Template SPD';
                                        //   }
                                        //   return null;
                                        // },
                                        errorTextStyle: GoogleFonts.poppins(
                                          fontSize: 8,
                                        ),
                                      ),
                                      // FormDropDownData(
                                      //   showRedStar: false,
                                      //   input: selectedDirektorat ?? '',
                                      //   onTap: () {
                                      //     _showDirektorat(context);
                                      //   },
                                      //   idController:
                                      //       widget.idDirektoratController,
                                      //   valueController:
                                      //       widget.valueDirektoratController,
                                      //   labelForm: 'Direktorat',
                                      //   hintText: 'Pilih Direktorat',
                                      //   labelTag: 'Label-Direktorat',
                                      //   formTag: 'Form-Direktorat',
                                      //   validator: (value) {
                                      //     if (value == null || value.isEmpty) {
                                      //       return 'Pilih Direktorat';
                                      //     }
                                      //     return null;
                                      //   },
                                      //   errorTextStyle:
                                      //       GoogleFonts.poppins(fontSize: 8),
                                      // ),
                                      FormDropDownData(
                                        input: selectedDivisi ?? '',
                                        onTap: () {
                                          _showDivisi(context);
                                        },
                                        idController: widget.idDivisiController,
                                        valueController:
                                            widget.valueDivisiController,
                                        labelForm: 'Divisi',
                                        hintText: 'Pilih Divisi',
                                        labelTag: 'Label-Divisi',
                                        formTag: 'Form-Divisi',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Divisi';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: selectedDepartemen ?? '',
                                        onTap: () {
                                          _showDepartemen(context);
                                        },
                                        idController:
                                            widget.idDepartemenController,
                                        valueController:
                                            widget.valueDepartemenController,
                                        labelForm: 'Departemen',
                                        hintText: 'Pilih Departemen',
                                        labelTag: 'Label-Departemen',
                                        formTag: 'Form-Departemen',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Departemen';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: selectedPosisi ?? '',
                                        onTap: () {
                                          _showPosisi(context);
                                        },
                                        idController: widget.idPosisiController,
                                        valueController:
                                            widget.valuePosisiController,
                                        labelForm: 'Posisi',
                                        hintText: 'Pilih Posisi',
                                        labelTag: 'Label-Posisi',
                                        formTag: 'Form-Posisi',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Posisi';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: selectedPic ?? '',
                                        onTap: () {
                                          _showPic(context);
                                        },
                                        idController: widget.idPicController,
                                        valueController:
                                            widget.valuePicController,
                                        labelForm: 'Pic',
                                        hintText: 'Pilih Pic',
                                        labelTag: 'Label-Pic',
                                        formTag: 'Form-Pic',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Pic';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                    ],
                                  ),
                                ),
                                isActive: currentStep >= 0,
                                state: currentStep >= 0
                                    ? StepState.complete
                                    : StepState.disabled,
                              ),
                              Step(
                                label: Text(
                                  'Tanggal',
                                  style: GoogleFonts.poppins(fontSize: 10),
                                ),
                                title: SizedBox.shrink(),
                                content: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  key: _formKeyStep2,
                                  child: Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            children: [
                                              FormTextLabel(
                                                label: "Tanggal Pengajuan",
                                                labelColor:
                                                    MyColorsConst.darkColor,
                                              ),
                                              SizedBox(width: 2.sp),
                                              Text(
                                                '*',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          _buildDateTextField(
                                            "Pilih Tanggal",
                                            widget.tanggalController,
                                            selectedTanggal,
                                            (selectedDate) {
                                              setState(() {
                                                selectedTanggal = selectedDate;
                                              });
                                            },
                                            (value) {
                                              if (value == null) {
                                                return 'Pilih Tanggal';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 30.sp,
                                          ),
                                          Row(
                                            children: [
                                              FormTextLabel(
                                                label: "Tanggal Acara Awal",
                                                labelColor:
                                                    MyColorsConst.darkColor,
                                              ),
                                              SizedBox(width: 2.sp),
                                              Text(
                                                '*',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          _buildDateTextField(
                                            "Pilih Tanggal Acara Awal",
                                            widget.tanggalAwalController,
                                            selectedTanggalAwal,
                                            (selectedDate) {
                                              setState(() {
                                                selectedTanggalAwal =
                                                    selectedDate;
                                              });
                                            },
                                            (value) {
                                              if (value == null) {
                                                return 'Pilih Tanggal Acara Awal';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 30.sp,
                                          ),
                                          Row(
                                            children: [
                                              FormTextLabel(
                                                label: "Tanggal Acara Akhir",
                                                labelColor:
                                                    MyColorsConst.darkColor,
                                              ),
                                              SizedBox(width: 2.sp),
                                              Text(
                                                '*',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          _buildDateTextField(
                                            "Pilih Tanggal Acara Akhir",
                                            widget.tanggalAkhirController,
                                            selectedTanggalAkhir,
                                            (selectedDate) {
                                              setState(() {
                                                selectedTanggalAkhir =
                                                    selectedDate;
                                              });
                                            },
                                            (value) {
                                              if (value == null) {
                                                return 'Pilih Tanggal Acara Akhir';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Text.rich(
                                                TextSpan(
                                                  text: 'Dinas Selama : ',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 13.sp,
                                                    color:
                                                        MyColorsConst.darkColor,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: weekdaysCount
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 18.sp,
                                                        color:
                                                            Colors.red.shade600,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' hari',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 13.sp,
                                                        color:
                                                            Colors.red.shade600,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                isActive: currentStep >= 1,
                                state: currentStep >= 1
                                    ? StepState.complete
                                    : StepState.disabled,
                              ),
                              Step(
                                label: Text(
                                  'Lokasi',
                                  style: GoogleFonts.poppins(fontSize: 10),
                                ),
                                title: SizedBox.shrink(),
                                content: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  key: _formKeyStep3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FormDropDownData(
                                        input: selectedJenisSpd ?? '',
                                        onTap: () {
                                          _showJenisSpd(context);
                                        },
                                        idController:
                                            widget.idJenisSpdController,
                                        valueController:
                                            widget.valueJenisSpdController,
                                        labelForm: 'Jenis SPD',
                                        hintText:
                                            'Pilih Jenis Surat Perjalanan Dinas',
                                        labelTag: 'Label-JenisSpd',
                                        formTag: 'Form-JenisSpd',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Jenis Surat Perjalanan Dinas';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: selectedZonaAsal ?? '',
                                        onTap: () {
                                          _showZonaAsal(context);
                                        },
                                        idController:
                                            widget.idZonaAsalController,
                                        valueController:
                                            widget.valueZonaAsalController,
                                        labelForm: 'Zona Awal',
                                        hintText: 'Pilih Zona Awal',
                                        labelTag: 'Label-ZonaAsal',
                                        formTag: 'Form-ZonaAsal',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Zona Awal';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: selectedZonaTujuan ?? '',
                                        onTap: () {
                                          _showZonaTujuan(context);
                                        },
                                        idController:
                                            widget.idZonaTujuanController,
                                        valueController:
                                            widget.valueZonaTujuanController,
                                        labelForm: 'Zona Tujuan',
                                        hintText: 'Pilih Zona Tujuan',
                                        labelTag: 'Label-ZonaTujuan',
                                        formTag: 'Form-ZonaTujuan',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Zona Tujuan';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: selectedLokasiTujuan ?? '',
                                        onTap: () {
                                          _showLokasiTujuan(context);
                                        },
                                        idController:
                                            widget.idLokasiTujuanController,
                                        valueController:
                                            widget.valueLokasiTujuanController,
                                        labelForm: 'Lokasi Tujuan',
                                        hintText: 'Pilih Lokasi Tujuan',
                                        labelTag: 'Label-LokasiTujuan',
                                        formTag: 'Form-LokasiTujuan',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Pilih Lokasi Tujuan';
                                          }
                                          return null;
                                        },
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      Row(
                                        children: [
                                          const FormTextLabel(
                                            label:
                                                'Menggunakan Kendaraan Dinas',
                                            labelColor: MyColorsConst.darkColor,
                                          ),
                                          SizedBox(width: 2.sp),
                                          Text(
                                            '*',
                                            style: GoogleFonts.poppins(
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Radio(
                                              value: 1,
                                              groupValue: _kendDinas,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  _kendDinas = value!;
                                                  widget.kendDinasController
                                                          .text =
                                                      _kendDinas.toString();
                                                });
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Ya',
                                              style: GoogleFonts.poppins(
                                                fontSize: 13.sp,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Radio(
                                              value: 0,
                                              groupValue: _kendDinas,
                                              onChanged: (int? value) {
                                                setState(() {
                                                  _kendDinas = value!;
                                                  widget.kendDinasController
                                                          .text =
                                                      _kendDinas.toString();
                                                });
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Text(
                                              'Tidak',
                                              style: GoogleFonts.poppins(
                                                fontSize: 13.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (_kendDinas == 1)
                                        FormInputData(
                                          showRedStar: false,
                                          hintText:
                                              'Tuliskan Keterangan Kendaraan',
                                          labelForm: 'Nama Kendaraan',
                                          labelTag: 'Label-catatanDinas',
                                          formTag: 'Form-catatanDinas',
                                          controller: widget.catatanController!,
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                                isActive: currentStep >= 2,
                                state: currentStep >= 2
                                    ? StepState.complete
                                    : StepState.disabled,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<int> calculateWeekdaysFromAPI(String dateFrom, String dateTo) async {
    const apiUrl = '${MyGeneralConst.API_URL}/operation/t_spd/hitungHari';

    final Map<String, String> postData = {
      "date_from": "$dateFrom",
      "date_to": "$dateTo",
    };

    print("URL API: $apiUrl");
    print("BODY API: $postData");

    try {
      final userToken = await GeneralSharedPreferences.getUserToken();
      if (userToken is ServicesSuccess) {
        // print("${userToken.response["token"]}");
        final response = await http.post(
          Uri.parse(apiUrl),
          body: postData,
          headers: {
            'Authorization': 'Bearer ${userToken.response["token"]}',
            'Source': 'mobile',
          },
        );

        if (response.statusCode == 200) {
          print('RESPONSE BODY API: ${response.body}');
          return int.parse(response.body);
        } else {
          // Print the API response for debugging purposes.
          print('API Response: ${response.body}');

          // Handle error if needed.
          print('Failed to fetch data: ${response.statusCode}');
          return 0;
        }
      } else {
        // Handle error if there is an issue with getting the user token.
        print('Failed to get user token.');
        return 0;
      }
    } catch (e) {
      // Print the exception for debugging purposes.
      print('Exception occurred: $e');
      throw Exception('Failed to fetch data');
    }
  }

  void _calculateWeekdaysFromAPI() async {
    if (selectedTanggalAwal != null && selectedTanggalAkhir != null) {
      try {
        final dateFrom =
            selectedTanggalAwal!.toLocal().toString().split(' ')[0];
        final dateTo = selectedTanggalAkhir!.toLocal().toString().split(' ')[0];

        print("INI Data POST Calculate: $dateFrom & $dateTo");
        final newWeekdaysCount =
            await calculateWeekdaysFromAPI(dateFrom, dateTo);

        // Update the weekdaysCount variable with the new value
        setState(() {
          weekdaysCount = newWeekdaysCount;
        });

        print("Jumlah hari kerja: $weekdaysCount");
      } catch (e) {
        print("Gagal mengambil data dari API: $e");
      }
    } else {
      print("Pilih tanggal mulai dan tanggal berakhir terlebih dahulu.");
    }
  }

  Widget _buildDateTextField(
    String hintText,
    TextEditingController controller,
    DateTime? selectedDate,
    Function(DateTime) onDateSelected,
    String? Function(DateTime?)? validator,
  ) {
    return InkWell(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2101),
        );

        if (pickedDate != null) {
          onDateSelected(pickedDate);
          if (controller == widget.tanggalController) {
            widget.tanggalController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedTanggal = pickedDate;
            });
            print("Pilih Tanggal: $selectedTanggal");
          } else if (controller == widget.tanggalAwalController) {
            widget.tanggalAwalController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedTanggalAwal = pickedDate;
            });
            print("Pilih tanggal awal: $selectedTanggalAwal");
            _calculateWeekdaysFromAPI();
          } else if (controller == widget.tanggalAkhirController) {
            widget.tanggalAkhirController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedTanggalAkhir = pickedDate;
            });
            print("Pilih tanggal akhir: $selectedTanggalAkhir");
            _calculateWeekdaysFromAPI();
          }
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFDDDDDD)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? DateFormat('yyyy-MM-dd').format(selectedDate)
                      : hintText,
                  style: GoogleFonts.poppins(
                    fontSize: selectedDate != null ? 13.sp : 12.sp,
                    fontWeight: selectedDate != null
                        ? FontWeight.w600
                        : FontWeight.w500, // Different fontWeight for hintText
                    color: selectedDate != null
                        ? MyColorsConst.darkColor
                        : MyColorsConst
                            .disableColor, // Different color for hintText
                  ),
                ),
                Icon(
                  CupertinoIcons.calendar_today,
                  color: MyColorsConst.primaryColor,
                  size: 20.sp,
                ),
              ],
            ),
          ),
          if (validator != null &&
              (controller.text.isEmpty || validator(selectedDate) != null))
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Text(
                validator(selectedDate) ?? '',
                style: GoogleFonts.poppins(
                  color: MyColorsConst.redColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
