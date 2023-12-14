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
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddOrganisasiPage extends StatefulWidget {
  static const routeName = '/AddOrganisasiPage';
  AddOrganisasiPage({super.key});

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
  State<AddOrganisasiPage> createState() => _AddOrganisasiPageState();
}

class _AddOrganisasiPageState extends State<AddOrganisasiPage> {
  String? selectedKota;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataKota = context.read<AddOrganisasiBloc>().dataKota;

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

    return BlocListener<AddOrganisasiBloc, AddOrganisasiState>(
      listener: (context, state) async {
        if (state is AddDataOrganisasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddDataOrganisasiSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
        } else if (state is AddDataOrganisasiFailed) {
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
                      width: size.width * 1 / 7.5,
                    ),
                    Expanded(
                      child: Text(
                        "Tambah Data Organisasi",
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
                              SizedBox(height: 16.sp),
                              FormInputData(
                                input: widget.namaOrganisasiController.text,
                                labelTag: 'label-addorganisasi',
                                labelForm: 'Nama Organisasi',
                                formTag: 'form-addorganisasi',
                                hintText: 'Organisasi',
                                onTap: () {},
                                controller: widget.namaOrganisasiController,
                                validator: (value) {},
                              ),
                              FormDropDownData(
                                input: '',
                                onTap: () {
                                  showTahunMenu(context,
                                      widget.tahunOrganisasiController);
                                },
                                idController: widget.tahunOrganisasiController,
                                valueController:
                                    widget.tahunOrganisasiController,
                                labelTag: 'Label-addtahunorganisasi',
                                labelForm: 'Tahun',
                                formTag: 'Form-addtahunorganisasi',
                                hintText: 'Pilih Tahun',
                                validator: (value) {},
                              ),
                              FormDropDownData(
                                input: '',
                                onTap: () {},
                                idController:
                                    widget.idJenisOrganisasiController,
                                valueController:
                                    widget.valueJenisOrganisasiController,
                                labelTag: 'Label-addjenisorganisasi',
                                labelForm: 'Jenis Organisasi',
                                formTag: 'Form-addjenisorganisasi',
                                hintText: 'Pilih Jenis Organisasi',
                                validator: (value) {},
                              ),
                              FormDropDownData(
                                input: '',
                                onTap: () {
                                  showKotaMenu(context);
                                },
                                idController: widget.idKotaOrganisasiController,
                                valueController:
                                    widget.valueKotaOrganisasiController,
                                labelTag: 'Label-addkota',
                                labelForm: 'Kota',
                                formTag: 'Form-addkota',
                                hintText: 'Pilih Kota',
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: widget.posisiaOrganisasiController.text,
                                labelTag: 'label-addposisiorganisasi',
                                labelForm: 'Posisi',
                                formTag: 'form-addposisiorganisasi',
                                hintText: 'Posisi',
                                onTap: () {},
                                controller: widget.posisiaOrganisasiController,
                                validator: (value) {},
                              ),
                              SizedBox(height: 30.sp),
                              TextButtonCustomV1(
                                text: "Simpan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: state is AddDataOrganisasiLoading
                                    ? null
                                    : () {
                                        context.read<AddOrganisasiBloc>().add(
                                              AddDataOrganisasiSubmited(
                                                nama: widget
                                                    .namaOrganisasiController
                                                    .text,
                                                tahun: widget
                                                    .tahunOrganisasiController
                                                    .text,
                                                jenisOrgId: 1,
                                                kotaId: int.parse(widget
                                                    .idKotaOrganisasiController
                                                    .text),
                                                posisi: widget
                                                    .posisiaOrganisasiController
                                                    .text,
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
