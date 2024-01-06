import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/tingkat_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/add_prestasi_bloc/add_prestasi_bloc.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditPrestasiPage extends StatefulWidget {
  static const routeName = '/ViewEditPrestasiPage';
  ViewEditPrestasiPage({
    super.key,
    this.namaPrestasi,
    this.idTingkat,
    this.valueTingkat,
    this.tahun,
    required this.reloadDataCallback,
    required this.prestasiId,
  });
  final String? namaPrestasi;
  final int? idTingkat;
  final String? valueTingkat;
  final int? tahun;
  final VoidCallback reloadDataCallback;
  final int prestasiId;

  final TextEditingController namaPrestasiController = TextEditingController();

  final TextEditingController idTingkatPrestasiController =
      TextEditingController();
  final TextEditingController valueTingkatPrestasiController =
      TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  State<ViewEditPrestasiPage> createState() => _ViewEditPrestasiPageState();
}

class _ViewEditPrestasiPageState extends State<ViewEditPrestasiPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    widget.namaPrestasiController.text = widget.namaPrestasi ?? '';
    widget.idTingkatPrestasiController.text = widget.idTingkat.toString();
    widget.valueTingkatPrestasiController.text = widget.valueTingkat ?? '';
    widget.tahunController.text = widget.tahun.toString();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AddPrestasiBloc>().add(const OnSelectTingkatPrestasi());
    });
  }

  String? selectedTingkat;
  @override
  Widget build(BuildContext context) {
    var tingkatPrestasi = context.read<AddPrestasiBloc>().dataTingkat;
    var size = MediaQuery.of(context).size;

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

    void showTingkatPrestasiMenu(BuildContext context) async {
      if (tingkatPrestasi.isEmpty) {
        context.read<AddPrestasiBloc>().add(OnSelectTingkatPrestasi());
        tingkatPrestasi = context.read<AddPrestasiBloc>().dataTingkat;
      }

      if (tingkatPrestasi.isNotEmpty) {
        final selectedTingkat = await showSearch<DataTingkat?>(
          context: context,
          delegate: TingkatPendidikanSearchDelegate(
            tingkatPendidikan: tingkatPrestasi,
            filteredData: tingkatPrestasi,
          ),
        );

        if (selectedTingkat != null) {
          widget.idTingkatPrestasiController.text =
              selectedTingkat.id?.toString() ?? '';
          widget.valueTingkatPrestasiController.text =
              selectedTingkat.value?.toString() ?? '';

          setState(() {
            this.selectedTingkat = selectedTingkat.value;
            print(selectedTingkat.value);
            print("Selected ID Tingkat Pendidikan: ${selectedTingkat.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    return BlocListener<AddPrestasiBloc, AddPrestasiState>(
      listener: (context, state) async {
        if (state is AddDataPrestasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is EditDataPrestasiSuccess) {
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
        } else if (state is EditDataPrestasiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddDataPrestasiFailedUserExpired) {
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
        } else if (state is AddDataPrestasiFailedInBackground) {
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
                        "Data Prestasi",
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
                    child: BlocBuilder<AddPrestasiBloc, AddPrestasiState>(
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
                                      input: widget.namaPrestasiController.text,
                                      labelTag: 'label-addnamaprestasi',
                                      labelForm: 'Nama Prestasi',
                                      formTag: 'form-addnamaprestasi',
                                      hintText: 'Nama Prestasi',
                                      onTap: () {},
                                      controller: widget.namaPrestasiController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Prestasi';
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
                                          widget.idTingkatPrestasiController,
                                      valueController:
                                          widget.valueTingkatPrestasiController,
                                      labelTag: 'Label-addtingkatprestasi',
                                      labelForm: 'Tingkat',
                                      formTag: 'Form-addtingkatprestasi',
                                      hintText: 'Pilih Tingkat',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tingkat';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showTahunMenu(
                                            context, widget.tahunController);
                                      },
                                      valueController: widget.tahunController,
                                      labelTag: 'Label-addtahunprestasi',
                                      labelForm: 'Tahun',
                                      formTag: 'Form-addtahunprestasi',
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
                                            "Anda Yakin Mengubah Data Bahasa?",
                                        durationInSec: 7,
                                        onContinue: () => context
                                            .read<AddPrestasiBloc>()
                                            .add(
                                              EditDataPrestasiSubmited(
                                                prestasiId: widget.prestasiId,
                                                namaPres: widget
                                                    .namaPrestasiController
                                                    .text,
                                                tahun:
                                                    widget.tahunController.text,
                                                tingkatPresId: int.parse(
                                                  widget
                                                      .idTingkatPrestasiController
                                                      .text,
                                                ),
                                              ),
                                            ),
                                      ),
                                    );
                                  }
                                },
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
