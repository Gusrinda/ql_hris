import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi_bloc/add_organisasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/selector/jenis_organisasi_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditOrganisasiPage extends StatefulWidget {
  static const routeName = '/ViewEditOrganisasiPage';
  ViewEditOrganisasiPage({
    super.key,
    this.namaOrg,
    this.tahunOrg,
    this.idJenisOrg,
    this.valueJenisOrg,
    this.idKota,
    this.valueKota,
    this.posisiOrg,
    required this.reloadDataCallback,
    required this.organisasiId,
  });
  final String? namaOrg;
  final int? tahunOrg;
  final int? idJenisOrg;
  final String? valueJenisOrg;
  final int? idKota;
  final String? valueKota;
  final String? posisiOrg;
  final VoidCallback reloadDataCallback;
  final int organisasiId;

  final TextEditingController namaOrganisasiController =
      TextEditingController();

  final TextEditingController tahunOrganisasiController =
      TextEditingController();
  final TextEditingController idJenisOrganisasiController =
      TextEditingController();
  final TextEditingController valueJenisOrganisasiController =
      TextEditingController();
  final TextEditingController idKotaOrganisasiController =
      TextEditingController();
  final TextEditingController valueKotaOrganisasiController =
      TextEditingController();
  final TextEditingController posisiaOrganisasiController =
      TextEditingController();
  @override
  State<ViewEditOrganisasiPage> createState() => _ViewEditOrganisasiPageState();
}

