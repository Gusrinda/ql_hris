import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/add_keluarga_bloc/add_keluarga_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/selector/hub_keluarga_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/selector/jeniskelamin_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/selector/pekerjaan_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/tingkat_selector.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditKeluargaPage extends StatefulWidget {
  static const routeName = '/ViewEditKeluargaPage';
  ViewEditKeluargaPage({
    super.key,
    this.idKeluarga,
    this.valueKeluarga,
    this.nama,
    this.idPendidikan,
    this.valuePendidikan,
    this.idPekerjaan,
    this.valuePekerjaan,
    this.idJenisKelamin,
    this.valueJenisKelamin,
    this.usia,
    this.catatan,
    required this.reloadDataCallback,
    required this.dataKeluargaId,
  });
  final int? idKeluarga;
  final String? valueKeluarga;
  final String? nama;
  final int? idPendidikan;
  final String? valuePendidikan;
  final int? idPekerjaan;
  final String? valuePekerjaan;
  final int? idJenisKelamin;
  final String? valueJenisKelamin;
  final int? usia;
  final String? catatan;
  final VoidCallback reloadDataCallback;
  final int dataKeluargaId;

  final TextEditingController idkeluargaController = TextEditingController();
  final TextEditingController valuekeluargaController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController idPendidikanTerakhirController =
      TextEditingController();
  final TextEditingController valuePendidikanTerakhirController =
      TextEditingController();

  final TextEditingController idPekerjaanController = TextEditingController();
  final TextEditingController valuePekerjaanController =
      TextEditingController();

  final TextEditingController idJenisKelaminController =
      TextEditingController();
  final TextEditingController valueJenisKelaminController =
      TextEditingController();

  final TextEditingController usiaController = TextEditingController();

  final TextEditingController catatanController = TextEditingController();

  @override
  State<ViewEditKeluargaPage> createState() => _ViewEditKeluargaPageState();
}

