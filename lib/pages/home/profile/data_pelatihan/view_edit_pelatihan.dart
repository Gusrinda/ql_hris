import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan_bloc/add_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditPelatihanPage extends StatefulWidget {
  static const routeName = '/ViewEditPelatihanPage';
  ViewEditPelatihanPage(
      {super.key,
      this.dataPelatihan,
      this.namaPelatihan,
      this.namaLembaga,
      this.tahun,
      this.valueKota,
      this.idKota,
      this.idPelatihan});
  final dynamic? dataPelatihan;
  final String? namaPelatihan;
  final String? namaLembaga;
  final int? tahun;
  final String? valueKota;
  final int? idKota;
  final int? idPelatihan;

  final TextEditingController namaPelatihanController = TextEditingController();
  final TextEditingController lembagaPelatihanController =
      TextEditingController();
  final TextEditingController tahunPelatihanController =
      TextEditingController();
  final TextEditingController idkKotapelatihanController =
      TextEditingController();
  final TextEditingController valueKotapelatihanController =
      TextEditingController();
  final TextEditingController posisiaOrganisasiController =
      TextEditingController();

  @override
  State<ViewEditPelatihanPage> createState() => _ViewEditPelatihanPageState();
}

class _ViewEditPelatihanPageState extends State<ViewEditPelatihanPage> {
  @override
  void initState() {
    super.initState();

    widget.namaPelatihanController.text = widget.namaPelatihan ?? '';
    widget.lembagaPelatihanController.text = widget.namaLembaga ?? '';

    widget.tahunPelatihanController.text = widget.tahun.toString();

    widget.valueKotapelatihanController.text = widget.valueKota ?? '';
    widget.idkKotapelatihanController.text = widget.idKota.toString();
  }

  String? selectedKota;

  @override
  Widget build(BuildContext context) {
    var dataKota = context.read<AddPelatihanBloc>().dataKota;
    var size = MediaQuery.of(context).size;

    void showTahunMenu(BuildContext context, TextEditingController controller) {
      List<String> _generateYears() {
        List<String> years = [];
        int currentYear = DateTime.now().year;

        for (int year = currentYear - 20; year <= currentYear; year++) {
          years.add(year.toString());
        }

        return years;
      }

      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            child: ListView.builder(
              itemCount: _generateYears().length,
              itemBuilder: (context, index) {
                final year = _generateYears()[index];
                return ListTile(
                  title: Center(
                    child: Text(
                      year,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  onTap: () {
                    controller.text = year;
                    Navigator.pop(context);
                  },
                );
              },
            ),
          );
        },
      );
    }

    void showKotaMenu(BuildContext context) async {
      if (dataKota.isEmpty) {
        context.read<AddPelatihanBloc>().add(OnSelectKota());
        dataKota = context.read<AddPelatihanBloc>().dataKota;
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
          widget.idkKotapelatihanController.text =
              selectedKota.id?.toString() ?? '';
          widget.valueKotapelatihanController.text =
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

    return BlocListener<AddPelatihanBloc, AddPelatihanState>(
      listener: (context, state) async {
        if (state is AddDataPelatihanLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is EditPelatihanSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
        } else if (state is EditPelatihanFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddDataPelatihanFailedUserExpired) {
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
        } else if (state is AddDataPelatihanFailedInBackground) {
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
                      width: size.width * 1 / 4.5,
                    ),
                    Expanded(
                      child: Text(
                        "Data Pelatihaan",
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
                    child: BlocBuilder<AddPelatihanBloc, AddPelatihanState>(
                      builder: (context, state) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 16.sp),
                              FormInputData(
                                labelTag: 'label-namaPelatihan',
                                labelForm: 'Nama Pelatihan',
                                formTag: 'form-namapelatihan',
                                hintText: 'Nama Pelatihan',
                                onTap: () {},
                                controller: widget.namaPelatihanController,
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: widget.lembagaPelatihanController.text,
                                labelTag: 'label-namalembaga',
                                labelForm: 'Nama Lembaga',
                                formTag: 'form-namalembaga',
                                hintText: 'Nama Lembaga',
                                onTap: () {},
                                controller: widget.lembagaPelatihanController,
                                validator: (value) {},
                              ),
                              FormDropDownData(
                                input: '',
                                onTap: () {
                                  showTahunMenu(
                                      context, widget.tahunPelatihanController);
                                },
                                idController: widget.tahunPelatihanController,
                                valueController:
                                    widget.tahunPelatihanController,
                                labelTag: 'Label-tahunpelatihan',
                                labelForm: 'Tahun',
                                formTag: 'Form-tahunpelatihan',
                                hintText: 'Pilih Tahun',
                                validator: (value) {},
                              ),
                              FormDropDownData(
                                input: '',
                                onTap: () {
                                  showKotaMenu(context);
                                },
                                idController: widget.idkKotapelatihanController,
                                valueController:
                                    widget.valueKotapelatihanController,
                                labelTag: 'Label-kotapelatihan',
                                labelForm: 'Kota',
                                formTag: 'Form-kotapelatihan',
                                hintText: 'Pilih Kota',
                                validator: (value) {},
                              ),
                              SizedBox(height: 30.sp),
                              TextButtonCustomV1(
                                text: "Simpan Perubahan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: state is AddDataPelatihanLoading
                                    ? null
                                    : () {
                                        context.read<AddPelatihanBloc>().add(
                                              EditDataPelatihanSubmited(
                                                // pelatihanId:
                                                //     widget.idPelatihan ?? 0,
                                                namaPel: widget
                                                    .namaPelatihanController
                                                    .text,
                                                namaLem: widget
                                                    .lembagaPelatihanController
                                                    .text,
                                                tahun: int.parse(widget
                                                    .tahunPelatihanController
                                                    .text),
                                                kotaId: widget.idKota ?? 1,
                                              ),
                                            );
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
