import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/list_pelatihan_bloc/list_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/view_edit_pelatihan.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pelatihan_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataPelatihanPage extends StatefulWidget {
  static const routeName = '/DataPelatihanPage';
  // final DataPelatihan dataPelatihan;
  const DataPelatihanPage({
    super.key,
    // required this.dataPelatihan,
  });

  @override
  State<DataPelatihanPage> createState() => _DataPelatihanPageState();
}

class _DataPelatihanPageState extends State<DataPelatihanPage> {
  bool showDeleteButton = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ListPelatihanBloc>().add(GetListPelatihan());
    });
    // BlocProvider.of<ListPelatihanBloc>(context).add(GetListPelatihan());
  }  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListPelatihanBloc, ListPelatihanState>(
      listener: (context, state) async {
        if (state is ListPelatihanLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListPelatihanSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
        } else if (state is ListPelatihanFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListPelatihanFailedUserExpired) {
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
        } else if (state is ListPelatihanFailedInBackground) {
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
                padding: EdgeInsets.all(5.0.sp),
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
                        "Data Pelatihan",
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
                child: BlocBuilder<ListPelatihanBloc, ListPelatihanState>(
                  builder: (context, state) {

                  List<DataPelatihan> listPelatihan =  context.read<ListPelatihanBloc>().listpelatihan;

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
                                itemCount: listPelatihan.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    subtitle: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            ViewEditPelatihanPage.routeName);
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
                                                      "${listPelatihan[index].namaPel}",
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
                                                            'Lembaga',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 10.sp,
                                                              color: MyColorsConst
                                                                  .lightDarkColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Quantum Leap',
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
                                                            '2020',
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
                                    .pushNamed(AddPelatihanPage.routeName);
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
