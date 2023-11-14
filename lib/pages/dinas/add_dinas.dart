import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_cuti.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_direktorat_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_jenisspd_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_lokasitujuan_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_templatespd_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_zona_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddDinasPage extends StatefulWidget {
  static const routeName = '/AddDinasPage';
  AddDinasPage({super.key});

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
  final TextEditingController idTemplateSpdController = TextEditingController();
  final TextEditingController valueTemplateSpdController =
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

  @override
  State<AddDinasPage> createState() => _AddDinasPageState();
}

class _AddDinasPageState extends State<AddDinasPage> {
  String? selectedDivisiValue;
  String? selectedDepartemenValue;
  String? selectedPosisiValue;
  String? selectedTemplateSpdValue;
  String? selectedDirektoratValue;
  String? selectedJenisSpdValue;
  String? selectedZonaAsalValue;
  String? selectedZonaTujuanValue;
  String? selectedLokasiTujuanValue;
  String? selectedPicValue;
  DateTime? selectedDate;
  DateTime? selectedTanggal;
  DateTime? selectedTanggalAwal;
  DateTime? selectedTanggalAkhir;

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
  }

  List<String> buttonTexts = ['Selanjutnya', 'Selanjutnya', 'Kirim'];
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
            onPressed: () {
              if (currentStep == 2) {
                context.read<AddDinasBloc>().add(
                      AddDinasSubmited(
                        divisi: int.parse(widget.idDivisiController.text),
                        departemen:
                            int.parse(widget.idDepartemenController.text),
                        posisi: int.parse(widget.idPosisiController.text),
                        templateSpd:
                            int.parse(widget.idTemplateSpdController.text),
                        direktorat:
                            int.parse(widget.idDirektoratController.text),
                        tanggal: widget.tanggalController.text,
                        tanggalAwal: widget.tanggalAwalController.text,
                        tanggalAkhir: widget.tanggalAkhirController.text,
                        jenisSpd: int.parse(widget.idJenisSpdController.text),
                        zonaAsal: int.parse(widget.idZonaAsalController.text),
                        zonaTujuan:
                            int.parse(widget.idZonaTujuanController.text),
                        lokasiTujuan:
                            int.parse(widget.idLokasiTujuanController.text),
                        pic: int.parse(widget.idPicController.text),
                      ),
                    );
              } else {
                // Lanjutkan dengan langkah berikutnya
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
    var selectDivisi = context.read<AddDinasBloc>().dataDivisi;
    var selectDepartemen = context.read<AddDinasBloc>().dataDepartemen;
    var selectPosisi = context.read<AddDinasBloc>().dataPosisi;
    var selectTemplateSpd = context.read<AddDinasBloc>().dataTemplateSpd;
    var selectDirektorat = context.read<AddDinasBloc>().dataDirektorat;
    var selectJenisSpd = context.read<AddDinasBloc>().dataJenisSpd;
    var selectZonaAsal = context.read<AddDinasBloc>().dataZona;
    var selectZonaTujuan = context.read<AddDinasBloc>().dataZona;
    var selectLokasiTujuan = context.read<AddDinasBloc>().dataLokasiTujuan;
    var selectPic = context.read<AddDinasBloc>().dataPic;

    void _showDivisi(BuildContext context) async {
      if (selectDivisi.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectDivisi());
        selectDivisi = context.read<AddDinasBloc>().dataDivisi;
      }

      if (selectDivisi.isNotEmpty) {
        final DataDivisi? selectedDivisiValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectDivisi.map((divisi) {
            return PopupMenuItem<DataDivisi>(
              value: divisi,
              child: Text(
                divisi.nama ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedDivisiValue != null) {
          widget.valueDivisiController.text =
              selectedDivisiValue.nama?.toString() ?? '';
          widget.idDivisiController.text =
              selectedDivisiValue.id?.toString() ?? '';

          setState(() {
            this.selectedDivisiValue = selectedDivisiValue.nama;
          });
        }
      } else {
        print("Tidak ada item dalam selectDivisi");
      }
    }

    void _showDepartemen(BuildContext context) async {
      if (selectDepartemen.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectDepartemen());
        selectDepartemen = context.read<AddDinasBloc>().dataDepartemen;
      }

      if (selectDepartemen.isNotEmpty) {
        final DataDepartemen? selectedDepartemenValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectDepartemen.map((departemen) {
            return PopupMenuItem<DataDepartemen>(
              value: departemen,
              child: Text(
                departemen.nama ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedDepartemenValue != null) {
          widget.valueDepartemenController.text =
              selectedDepartemenValue.nama?.toString() ?? '';
          widget.idDepartemenController.text =
              selectedDepartemenValue.id?.toString() ?? '';

          setState(() {
            this.selectedDepartemenValue = selectedDepartemenValue.nama;
          });
        }
      } else {
        print("Tidak ada item dalam selectDepartemen");
      }
    }

    void _showPosisi(BuildContext context) async {
      if (selectPosisi.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectPosisi());
        selectPosisi = context.read<AddDinasBloc>().dataPosisi;
      }

      if (selectPosisi.isNotEmpty) {
        final DataPosisi? selectedPosisiValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectPosisi.map((posisi) {
            return PopupMenuItem<DataPosisi>(
              value: posisi,
              child: Text(
                posisi.descKerja ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedPosisiValue != null) {
          widget.valuePosisiController.text =
              selectedPosisiValue.descKerja?.toString() ?? '';
          widget.idPosisiController.text =
              selectedPosisiValue.id?.toString() ?? '';

          setState(() {
            this.selectedPosisiValue = selectedPosisiValue.descKerja;
          });
        }
      } else {
        print("Tidak ada item dalam selectPosisi");
      }
    }

    void _showTemplateSpd(BuildContext context) async {
      if (selectTemplateSpd.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectTemplateSpd());
        selectTemplateSpd = context.read<AddDinasBloc>().dataTemplateSpd;
      }

      if (selectTemplateSpd.isNotEmpty) {
        final DataTemplateSpd? selectedTemplateSpdValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectTemplateSpd.map((templatespd) {
            return PopupMenuItem<DataTemplateSpd>(
              value: templatespd,
              child: Text(
                templatespd.kode ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedTemplateSpdValue != null) {
          widget.valueTemplateSpdController.text =
              selectedTemplateSpdValue.kode?.toString() ?? '';
          widget.idTemplateSpdController.text =
              selectedTemplateSpdValue.id?.toString() ?? '';

          setState(() {
            this.selectedTemplateSpdValue = selectedTemplateSpdValue.kode;
          });
        }
      } else {
        print("Tidak ada item dalam selectTemplateSpd");
      }
    }

    void _showDirektorat(BuildContext context) async {
      if (selectDirektorat.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectDirektorat());
        selectDirektorat = context.read<AddDinasBloc>().dataDirektorat;
      }

      if (selectDirektorat.isNotEmpty) {
        final DataDirektorat? selectedDirektoratValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectDirektorat.map((direktorat) {
            return PopupMenuItem<DataDirektorat>(
              value: direktorat,
              child: Text(
                direktorat.nama ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedDirektoratValue != null) {
          widget.valueDirektoratController.text =
              selectedDirektoratValue.nama?.toString() ?? '';
          widget.idDirektoratController.text =
              selectedDirektoratValue.id?.toString() ?? '';

          setState(() {
            this.selectedDirektoratValue = selectedDirektoratValue.nama;
          });
        }
      } else {
        print("Tidak ada item dalam selectDirektorat");
      }
    }

    void _showJenisSpd(BuildContext context) async {
      if (selectJenisSpd.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectJenisSpd());
        selectJenisSpd = context.read<AddDinasBloc>().dataJenisSpd;
      }

      if (selectJenisSpd.isNotEmpty) {
        final DataJenisSpd? selectedJenisSpdValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectJenisSpd.map((jenisspd) {
            return PopupMenuItem<DataJenisSpd>(
              value: jenisspd,
              child: Text(
                jenisspd.value ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedJenisSpdValue != null) {
          widget.valueJenisSpdController.text =
              selectedJenisSpdValue.value?.toString() ?? '';
          widget.idJenisSpdController.text =
              selectedJenisSpdValue.id?.toString() ?? '';

          setState(() {
            this.selectedJenisSpdValue = selectedJenisSpdValue.value;
          });
        }
      } else {
        print("Tidak ada item dalam selectJenisSpd");
      }
    }

    void _showZonaAsal(BuildContext context) async {
      if (selectZonaAsal.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectZona());
        selectZonaAsal = context.read<AddDinasBloc>().dataZona;
      }

      if (selectZonaAsal.isNotEmpty) {
        final DataZona? selectedZonaAsalValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectZonaAsal.map((zonaasal) {
            return PopupMenuItem<DataZona>(
              value: zonaasal,
              child: Text(
                zonaasal.nama ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedZonaAsalValue != null) {
          widget.valueZonaAsalController.text =
              selectedZonaAsalValue.nama?.toString() ?? '';
          widget.idZonaAsalController.text =
              selectedZonaAsalValue.id?.toString() ?? '';

          setState(() {
            this.selectedZonaAsalValue = selectedZonaAsalValue.nama;
          });
        }
      } else {
        print("Tidak ada item dalam selectZonaAsal");
      }
    }

    void _showZonaTujuan(BuildContext context) async {
      if (selectZonaTujuan.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectZona());
        selectZonaTujuan = context.read<AddDinasBloc>().dataZona;
      }

      if (selectZonaTujuan.isNotEmpty) {
        final DataZona? selectedZonaTujuanValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectZonaTujuan.map((zonatujuan) {
            return PopupMenuItem<DataZona>(
              value: zonatujuan,
              child: Text(
                zonatujuan.nama ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedZonaTujuanValue != null) {
          widget.valueZonaTujuanController.text =
              selectedZonaTujuanValue.nama?.toString() ?? '';
          widget.idZonaTujuanController.text =
              selectedZonaTujuanValue.id?.toString() ?? '';

          setState(() {
            this.selectedZonaTujuanValue = selectedZonaTujuanValue.nama;
          });
        }
      } else {
        print("Tidak ada item dalam selectZonaTujuan");
      }
    }

    void _showLokasiTujuan(BuildContext context) async {
      if (selectLokasiTujuan.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectLokasiTujuan());
        selectLokasiTujuan = context.read<AddDinasBloc>().dataLokasiTujuan;
      }

      if (selectLokasiTujuan.isNotEmpty) {
        final DataLokasiTujuan? selectedLokasiTujuanValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectLokasiTujuan.map((lokasitujuan) {
            return PopupMenuItem<DataLokasiTujuan>(
              value: lokasitujuan,
              child: Text(
                lokasitujuan.nama ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedLokasiTujuanValue != null) {
          widget.valueLokasiTujuanController.text =
              selectedLokasiTujuanValue.nama?.toString() ?? '';
          widget.idLokasiTujuanController.text =
              selectedLokasiTujuanValue.id?.toString() ?? '';

          setState(() {
            this.selectedLokasiTujuanValue = selectedLokasiTujuanValue.nama;
          });
        }
      } else {
        print("Tidak ada item dalam selectLokasiTujuan");
      }
    }

    void _showPic(BuildContext context) async {
      if (selectPic.isEmpty) {
        context.read<AddDinasBloc>().add(OnSelectPic());
        selectPic = context.read<AddDinasBloc>().dataPic;
      }

      if (selectPic.isNotEmpty) {
        final DataPic? selectedPicValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectPic.map((pic) {
            return PopupMenuItem<DataPic>(
              value: pic,
              child: Text(
                pic.name ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedPicValue != null) {
          widget.valuePicController.text =
              selectedPicValue.name?.toString() ?? '';
          widget.idPicController.text = selectedPicValue.id?.toString() ?? '';

          setState(() {
            this.selectedPicValue = selectedPicValue.name;
          });
        }
      } else {
        print("Tidak ada item dalam selectPic");
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
          appBar: appBarCustomV1(
            title: "Perjalanan Dinas",
            padLeft: 8,
          ),
          body: BlocBuilder<AddDinasBloc, AddDinasState>(
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
                      style: TextStyle(fontSize: 10),
                    ),
                    title: SizedBox.shrink(),
                    content: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKeyStep1,
                      child: Column(
                        children: [
                          FormTemplateSpd(
                            input: selectedTemplateSpdValue ?? '',
                            onTap: () {
                              _showTemplateSpd(context);
                            },
                            idController: widget.idTemplateSpdController,
                            valueController: widget.valueTemplateSpdController,
                            labelForm: 'Template SPD',
                            hintText: 'Cari Template SPD',
                            labelTag: 'Label-TemplateSPd',
                            formTag: 'Form-TemplateSpd',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Pilih Template SPD';
                              }
                              return null;
                            },
                            errorTextStyle: TextStyle(
                              fontSize: 8,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedDirektoratValue ?? '',
                            onTap: () {
                              _showDirektorat(context);
                            },
                            idController: widget.idDirektoratController,
                            valueController: widget.valueDirektoratController,
                            labelForm: 'Direktorat',
                            hintText: 'Pilih Direktorat',
                            labelTag: 'Label-Direktorat',
                            formTag: 'Form-Direktorat',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Pilih Direktorat';
                              }
                              return null;
                            },
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedDivisiValue ?? '',
                            onTap: () {
                              _showDivisi(context);
                            },
                            idController: widget.idDivisiController,
                            valueController: widget.valueDivisiController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedDepartemenValue ?? '',
                            onTap: () {
                              _showDepartemen(context);
                            },
                            idController: widget.idDepartemenController,
                            valueController: widget.valueDepartemenController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedPosisiValue ?? '',
                            onTap: () {
                              _showPosisi(context);
                            },
                            idController: widget.idPosisiController,
                            valueController: widget.valuePosisiController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedPicValue ?? '',
                            onTap: () {
                              _showPic(context);
                            },
                            idController: widget.idPicController,
                            valueController: widget.valuePicController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
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
                      style: TextStyle(fontSize: 10),
                    ),
                    title: SizedBox.shrink(),
                    content: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKeyStep2,
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              FormTextLabel(
                                label: "Tanggal",
                                labelColor: MyColorsConst.darkColor,
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
                              const SizedBox(
                                height: 30,
                              ),
                              FormTextLabel(
                                label: "Tanggal Acara Awal",
                                labelColor: MyColorsConst.darkColor,
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
                                    selectedTanggalAwal = selectedDate;
                                  });
                                },
                                (value) {
                                  if (value == null) {
                                    return 'Pilih Tanggal Acara Awal';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FormTextLabel(
                                label: "Pilih Tanggal Acara Akhir",
                                labelColor: MyColorsConst.darkColor,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              _buildDateTextField(
                                "Pilih Tanggal Acara Awal",
                                widget.tanggalAkhirController,
                                selectedTanggalAkhir,
                                (selectedDate) {
                                  setState(() {
                                    selectedTanggalAkhir = selectedDate;
                                  });
                                },
                                (value) {
                                  if (value == null) {
                                    return 'Pilih Tanggal Acara Akhir';
                                  }
                                  return null;
                                },
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
                      style: TextStyle(fontSize: 10),
                    ),
                    title: SizedBox.shrink(),
                    content: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKeyStep3,
                      child: Column(
                        children: [
                          FormDropDown(
                            input: selectedJenisSpdValue ?? '',
                            onTap: () {
                              _showJenisSpd(context);
                            },
                            idController: widget.idJenisSpdController,
                            valueController: widget.valueJenisSpdController,
                            labelForm: 'Jenis SPD',
                            hintText: 'Pilih Jenis Surat Perjalanan Dinas',
                            labelTag: 'Label-JenisSpd',
                            formTag: 'Form-JenisSpd',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Pilih Jenis Surat Perjalanan Dinas';
                              }
                              return null;
                            },
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedZonaAsalValue ?? '',
                            onTap: () {
                              _showZonaAsal(context);
                            },
                            idController: widget.idZonaAsalController,
                            valueController: widget.valueZonaAsalController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedZonaTujuanValue ?? '',
                            onTap: () {
                              _showZonaTujuan(context);
                            },
                            idController: widget.idZonaTujuanController,
                            valueController: widget.valueZonaTujuanController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FormDropDown(
                            input: selectedLokasiTujuanValue ?? '',
                            onTap: () {
                              _showLokasiTujuan(context);
                            },
                            idController: widget.idLokasiTujuanController,
                            valueController: widget.valueLokasiTujuanController,
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
                            errorTextStyle: TextStyle(fontSize: 8),
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
    );
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
            print("Selected Date From: $selectedTanggal");
          } else if (controller == widget.tanggalAwalController) {
            widget.tanggalAwalController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedTanggalAwal = pickedDate;
            });
            print("Selected Date To: $selectedTanggalAwal");
          } else if (controller == widget.tanggalAkhirController) {
            widget.tanggalAkhirController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedTanggalAkhir = pickedDate;
            });
            print("Selected Date To: $selectedTanggalAkhir");
          }
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFDDDDDD)),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? DateFormat('yyyy-MM-dd').format(selectedDate)
                      : hintText,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
                // const SizedBox(width: 8),
                Icon(
                  Icons.calendar_month_rounded,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ],
            ),
          ),
          if (validator != null &&
              (controller.text.isEmpty || validator(selectedDate) != null))
            Text(
              validator(selectedDate) ?? '',
              style: TextStyle(
                color: MyColorsConst.redColor,
                fontSize: 8,
              ),
            ),
        ],
      ),
    );
  }
}
