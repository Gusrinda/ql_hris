import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/add_keluarga.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/add_keluarga_bloc/add_keluarga_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/list_keluarga_bloc/list_keluarga_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/view_edit_keluarga.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataKeluargaPage extends StatefulWidget {
  static const routeName = '/DataKeluargaPage';
  const DataKeluargaPage({
    super.key,
  });

  @override
  State<DataKeluargaPage> createState() => _DataKeluargaPageState();
}

class _DataKeluargaPageState extends State<DataKeluargaPage> {
  @override
  void initState() {
    super.initState();
    loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ListKeluargaBloc>().add(GetListKeluarga());
    });
  }

  void loadData() {
    context.read<ListKeluargaBloc>().add(GetListKeluarga());
  }

  int? deleteIndex;
  bool showDeleteButton = false;

  Future<void> _onRefresh() async {
    try {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<ListKeluargaBloc>().add(GetListKeluarga());
      });
      await Future.delayed(Duration(seconds: 1));
    } catch (error) {
      print('Refresh Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListKeluargaBloc, ListKeluargaState>(
      listener: (context, state) async {
        if (state is ListKeluargaLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListKeluargaSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is DeleteKeluargaSuccess) {
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
        } else if (state is ListKeluargaFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListKeluargaFailedUserExpired) {
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
        } else if (state is ListKeluargaFailedInBackground) {
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
                  child: BlocBuilder<ListKeluargaBloc, ListKeluargaState>(
                    builder: (context, state) {
                      var listKeluarga =
                          context.read<ListKeluargaBloc>().listkeluarga;
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
                                child: listKeluarga.isNotEmpty
                                    ? ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: listKeluarga.length,
                                        itemBuilder: (context, index) {
                                          var dataKeluarga =
                                              listKeluarga[index];
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
                                                                AddKeluargaBloc(),
                                                            child:
                                                                ViewEditKeluargaPage(
                                                              dataKeluargaId: dataKeluarga.id ?? 0,
                                                              idKeluarga:
                                                                  dataKeluarga
                                                                      .keluargaId,
                                                              valueKeluarga:
                                                                  dataKeluarga
                                                                      .keluarga,
                                                              nama: dataKeluarga
                                                                  .nama,
                                                              idPendidikan:
                                                                  dataKeluarga
                                                                      .pendTerakhirId,
                                                              valuePendidikan:
                                                                  dataKeluarga
                                                                      .pendidikan,
                                                              idPekerjaan:
                                                                  dataKeluarga
                                                                      .pekerjaanId,
                                                              valuePekerjaan:
                                                                  dataKeluarga
                                                                      .pekerjaan,
                                                              idJenisKelamin:
                                                                  dataKeluarga
                                                                      .jkId,
                                                              valueJenisKelamin:
                                                                  dataKeluarga
                                                                      .jenisKelamin,
                                                              usia: dataKeluarga
                                                                  .usia,
                                                              catatan:
                                                                  dataKeluarga
                                                                      .desc,
                                                              reloadDataCallback:
                                                                  loadData,
                                                            ),
                                                          )),
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
                                                      BorderRadius.circular(
                                                          10.sp),
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
                                                                '${dataKeluarga.nama ?? '-'}',
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
                                                              splashColor:
                                                                  MyColorsConst
                                                                      .redColor,
                                                              icon: Icon(Icons
                                                                  .more_horiz),
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
                                                                    'Keluarga',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: MyColorsConst
                                                                          .lightDarkColor,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${dataKeluarga.keluarga ?? '-'}',
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
                                                                    'Umur',
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: MyColorsConst
                                                                          .lightDarkColor,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${dataKeluarga.usia ?? '-'} Tahun',
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
                                                                    is ListKeluargaLoading
                                                                ? null
                                                                : () {
                                                                    showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (_) =>
                                                                              DialogCustom(
                                                                        state: DialogCustomItem
                                                                            .confirm,
                                                                        message:
                                                                            "Apakah Yakin Menghapus Data Ini?",
                                                                        durationInSec:
                                                                            5,
                                                                        onContinue: () => context
                                                                            .read<ListKeluargaBloc>()
                                                                            .add(DeleteListKeluarga(dataID: dataKeluarga.id.toString())),
                                                                      ),
                                                                    );
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
                                                                            6.sp),
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
                                        create: (context) => AddKeluargaBloc(),
                                        child: AddKeluargaPage(
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
