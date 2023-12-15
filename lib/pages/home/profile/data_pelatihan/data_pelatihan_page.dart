import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan_bloc/add_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/list_pelatihan_bloc/list_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pelatihan_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataPelatihanPage extends StatefulWidget {
  static const routeName = '/DataPelatihanPage';
  const DataPelatihanPage({super.key});

  @override
  State<DataPelatihanPage> createState() => _DataPelatihanPageState();
}

class _DataPelatihanPageState extends State<DataPelatihanPage> {
  @override
  void initState() {
    super.initState();
    loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ListPelatihanBloc>().add(GetListPelatihan());
    });
  }

  int? deleteIndex;
  bool showDeleteButton = false;

  Future<void> _onRefresh() async {
    try {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<ListPelatihanBloc>().add(GetListPelatihan());
      });
      await Future.delayed(Duration(seconds: 1));
    } catch (error) {
      print('Refresh Error: $error');
    }
  }

  void loadData() {
    context.read<ListPelatihanBloc>().add(GetListPelatihan());
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
        } else if (state is DeletePelatihanSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          deleteIndex = null;
          showDeleteButton = false;
          Navigator.of(context).pop();
          _onRefresh();
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
                    List<DataPelatihan> listPelatihan =
                        context.read<ListPelatihanBloc>().listpelatihan;

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
                                  var dataPelatihan = listPelatihan[index];
                                  return ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    subtitle: GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) => BlocProvider(
                                        //       create: (context) =>
                                        //           AddPelatihanBloc()..add(OnSelectKota()),
                                        //       child: ViewEditPelatihanPage(
                                        //           dataPelatihan: dataPelatihan,
                                        //           idPelatihan: dataPelatihan.id,
                                        //           namaPelatihan:
                                        //               dataPelatihan.namaPel,
                                        //           namaLembaga:
                                        //               dataPelatihan.namaLem,
                                        //           tahun: dataPelatihan.tahun,
                                        //           idKota: dataPelatihan.kotaId,
                                        //           valueKota:
                                        //               dataPelatihan.kota),
                                        //     ),
                                        //   ),
                                        // );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10.sp),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1.5.sp,
                                              color: Color(0xFFDDDDDD)),
                                          color: MyColorsConst.whiteColor,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.sp,
                                          vertical: 10.sp,
                                        ),
                                        child: Stack(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "${dataPelatihan.namaPel}",
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
                                                      splashColor: MyColorsConst
                                                          .redColor,
                                                      icon: Icon(
                                                          Icons.more_horiz),
                                                      onPressed: () {
                                                        setState(() {
                                                          // Ini buat munculkan tombol di index data itu saja
                                                          if (deleteIndex ==
                                                              index) {
                                                            // Ini buat nutup tombol
                                                            deleteIndex = null;
                                                            showDeleteButton =
                                                                false;
                                                          } else {
                                                            // handle buat kalau ga klik apa apa
                                                            deleteIndex = index;
                                                            showDeleteButton =
                                                                true;
                                                          }
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
                                                            "${dataPelatihan.namaLem}",
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
                                                            "${dataPelatihan.tahun}",
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
                                                visible: showDeleteButton &&
                                                    deleteIndex == index,
                                                child: Material(
                                                  elevation: 5,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: InkWell(
                                                    onTap: state
                                                            is ListPelatihanLoading
                                                        ? null
                                                        : () {
                                                            showDialog(
                                                              context: context,
                                                              builder: (_) =>
                                                                  DialogCustom(
                                                                state:
                                                                    DialogCustomItem
                                                                        .confirm,
                                                                message:
                                                                    "Apakah Yakin Menghapus Data Ini?",
                                                                durationInSec:
                                                                    5,
                                                                onContinue: () => context
                                                                    .read<
                                                                        ListPelatihanBloc>()
                                                                    .add(DeleteListPelatihan(
                                                                        dataID: dataPelatihan
                                                                            .id
                                                                            .toString())),
                                                              ),
                                                            );
                                                          },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 15.sp,
                                                        vertical: 7.sp,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFFDDDDDD)),
                                                        color: Colors.red
                                                            .withOpacity(0.2),
                                                      ),
                                                      child: Text(
                                                        'Hapus',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .red
                                                                    .shade900),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                      create: (context) => AddPelatihanBloc(),
                                      child: AddPelatihanPage(
                                          reloadDataCallback: loadData),
                                    ),
                                  ),
                                );
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