class _ViewEditOrganisasiPageState extends State<ViewEditOrganisasiPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedKota;
  String? selectedJenisOrganisasi;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final organisasiBloc = context.read<AddOrganisasiBloc>();

      organisasiBloc.add(const OnSelectJenisOrganisasi());
      organisasiBloc.add(const OnSelectKota());

      widget.namaOrganisasiController.text = widget.namaOrg ?? '';
      widget.tahunOrganisasiController.text = widget.tahunOrg.toString();
      widget.idJenisOrganisasiController.text = widget.idJenisOrg.toString();
      widget.valueJenisOrganisasiController.text = widget.valueJenisOrg ?? '';
      widget.idKotaOrganisasiController.text = widget.idKota.toString();
      widget.valueKotaOrganisasiController.text = widget.valueKota ?? '';
      widget.posisiaOrganisasiController.text = widget.posisiOrg ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataKota = context.read<AddOrganisasiBloc>().dataKota;
    var dataJenisOrganisasi =
        context.read<AddOrganisasiBloc>().dataJenisOrganisasi;

    void showTahunMenu(BuildContext context, TextEditingController controller) {
      List<String> _generateYears() {
        List<String> years = [];
        int currentYear = DateTime.now().year;

        for (int year = currentYear; year >= currentYear - 100; year--) {
          years.add(year.toString());
        }

        return years;
      }

      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            child: Column(
              children: [
                ListTile(
                  title: Center(
                    child: Text(
                      "Scroll & Tap pada data untuk memilih Tahun",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: MyColorsConst.darkColor),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: _generateYears().length,
                    itemBuilder: (context, index) {
                      final year = _generateYears()[index];
                      return ListTile(
                        title: Center(
                          child: Text(
                            year,
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        onTap: () {
                          controller.text = year;
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    void showKotaMenu(BuildContext context) async {
      if (dataKota.isEmpty) {
        context.read<AddOrganisasiBloc>().add(OnSelectKota());
        dataKota = context.read<AddOrganisasiBloc>().dataKota;
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
          widget.idKotaOrganisasiController.text =
              selectedKota.id?.toString() ?? '';
          widget.valueKotaOrganisasiController.text =
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

    void showJenisOrganisasi(BuildContext context) async {
      if (dataJenisOrganisasi.isEmpty) {
        context.read<AddOrganisasiBloc>().add(OnSelectJenisOrganisasi());
        dataJenisOrganisasi =
            context.read<AddOrganisasiBloc>().dataJenisOrganisasi;
      }

      if (dataJenisOrganisasi.isNotEmpty) {
        final selectedJenisOrganisasi = await showSearch<DataGeneral?>(
          context: context,
          delegate: JenisOrgSearchDelegate(
            dataJenisOrganisasi: dataJenisOrganisasi,
            filteredData: dataJenisOrganisasi,
          ),
        );

        if (selectedJenisOrganisasi != null) {
          widget.idJenisOrganisasiController.text =
              selectedJenisOrganisasi.id?.toString() ?? '';
          widget.valueJenisOrganisasiController.text =
              selectedJenisOrganisasi.value?.toString() ?? '';

          setState(() {
            this.selectedJenisOrganisasi = selectedJenisOrganisasi.value;
            print(selectedJenisOrganisasi.value);
            print("Selected ID Kota: ${selectedJenisOrganisasi.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    return BlocListener<AddOrganisasiBloc, AddOrganisasiState>(
      listener: (context, state) async {
        if (state is AddDataOrganisasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is EditOrganisasiSuccess) {
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
        } else if (state is EditOrganisasiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddDataOrganisasiFailedUserExpired) {
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
        } else if (state is AddDataOrganisasiFailedInBackground) {
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
                      width: size.width * 1 / 5,
                    ),
                    Expanded(
                      child: Text(
                        "Data Organisasi",
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
                    child: BlocBuilder<AddOrganisasiBloc, AddOrganisasiState>(
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
                                    FormInputData(
                                      input:
                                          widget.namaOrganisasiController.text,
                                      labelTag: 'label-addorganisasi',
                                      labelForm: 'Nama Organisasi',
                                      formTag: 'form-addorganisasi',
                                      hintText: 'Organisasi',
                                      onTap: () {},
                                      controller:
                                          widget.namaOrganisasiController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Nama Organisasi';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showTahunMenu(context,
                                            widget.tahunOrganisasiController);
                                      },
                                      valueController:
                                          widget.tahunOrganisasiController,
                                      labelTag: 'Label-addtahunorganisasi',
                                      labelForm: 'Tahun',
                                      formTag: 'Form-addtahunorganisasi',
                                      hintText: 'Pilih Tahun',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tahun';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showJenisOrganisasi(context);
                                      },
                                      idController:
                                          widget.idJenisOrganisasiController,
                                      valueController:
                                          widget.valueJenisOrganisasiController,
                                      labelTag: 'Label-addjenisorganisasi',
                                      labelForm: 'Jenis Organisasi',
                                      formTag: 'Form-addjenisorganisasi',
                                      hintText: 'Pilih Jenis Organisasi',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Jenis Organisasi';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showKotaMenu(context);
                                      },
                                      idController:
                                          widget.idKotaOrganisasiController,
                                      valueController:
                                          widget.valueKotaOrganisasiController,
                                      labelTag: 'Label-addkota',
                                      labelForm: 'Kota',
                                      formTag: 'Form-addkota',
                                      hintText: 'Pilih Kota',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Kota';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget
                                          .posisiaOrganisasiController.text,
                                      labelTag: 'label-addposisiorganisasi',
                                      labelForm: 'Posisi',
                                      formTag: 'form-addposisiorganisasi',
                                      hintText: 'Posisi',
                                      onTap: () {},
                                      controller:
                                          widget.posisiaOrganisasiController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Posisi';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    SizedBox(height: 30.sp),
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
                                          "Anda Yakin Mengubah Data Organisasi?",
                                      durationInSec: 7,
                                      onContinue: () => context
                                          .read<AddOrganisasiBloc>()
                                          .add(
                                            EditDataOrganisasiSubmited(
                                              organisasiId: widget.organisasiId,
                                              nama: widget
                                                  .namaOrganisasiController
                                                  .text,
                                              tahun: widget
                                                  .tahunOrganisasiController
                                                  .text,
                                              jenisOrgId: int.parse(widget
                                                  .idJenisOrganisasiController
                                                  .text),
                                              kotaId: int.parse(widget
                                                  .idKotaOrganisasiController
                                                  .text),
                                              posisi: widget
                                                  .posisiaOrganisasiController
                                                  .text,
                                            ),
                                          ),
                                    ),
                                  );
                                } },
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