class _ViewEditKeluargaPageState extends State<ViewEditKeluargaPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final keluargaBloc = context.read<AddKeluargaBloc>();

      keluargaBloc.add(const OnSelectHubKeluarga());
      keluargaBloc.add(const OnSelectTingkatPendidikan());
      keluargaBloc.add(const OnSelectPekerjaan());
      keluargaBloc.add(const OnSelectJenisKelamin());
    });

    widget.idkeluargaController.text = widget.idKeluarga.toString();
    widget.valuekeluargaController.text = widget.valueKeluarga ?? '';
    widget.nameController.text = widget.nama ?? '';
    widget.idPendidikanTerakhirController.text = widget.idPendidikan.toString();
    widget.valuePendidikanTerakhirController.text =
        widget.valuePendidikan ?? '';
    widget.idPekerjaanController.text = widget.idPekerjaan.toString();
    widget.valuePekerjaanController.text = widget.valuePekerjaan ?? '';
    widget.idJenisKelaminController.text = widget.idJenisKelamin.toString();
    widget.valueJenisKelaminController.text = widget.valueJenisKelamin ?? '';
    widget.usiaController.text = widget.usia.toString();
    widget.catatanController.text = widget.catatan ?? '';
  }

  String? selectedTingkat;
  String? selectedPekerjaan;
  String? selectedJenisKelamin;
  String? selectedHubKeluarga;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var pendidikanTerakhir = context.read<AddKeluargaBloc>().dataTingkat;
    var pekerjaan = context.read<AddKeluargaBloc>().dataPekerjaan;
    var jenisKelamin = context.read<AddKeluargaBloc>().dataJenisKelamin;
    var hubKeluarga = context.read<AddKeluargaBloc>().dataHubKeluarga;

    void showHubKeluargaMenu(BuildContext context) async {
      if (hubKeluarga.isEmpty) {
        context.read<AddKeluargaBloc>().add(OnSelectHubKeluarga());
        hubKeluarga = context.read<AddKeluargaBloc>().dataHubKeluarga;
      }

      if (hubKeluarga.isNotEmpty) {
        final selectedHubKeluarga = await showSearch<DataGeneral?>(
          context: context,
          delegate: HubKeluargaSearchDelegate(
            hubKeluarga: hubKeluarga,
            filteredData: hubKeluarga,
          ),
        );

        if (selectedHubKeluarga != null) {
          widget.idkeluargaController.text =
              selectedHubKeluarga.id?.toString() ?? '';
          widget.valuekeluargaController.text =
              selectedHubKeluarga.value?.toString() ?? '';

          setState(() {
            this.selectedHubKeluarga = selectedHubKeluarga.value;
            print(selectedHubKeluarga.value);
            print("Selected ID Pendidikan Terakhir: ${selectedHubKeluarga.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showTingkatPrestasiMenu(BuildContext context) async {
      if (pendidikanTerakhir.isEmpty) {
        context.read<AddKeluargaBloc>().add(OnSelectTingkatPendidikan());
        pendidikanTerakhir = context.read<AddKeluargaBloc>().dataTingkat;
      }

      if (pendidikanTerakhir.isNotEmpty) {
        final selectedTingkat = await showSearch<DataTingkat?>(
          context: context,
          delegate: TingkatPendidikanSearchDelegate(
            tingkatPendidikan: pendidikanTerakhir,
            filteredData: pendidikanTerakhir,
          ),
        );

        if (selectedTingkat != null) {
          widget.idPendidikanTerakhirController.text =
              selectedTingkat.id?.toString() ?? '';
          widget.valuePendidikanTerakhirController.text =
              selectedTingkat.value?.toString() ?? '';

          setState(() {
            this.selectedTingkat = selectedTingkat.value;
            print(selectedTingkat.value);
            print("Selected ID Pendidikan Terakhir: ${selectedTingkat.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showPekerjaanMenu(BuildContext context) async {
      if (pekerjaan.isEmpty) {
        context.read<AddKeluargaBloc>().add(OnSelectPekerjaan());
        pekerjaan = context.read<AddKeluargaBloc>().dataPekerjaan;
      }

      if (pekerjaan.isNotEmpty) {
        final selectedPekerjaan = await showSearch<DataGeneral?>(
          context: context,
          delegate: PekerjaanSearchDelegate(
            jenisPekerjaan: pekerjaan,
            filteredData: pekerjaan,
          ),
        );

        if (selectedPekerjaan != null) {
          widget.idPekerjaanController.text =
              selectedPekerjaan.id?.toString() ?? '';
          widget.valuePekerjaanController.text =
              selectedPekerjaan.value?.toString() ?? '';

          setState(() {
            this.selectedPekerjaan = selectedPekerjaan.value;
            print(selectedPekerjaan.value);
            print("Selected ID Pendidikan Terakhir: ${selectedPekerjaan.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showGenderMenu(BuildContext context) async {
      if (jenisKelamin.isEmpty) {
        context.read<AddKeluargaBloc>().add(OnSelectJenisKelamin());
        jenisKelamin = context.read<AddKeluargaBloc>().dataJenisKelamin;
      }

      if (jenisKelamin.isNotEmpty) {
        final selectedJenisKelamin = await showSearch<DataGeneral?>(
          context: context,
          delegate: JenisKelaminSearchDelegate(
            jenisKelamin: jenisKelamin,
            filteredData: jenisKelamin,
          ),
        );

        if (selectedJenisKelamin != null) {
          widget.idJenisKelaminController.text =
              selectedJenisKelamin.id?.toString() ?? '';
          widget.valueJenisKelaminController.text =
              selectedJenisKelamin.value?.toString() ?? '';

          setState(() {
            this.selectedJenisKelamin = selectedJenisKelamin.value;
            print(selectedJenisKelamin.value);
            print(
                "Selected ID Pendidikan Terakhir: ${selectedJenisKelamin.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    return BlocListener<AddKeluargaBloc, AddKeluargaState>(
      listener: (context, state) async {
        if (state is AddDataKeluargaLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is EditDataKeluargaSuccess) {
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
        } else if (state is EditDataKeluargaFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddDataKeluargaFailedUserExpired) {
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
        } else if (state is AddDataKeluargaFailedInBackground) {
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
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.only(left: 5.0.sp),
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
                      width: size.width * 1 / 4.2,
                    ),
                    Expanded(
                      child: Text(
                        "Data Keluarga",
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.sp, vertical: 16.sp),
                    child: BlocBuilder<AddKeluargaBloc, AddKeluargaState>(
                      builder: (context, state) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              Form(
                                key: _formKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: Column(
                                  children: [
                                    SizedBox(height: 16.sp),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showHubKeluargaMenu(context);
                                      },
                                      idController: widget.idkeluargaController,
                                      valueController:
                                          widget.valuekeluargaController,
                                      labelTag: 'Label-addkeluarga',
                                      labelForm: 'Keluarga',
                                      formTag: 'Form-addkeluarga',
                                      hintText: 'Pilih Keluarga',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Keluarga';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.nameController.text,
                                      labelTag: 'label-addname',
                                      labelForm: 'Nama',
                                      formTag: 'form-addname',
                                      hintText: 'Nama',
                                      onTap: () {},
                                      controller: widget.nameController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Nama';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showTingkatPrestasiMenu(context);
                                      },
                                      idController:
                                          widget.idPendidikanTerakhirController,
                                      valueController: widget
                                          .valuePendidikanTerakhirController,
                                      labelTag: 'Label-addpendidikanterakhir',
                                      labelForm: 'Pendidikan Terakhir',
                                      formTag: 'Form-addpendidikanterakhir',
                                      hintText: 'Pilih Pendidikan Terakhir',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Pendidikan Terakhir';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showPekerjaanMenu(context);
                                      },
                                      idController:
                                          widget.idPekerjaanController,
                                      valueController:
                                          widget.valuePekerjaanController,
                                      labelTag: 'Label-addpekerjaan',
                                      labelForm: 'Pekerjaan',
                                      formTag: 'Form-addpekerjaan',
                                      hintText: 'Pilih Pekerjaan',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Pekerjaan';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showGenderMenu(context);
                                      },
                                      idController:
                                          widget.idJenisKelaminController,
                                      valueController:
                                          widget.valueJenisKelaminController,
                                      labelTag: 'Label-addjeniskelamin',
                                      labelForm: 'Jenis Kelamin',
                                      formTag: 'Form-addjeniskelamin',
                                      hintText: 'Pilih Jenis Kelamin',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Jenis Kelamin';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.usiaController.text,
                                      labelTag: 'label-addusia',
                                      labelForm: 'Usia',
                                      formTag: 'form-addusia',
                                      hintText: 'Usia (Dalam Tahun)',
                                      inputType: TextInputType.number,
                                      onTap: () {},
                                      controller: widget.usiaController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Usia';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.catatanController.text,
                                      labelTag: 'label-addcatatankeluarga',
                                      labelForm: 'Catatan',
                                      formTag: 'form-addcatatankeluarga',
                                      hintText: 'Catatan',
                                      showRedStar: false,
                                      onTap: () {},
                                      controller: widget.catatanController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Catatan';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    SizedBox(height: 20.sp),
                                  ],
                                ),
                              ),
                              TextButtonCustomV1(
                                text: "Simpan Perubahan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                  showDialog(
                                    context: context,
                                    builder: (_) => DialogCustom(
                                      state: DialogCustomItem.confirm,
                                      message:
                                          "Anda Yakin Mengubah Data Keluarga?",
                                      durationInSec: 7,
                                      onContinue: () => context
                                          .read<AddKeluargaBloc>()
                                          .add(
                                            EditDataKeluargaSubmited(
                                              dataKeluargaId:
                                                  widget.dataKeluargaId,
                                              keluargaId: int.parse(widget
                                                  .idkeluargaController.text),
                                              nama: widget.nameController.text,
                                              pendTerakhirId: int.parse(widget
                                                  .idPendidikanTerakhirController
                                                  .text),
                                              jenisKelaminId: int.parse(widget
                                                  .idJenisKelaminController
                                                  .text),
                                              pekerjaanId: int.parse(widget
                                                  .idPekerjaanController.text),
                                              usia: int.parse(
                                                  widget.usiaController.text),
                                              desc:
                                                  widget.catatanController.text,
                                            ),
                                          ),
                                    ),
                                  );
                                } }
                              ),
                            ],
                          ),
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
    );
  }
}
