import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa_bloc/add_bahasa_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddBahasaPage extends StatefulWidget {
  static const routeName = '/AddBahasaPage';
  AddBahasaPage({super.key, required this.reloadDataCallback});
  final VoidCallback reloadDataCallback;

  final TextEditingController bahasaController = TextEditingController();
  final TextEditingController? lisanController = TextEditingController();
  final TextEditingController? tertulisController = TextEditingController();
  final TextEditingController levelLisanController = TextEditingController();
  final TextEditingController levelTertulisController = TextEditingController();

  @override
  State<AddBahasaPage> createState() => _AddBahasaPageState();
}

class _AddBahasaPageState extends State<AddBahasaPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _showLanguageLevelBottomSheet(
      BuildContext context, TextEditingController controller) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                title: Text(
                  'C2 - Proficient',
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context, 'C2 - Proficient');
                },
              ),
              ListTile(
                title: Text(
                  'C1 - Advanced',
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context, 'C1 - Advanced');
                },
              ),
              ListTile(
                title: Text(
                  'B2 - Upper Intermediate',
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context, 'B2 - Upper Intermediate');
                },
              ),
              ListTile(
                title: Text(
                  'B1 - Intermediate',
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context, 'B1 - Intermediate');
                },
              ),
              ListTile(
                title: Text(
                  'A2 - Elementary',
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context, 'A2 - Elementary');
                },
              ),
              ListTile(
                title: Text(
                  'A1 - Beginner',
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context, 'A1 - Beginner');
                },
              ),
            ],
          ),
        );
      },
    ).then((selectedLevel) {
      if (selectedLevel != null) {
        controller.text = selectedLevel;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<AddBahasaBloc, AddBahasaState>(
      listener: (context, state) async {
        if (state is AddDatabahasaLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddDatabahasaSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
          widget.reloadDataCallback();
        } else if (state is AddDatabahasaFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddDatabahasaFailedUserExpired) {
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
        } else if (state is AddDatabahasaFailedInBackground) {
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
                      width: size.width * 1 / 6.5,
                    ),
                    Expanded(
                      child: Text(
                        "Tambah Data Bahasa",
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
                    child: BlocBuilder<AddBahasaBloc, AddBahasaState>(
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
                                      input: widget.bahasaController.text,
                                      labelTag: 'label-addbahasa',
                                      labelForm: 'Bahasa Yang Dikuasai',
                                      formTag: 'form-addbahasa',
                                      hintText: 'Bahasa yang Dikuasai',
                                      onTap: () {},
                                      controller: widget.bahasaController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Bahasa yang Dikuasasi';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: widget.levelLisanController.text,
                                      labelTag: 'label-addlevelLisan',
                                      labelForm: 'Level Lisan Bahasa',
                                      formTag: 'form-addlevelLisan',
                                      hintText: 'Pilih Tingkatan Lisan Bahasa',
                                      onTap: () {
                                        _showLanguageLevelBottomSheet(context,
                                            widget.levelLisanController);
                                      },
                                      valueController:
                                          widget.levelLisanController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tingkatan Lisan Bahasa';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    // FormInputData(
                                    //   showRedStar: false,
                                    //   input: widget.lisanController!.text,
                                    //   labelTag: 'label-addlisan',
                                    //   labelForm: 'Nilai Lisan',
                                    //   formTag: 'form-addlisan',
                                    //   hintText: 'Nilai Lisan',
                                    //   inputType: TextInputType.number,
                                    //   onTap: () {},
                                    //   controller: widget.lisanController!,
                                    //   validator: (value) {},
                                    // ),
                                    FormDropDownData(
                                      input:
                                          widget.levelTertulisController.text,
                                      labelTag: 'label-addlevelTertulis',
                                      labelForm: 'Level Tertulis Bahasa',
                                      formTag: 'form-addlevelTertulis',
                                      hintText:
                                          'Pilih Tingkatan Tertulis Bahasa',
                                      onTap: () {
                                        _showLanguageLevelBottomSheet(context,
                                            widget.levelTertulisController);
                                      },
                                      valueController:
                                          widget.levelTertulisController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tingkatan Tertulis Bahasa';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    // FormInputData(
                                    //   showRedStar: false,
                                    //   input: widget.tertulisController!.text,
                                    //   labelTag: 'label-addtertulis',
                                    //   labelForm: 'Nilai Tertulis',
                                    //   formTag: 'form-addtertulis',
                                    //   hintText: 'Nilai Tertulis',
                                    //   inputType: TextInputType.number,
                                    //   onTap: () {},
                                    //   controller: widget.tertulisController!,
                                    //   validator: (value) {},
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30.sp),
                              TextButtonCustomV1(
                                text: "Simpan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: state is AddDatabahasaLoading
                                    ? null
                                    : () {
                                        if (_formKey.currentState!.validate()) {
                                          context.read<AddBahasaBloc>().add(
                                                AddDatabahasaSubmited(
                                                  bhsDikuasai: widget
                                                      .bahasaController.text,
                                                  nilaiLisan: widget
                                                      .levelLisanController
                                                      .text,
                                                  nilaiTertulis: widget
                                                      .levelTertulisController
                                                      .text,
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
