import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/add_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/list_prestasi_bloc/list_prestasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/view_edit_prestasi.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataPrestasiPage extends StatefulWidget {
  static const routeName = '/DataPrestasiPage';
  const DataPrestasiPage({super.key});

  @override
  State<DataPrestasiPage> createState() => _DataPrestasiPageState();
}

class _DataPrestasiPageState extends State<DataPrestasiPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ListPrestasiBloc>().add(GetListPrestasi());
    });
  }

  bool showDeleteButton = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListPrestasiBloc, ListPrestasiState>(
      listener: (context, state) async {
        if (state is ListPrestasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListPrestasiSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is ListPrestasiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListPrestasiFailedUserExpired) {
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
        } else if (state is ListPrestasiFailedInBackground) {
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
                child: BlocBuilder<ListPrestasiBloc, ListPrestasiState>(
                  builder: (context, state) {
                    var listPrestasi =
                        context.read<ListPrestasiBloc>().listPrestasi;
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: listPrestasi.length,
                                itemBuilder: (context, index) {
                                  var dataPrestasi = listPrestasi[index];
                                  return ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    subtitle: GestureDetector(
                                      onTap: () {
                                        // Navigator.of(context).pushNamed(
                                        //     ViewEditPrestasiPage.routeName);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10.sp),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Color(0xFFDDDDDD)),
                                          color: MyColorsConst.whiteColor,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.sp,
                                          vertical: 10.sp,
                                        ),
                                        child: Stack(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      '${dataPrestasi.namaPres ?? '-'}',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: MyColorsConst
                                                            .primaryColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      icon: Icon(
                                                          Icons.more_horiz),
                                                      onPressed: () {
                                                        setState(() {
                                                          showDeleteButton =
                                                              !showDeleteButton;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Tingkat',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 10.sp,
                                                              color: MyColorsConst
                                                                  .lightDarkColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${dataPrestasi.tingkatPrestasi ?? '-'}',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  MyColorsConst
                                                                      .darkColor,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Tahun',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 10.sp,
                                                              color: MyColorsConst
                                                                  .lightDarkColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${dataPrestasi.tahun ?? '-'}',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  MyColorsConst
                                                                      .darkColor,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.sp,
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                              top: 30,
                                              right: 15,
                                              child: Visibility(
                                                visible: showDeleteButton,
                                                child: Material(
                                                  elevation: 4,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 8.sp,
                                                        vertical: 4.sp,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFFDDDDDD)),
                                                        color: MyColorsConst
                                                            .whiteColor,
                                                      ),
                                                      child: Text(
                                                        'Hapus',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 12.sp,
                                                          color: MyColorsConst
                                                              .darkColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            TextButtonCustomV1(
                              text: "Tambah Data",
                              height: 50.sp,
                              backgroundColor:
                                  MyColorsConst.primaryColor.withOpacity(0.1),
                              textColor: MyColorsConst.primaryColor,
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(AddPrestasiPage.routeName);
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
