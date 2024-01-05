import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa_bloc/add_bahasa_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/list_bahasa_bloc/list_bahasa_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/view_edit_bahasa.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pendidikan_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataBahasaPage extends StatefulWidget {
  static const routeName = '/DataBahasaPage';
  const DataBahasaPage({super.key});

  @override
  State<DataBahasaPage> createState() => _DataBahasaPageState();
}

class _DataBahasaPageState extends State<DataBahasaPage> {
  bool showDeleteButton = false;
  int? deleteIndex;

  @override
  void initState() {
    super.initState();
    loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ListBahasaBloc>().add(GetListBahasa());
    });
  }

  Future<void> _onRefresh() async {
    try {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<ListBahasaBloc>().add(GetListBahasa());
      });
      await Future.delayed(Duration(seconds: 1));
    } catch (error) {
      print('Refresh Error: $error');
    }
  }

  void loadData() {
    context.read<ListBahasaBloc>().add(GetListBahasa());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListBahasaBloc, ListBahasaState>(
      listener: (context, state) async {
        if (state is ListBahasaLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListBahasaSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is DeleteBahasaSuccess) {
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
        } else if (state is ListBahasaFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListBahasaFailedUserExpired) {
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
        } else if (state is ListBahasaFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: GestureDetector(
        onTap: () {
          // Sembunyikan tombol saat area di luar tombol ditekan
          if (showDeleteButton) {
            setState(() {
              showDeleteButton = false;
              deleteIndex = null;
            });
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
                stops: [0.0, 0.12],
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
                        width: size.width * 1 / 4,
                      ),
                      Expanded(
                        child: Text(
                          "Data Bahasa",
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
                  child: BlocBuilder<ListBahasaBloc, ListBahasaState>(
                    builder: (context, state) {
                      var listBahasa =
                          context.read<ListBahasaBloc>().listbahasa;
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
                                child: listBahasa.isNotEmpty
                                    ? ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: listBahasa.length,
                                        itemBuilder: (context, index) {
                                          var dataBahasa = listBahasa[index];
                                          return ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            subtitle: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        BlocProvider(
                                                      create: (context) =>
                                                          AddBahasaBloc(),
                                                      child: ViewEditBahasaPage(
                                                        bahasaId: dataBahasa.id ?? 0,
                                                        bhsDikuasai : dataBahasa.bhsDikuasai,
                                                        nilaiLisan: dataBahasa.nilaiLisan,
                                                        nilaiTertulis: dataBahasa.nilaiTertulis,
                                                          reloadDataCallback:
                                                              loadData),
                                                    ),
                                                  ),
                                                );

                                                setState(() {
                                                  showDeleteButton = false;
                                                  deleteIndex = null;
                                                });
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 10.sp),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Color(0xFFDDDDDD)),
                                                  color:
                                                      MyColorsConst.whiteColor,
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
                                                            SizedBox(
                                                              width:
                                                                  size.width *
                                                                      3 /
                                                                      5,
                                                              child: Text(
                                                                dataBahasa.bhsDikuasai ?? '-',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: MyColorsConst
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            ),
                                                            IconButton(
                                                              icon: const Icon(Icons
                                                                  .more_horiz),
                                                              splashColor:
                                                                  MyColorsConst
                                                                      .redColor,
                                                              onPressed: () {
                                                                setState(() {
                                                                  if (deleteIndex ==
                                                                      index) {
                                                                    // Menutup tombol hapus jika sudah terbuka
                                                                    showDeleteButton =
                                                                        false;
                                                                    deleteIndex =
                                                                        null;
                                                                  } else {
                                                                    // Membuka tombol hapus jika belum terbuka
                                                                    showDeleteButton =
                                                                        true;
                                                                    deleteIndex =
                                                                        index;
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
                                                                    'Nilai Lisan',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: MyColorsConst
                                                                          .lightDarkColor,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${dataBahasa.nilaiLisan ?? '-'}',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: MyColorsConst
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
                                                                    'Nilai Tertulis',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: MyColorsConst
                                                                          .lightDarkColor,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${dataBahasa.nilaiTertulis ?? '-'}',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: MyColorsConst
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
                                                        visible:
                                                            showDeleteButton &&
                                                                deleteIndex ==
                                                                    index,
                                                        child: Material(
                                                          elevation: 4,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                          child: InkWell(
                                                            onTap: state
                                                                    is ListDataPendidikan
                                                                ? null
                                                                : () {
                                                                    showDialog(
                                                                        context:
                                                                            context,
                                                                        builder: (_) =>
                                                                            DialogCustom(
                                                                              state: DialogCustomItem.confirm,
                                                                              message: "Apakah Yakin enghapus Data ini?",
                                                                              durationInSec: 5,
                                                                              onContinue: () => context.read<ListBahasaBloc>().add(DeleteListBahasa(dataID: dataBahasa.id.toString())),
                                                                            ));
                                                                  },
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                horizontal:
                                                                    8.sp,
                                                                vertical: 4.sp,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6),
                                                                border: Border.all(
                                                                    color: Color(
                                                                        0xFFDDDDDD)),
                                                                color: Colors
                                                                    .red
                                                                    .withOpacity(
                                                                        0.2),
                                                              ),
                                                              child: Text(
                                                                'Hapus',
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .red
                                                                      .shade900,
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
                                      )
                                    : Center(
                                        child: EmptyStateBuilder(),
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
                                        create: (context) => AddBahasaBloc(),
                                        child: AddBahasaPage(

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
      ),
    );
  }
}
