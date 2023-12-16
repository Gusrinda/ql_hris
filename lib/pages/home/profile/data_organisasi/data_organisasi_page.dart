import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi_bloc/add_organisasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/list_organisas_bloc/list_organisasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/view_edit_organisasi.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataOrganisasiPage extends StatefulWidget {
  static const routeName = '/DataOrganisasiPage';
  const DataOrganisasiPage({super.key});

  @override
  State<DataOrganisasiPage> createState() => _DataOrganisasiPageState();
}

class _DataOrganisasiPageState extends State<DataOrganisasiPage> {
  @override
  void initState() {
    super.initState();
    loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ListOrganisasiBloc>().add(GetListOrganisasi());
    });
  }

  void loadData() {
    context.read<ListOrganisasiBloc>().add(GetListOrganisasi());
  }

  int? deleteIndex;
  bool showDeleteButton = false;

  Future<void> _onRefresh() async {
    try {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<ListOrganisasiBloc>().add(GetListOrganisasi());
      });
      await Future.delayed(Duration(seconds: 1));
    } catch (error) {
      print('Refresh Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListOrganisasiBloc, ListOrganisasiState>(
      listener: (context, state) async {
        if (state is ListOrganisasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListOrganisasiSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is DeleteListOrganisaiSuccess) {
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
        } else if (state is ListOrganisasiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListOrganisasiFailedUserExpired) {
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
        } else if (state is ListOrganisasiFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            showDeleteButton = false;
            deleteIndex = null;
          });
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
                  child: BlocBuilder<ListOrganisasiBloc, ListOrganisasiState>(
                    builder: (context, state) {
                      var listOrganisasi =
                          context.read<ListOrganisasiBloc>().listorganisasi;
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
                                  itemCount: listOrganisasi.length,
                                  itemBuilder: (context, index) {
                                    var dataOrganisasi = listOrganisasi[index];
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          showDeleteButton = false;
                                          deleteIndex = null;
                                        });
                                      },
                                      child: ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        subtitle: Container(
                                          margin:
                                              EdgeInsets.only(bottom: 10.sp),
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
                                                        '${dataOrganisasi.nama ?? '-'}',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: MyColorsConst
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                      IconButton(
                                                        splashColor:
                                                            MyColorsConst
                                                                .redColor,
                                                        icon: Icon(
                                                            Icons.more_horiz),
                                                        onPressed: () {
                                                          setState(() {
                                                            // Ini buat munculkan tombol di index data itu saja
                                                            if (deleteIndex ==
                                                                index) {
                                                              // Ini buat nutup tombol
                                                              deleteIndex =
                                                                  null;
                                                              showDeleteButton =
                                                                  false;
                                                            } else {
                                                              // handle buat kalau ga klik apa apa
                                                              deleteIndex =
                                                                  index;
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
                                                              'Posisi',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 10.sp,
                                                                color: MyColorsConst
                                                                    .lightDarkColor,
                                                              ),
                                                            ),
                                                            Text(
                                                              '${dataOrganisasi.posisi ?? '-'}',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 12.sp,
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
                                                              'Tahun',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 10.sp,
                                                                color: MyColorsConst
                                                                    .lightDarkColor,
                                                              ),
                                                            ),
                                                            Text(
                                                              '${dataOrganisasi.tahun ?? '-'}',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 12.sp,
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
                                                  visible: showDeleteButton &&
                                                      deleteIndex == index,
                                                  child: Material(
                                                    elevation: 4,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    child: InkWell(
                                                      onTap: state
                                                              is ListOrganisasiLoading
                                                          ? null
                                                          : () {
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder: (_) =>
                                                                    DialogCustom(
                                                                  state: DialogCustomItem
                                                                      .confirm,
                                                                  message:
                                                                      "Apakah Yakin Menghapus Data Ini?",
                                                                  durationInSec:
                                                                      5,
                                                                  onContinue: () => context
                                                                      .read<
                                                                          ListOrganisasiBloc>()
                                                                      .add(DeleteListOrganisai(
                                                                          dataID: dataOrganisasi
                                                                              .id
                                                                              .toString())),
                                                                ),
                                                              );
                                                            },
                                                      child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 8.sp,
                                                          vertical: 4.sp,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xFFDDDDDD)),
                                                          color: Colors.red
                                                              .withOpacity(0.2),
                                                        ),
                                                        child: Text(
                                                          'Hapus',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 12.sp,
                                                            color: Colors
                                                                .red.shade900,
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) =>
                                            AddOrganisasiBloc(),
                                        child: AddOrganisasiPage(
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
