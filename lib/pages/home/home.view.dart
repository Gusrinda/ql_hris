import 'dart:developer';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/approval/approval.view.dart';
import 'package:sj_presensi_mobile/pages/approval/bloc/approval_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/birthday/birthday_card.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dashboard_dinas.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/download_berkas_page.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/kategori_berkas_bloc/berkas_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/cuti.widget.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/history_page.dart';
import 'package:sj_presensi_mobile/pages/home/home_bloc/home_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/bloc/pengumuman_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/list_pengumuman.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/pengumuman_card.widget.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_page.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_list_approval.dart';
import 'package:sj_presensi_mobile/services/model/profile_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-view';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    _requestPermissions();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const OnGetBirthday());
      context.read<CheckInOutBloc>().add(AttendanceStateChecked());
      context.read<PengumumanBloc>().add(GetListPengumuman());
      context.read<ApprovalBloc>().add(GetListApproval());
    });
    // BlocProvider.of<CheckInOutBloc>(context).add(AttendanceStateChecked());
  }

  Future<void> _requestPermissions() async {
    await [
      Permission.camera,
      Permission.mediaLibrary,
      Permission.storage,
      Permission.photos,
      Permission.location,
    ].request();
  }

  Future<void> _onRefresh() async {
    try {
      // Dispatch the CheckInOutEvent to refresh the data
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<HomeBloc>().add(const OnGetBirthday());
        context.read<CheckInOutBloc>().add(AttendanceStateChecked());
        context.read<PengumumanBloc>().add(GetListPengumuman());
        context.read<ApprovalBloc>().add(GetListApproval());
      });
      // Add any additional refreshing logic here if needed
      await Future.delayed(Duration(seconds: 1));
    } catch (error) {
      print('Refresh Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 50,
      key: _refreshIndicatorKey,
      onRefresh: _onRefresh,
      child: BlocListener<CheckInOutBloc, CheckInOutState>(
        listener: (context, state) async {
          if (state is CheckInOutLoading) {
            LoadingDialog.showLoadingDialog(context);
          } else if (state is InfoCheckInOutSuccessInBackground) {
            LoadingDialog.dismissDialog(context);
          } else if (state is CheckInOutSuccessInBackground) {
            LoadingDialog.dismissDialog(context);
          } else if (state is CheckInOutFailed) {
            LoadingDialog.dismissDialog(context);
            await showDialog(
              context: context,
              builder: (_) => DialogCustom(
                state: DialogCustomItem.error,
                message: state.message,
              ),
            );
          } else if (state is CheckInOutFailedUserExpired) {
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
          } else if (state is CheckInOutFailedInBackground) {
            LoadingDialog.dismissDialog(context);
            Navigator.of(context)
                .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
          }
        },
        child: Scaffold(
          backgroundColor: MyColorsConst.primaryBGColor,
          body: SingleChildScrollView(
            child: CustomPaint(
              painter: BackgroundPainter(),
              child: BlocBuilder<CheckInOutBloc, CheckInOutState>(
                builder: (context, state) {
                  String? name;
                  String? fotoProfil;
                  InfoCuti? infoCuti;
                  if (state is InfoCheckInOutSuccessInBackground) {
                    name = state.name;
                    fotoProfil = state.fotoProfil;
                    infoCuti = state.infoCuti;
                  } else if (state is CheckInOutSuccessInBackground) {
                    name = state.name;
                    fotoProfil = state.fotoProfil;
                    print("INI LINK FOTO PROFILE ${fotoProfil}");
                    infoCuti = state.infoCuti;
                  }
                  return Stack(
                    children: [
                      Positioned(
                        top: 62.sp,
                        left: MediaQuery.of(context).size.width * 1 / 5,
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * 1 / 2,
                            child: Opacity(
                                opacity: 0.5,
                                child: Image.asset(
                                    "assets/images/white-sj-30.png"))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.sp), // Spacer for status bar
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        minRadius: 25.sp,
                                        maxRadius: 25.sp,
                                        backgroundColor: Colors.black54,
                                        child: fotoProfil !=
                                                "//${MyGeneralConst.API_URL}/"
                                            ? ClipOval(
                                                child: CachedNetworkImage(
                                                  imageUrl: fotoProfil ??
                                                      'https://st4.depositphotos.com/9998432/24428/v/450/depositphotos_244284796-stock-illustration-person-gray-photo-placeholder-man.jpg',
                                                  width: double.infinity,
                                                  height: 170,
                                                  fit: BoxFit.cover,
                                                  progressIndicatorBuilder: (context,
                                                          url,
                                                          downloadProgress) =>
                                                      CircularProgressIndicator(
                                                          value:
                                                              downloadProgress
                                                                  .progress),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .grey.shade200),
                                                    child: const Icon(
                                                      Icons
                                                          .image_not_supported_rounded,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.no_photography,
                                                    size: 15.sp,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: 27.sp,
                                                    child: Text(
                                                      "Tidak Ada Foto",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 5.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  )
                                                ],
                                              ),
                                      ),
                                      const SizedBox(width: 10),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Selamat Datang,',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '#SJGWarrior',
                                              style: GoogleFonts.poppins(
                                                  color: MyColorsConst
                                                      .primaryLight2Color,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                name ?? 'Karyawan SJ',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  BlocBuilder<ApprovalBloc, ApprovalState>(
                                    builder: (context, state) {
                                      List<DataApproval>? listApproval;
                                      if (state
                                          is ListApprovalSuccessInBackground) {
                                        listApproval = state.listApproval ?? [];
                                      }
                                      if (state is ListApprovalFailed) {
                                        listApproval = [];
                                      }

                                      return InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BlocProvider(
                                                create: (context) =>
                                                    ApprovalBloc()
                                                      ..add(GetListApproval()),
                                                child: ApprovalPage(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: 45.sp,
                                          width: 45.sp,
                                          child: Stack(
                                            children: [
                                              // Ikon
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                ),
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  CupertinoIcons
                                                      .doc_checkmark_fill,
                                                  size: 25.sp,
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                ),
                                              ),
                                              // Small Circle
                                              if (listApproval != null &&
                                                  listApproval.isNotEmpty)
                                                Positioned(
                                                  top: 6.sp,
                                                  right: 6.sp,
                                                  child: Container(
                                                    height: 10.sp,
                                                    width: 10.sp,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          CutiCard(
                            infoCuti: infoCuti ?? InfoCuti(),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20),
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(7),
                          //     child: BackdropFilter(
                          //       filter:
                          //           ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          //       child: Container(
                          //         padding:
                          //             const EdgeInsets.symmetric(vertical: 15),
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(10.sp),
                          //           gradient: LinearGradient(
                          //             colors: [
                          //               Colors.white.withOpacity(1),
                          //               Colors.white.withOpacity(0.9),
                          //             ],
                          //             begin: AlignmentDirectional.topStart,
                          //             end: AlignmentDirectional.bottomEnd,
                          //           ),
                          //           border: Border.all(
                          //             width: 1.5,
                          //             color: Colors.white.withOpacity(0.3),
                          //           ),
                          //         ),
                          //         child: Row(
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.center,
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Expanded(
                          //                 flex: 1,
                          //                 child: Container(
                          //                   padding: EdgeInsets.symmetric(
                          //                       horizontal: 15),
                          //                   child: Column(
                          //                     crossAxisAlignment:
                          //                         CrossAxisAlignment.start,
                          //                     children: [
                          //                       const Icon(
                          //                         CupertinoIcons
                          //                             .bag_badge_minus,
                          //                         color: MyColorsConst
                          //                             .primaryColor,
                          //                       ),
                          //                       const SizedBox(height: 7),
                          //                       RichText(
                          //                         text: TextSpan(
                          //                           children: [
                          //                             TextSpan(
                          //                               text:
                          //                                   "${infoCuti?.sisaCutiMasaKerja?.toString() ?? '0'}",
                          //                               style:
                          //                                   GoogleFonts.poppins(
                          //                                 fontSize: 18.sp,
                          //                                 fontWeight:
                          //                                     FontWeight.w700,
                          //                                 color: MyColorsConst
                          //                                     .primaryColor,
                          //                               ),
                          //                             ),
                          //                             TextSpan(
                          //                               text:
                          //                                   " / ${infoCuti?.cutiMasaKerja?.toString() ?? '0'}\nHari",
                          //                               style:
                          //                                   GoogleFonts.poppins(
                          //                                 height: 1,
                          //                                 fontSize: 12.sp,
                          //                                 fontWeight:
                          //                                     FontWeight.w600,
                          //                                 color: MyColorsConst
                          //                                     .darkColor,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                       ),
                          //                       const SizedBox(height: 5),
                          //                       Text(
                          //                         "Cuti Masa Kerja",
                          //                         style: GoogleFonts.poppins(
                          //                             fontSize: 9.sp,
                          //                             fontWeight:
                          //                                 FontWeight.w500,
                          //                             color:
                          //                                 Colors.grey.shade600),
                          //                       )
                          //                     ],
                          //                   ),
                          //                 )),
                          //             Container(
                          //               width: 1,
                          //               height: 60.sp,
                          //               color: MyColorsConst.disableColor,
                          //             ),
                          //             Expanded(
                          //                 flex: 1,
                          //                 child: Container(
                          //                   padding: EdgeInsets.symmetric(
                          //                       horizontal: 15),
                          //                   child: Column(
                          //                     crossAxisAlignment:
                          //                         CrossAxisAlignment.start,
                          //                     children: [
                          //                       const Icon(
                          //                         CupertinoIcons
                          //                             .calendar_badge_minus,
                          //                         color: MyColorsConst
                          //                             .primaryColor,
                          //                       ),
                          //                       const SizedBox(height: 7),
                          //                       RichText(
                          //                         text: TextSpan(
                          //                           children: [
                          //                             TextSpan(
                          //                               text:
                          //                                   "${infoCuti?.sisaCutiReguler?.toString() ?? '0'}",
                          //                               style:
                          //                                   GoogleFonts.poppins(
                          //                                 fontSize: 18.sp,
                          //                                 fontWeight:
                          //                                     FontWeight.w700,
                          //                                 color: MyColorsConst
                          //                                     .primaryColor,
                          //                               ),
                          //                             ),
                          //                             TextSpan(
                          //                               text:
                          //                                   " / ${infoCuti?.cutiReguler?.toString() ?? '0'}\nHari",
                          //                               style:
                          //                                   GoogleFonts.poppins(
                          //                                 height: 1,
                          //                                 fontSize: 12.sp,
                          //                                 fontWeight:
                          //                                     FontWeight.w600,
                          //                                 color: MyColorsConst
                          //                                     .darkColor,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                       ),
                          //                       const SizedBox(height: 5),
                          //                       Text(
                          //                         "Cuti Tahunan",
                          //                         style: GoogleFonts.poppins(
                          //                             fontSize: 9.sp,
                          //                             fontWeight:
                          //                                 FontWeight.w500,
                          //                             color:
                          //                                 Colors.grey.shade600),
                          //                       )
                          //                     ],
                          //                   ),
                          //                 )),
                          //             Container(
                          //               width: 1,
                          //               height: 60,
                          //               color: MyColorsConst.disableColor,
                          //             ),
                          //             Expanded(
                          //                 flex: 1,
                          //                 child: Container(
                          //                   padding: EdgeInsets.symmetric(
                          //                       horizontal: 15),
                          //                   child: Column(
                          //                     crossAxisAlignment:
                          //                         CrossAxisAlignment.start,
                          //                     children: [
                          //                       const Icon(
                          //                         CupertinoIcons.timer,
                          //                         color: MyColorsConst
                          //                             .primaryColor,
                          //                       ),
                          //                       const SizedBox(height: 7),
                          //                       RichText(
                          //                         text: TextSpan(
                          //                           children: [
                          //                             TextSpan(
                          //                               text:
                          //                                   "${infoCuti?.sisaCutiP24?.toString() ?? '0'}",
                          //                               style:
                          //                                   GoogleFonts.poppins(
                          //                                 fontSize: 18.sp,
                          //                                 fontWeight:
                          //                                     FontWeight.w700,
                          //                                 color: MyColorsConst
                          //                                     .primaryColor,
                          //                               ),
                          //                             ),
                          //                             TextSpan(
                          //                               text:
                          //                                   " / ${infoCuti?.cutiP24?.toString() ?? '0'}\nMenit",
                          //                               style:
                          //                                   GoogleFonts.poppins(
                          //                                 height: 1,
                          //                                 fontSize: 12.sp,
                          //                                 fontWeight:
                          //                                     FontWeight.w600,
                          //                                 color: MyColorsConst
                          //                                     .darkColor,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                       ),
                          //                       const SizedBox(height: 5),
                          //                       Text(
                          //                         "P24",
                          //                         style: GoogleFonts.poppins(
                          //                             fontSize: 9.sp,
                          //                             fontWeight:
                          //                                 FontWeight.w500,
                          //                             color:
                          //                                 Colors.grey.shade600),
                          //                       )
                          //                     ],
                          //                   ),
                          //                 ))
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(height: 20.sp),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20),
                          //   child: Text(
                          //     "Menu",
                          //     style: GoogleFonts.poppins(
                          //         fontSize: 14.sp,
                          //         fontWeight: FontWeight.w600,
                          //         color: Colors.white),
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 20,
                                        offset: Offset(0, 2),
                                        color: MyColorsConst.primaryColor
                                            .withOpacity(0.1))
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlocProvider(
                                              create: (context) =>
                                                  HistoryAttendanceBloc()
                                                    ..add(
                                                      GetAttendancesHistory(
                                                        date: DateTime.now(),
                                                      ),
                                                    ),
                                              child: const HistoryPage(),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/presensi_menu.png',
                                            width: 50.sp,
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "Presensi",
                                            style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                              color: MyColorsConst.darkColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BlocProvider(
                                                create: (context) =>
                                                    ListLemburBloc()
                                                      ..add(GetListLembur(
                                                          date:
                                                              DateTime.now())),
                                                child: const LemburPage(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/lembur_menu.png',
                                              width: 50.sp,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Lembur",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      MyColorsConst.darkColor),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DashboardDinasPage(),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/spd_menu.png',
                                              width: 50.sp,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Perjalanan Dinas",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      MyColorsConst.darkColor),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BlocProvider(
                                                create: (context) =>
                                                    ListCutiBloc()
                                                      ..add(GetListCuti(
                                                          date:
                                                              DateTime.now())),
                                                child: CutiPage(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/cuti_new.png',
                                              width: 50.sp,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Cuti",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      MyColorsConst.darkColor),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BlocProvider(
                                                create: (context) =>
                                                    BerkasBloc(),
                                                child:
                                                    const DownloadBerkasPage(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/doc.png',
                                              width: 50.sp,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "SOP Dan Training",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      MyColorsConst.darkColor),
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          BlocListener<HomeBloc, HomeState>(
                            listener: (context, state) {},
                            child: BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                var dataBirthday =
                                    state.responseDataKaryawan?.data ?? [];

                                // log("HBD $dataBirthday");

                                if (dataBirthday == null ||
                                    dataBirthday == []) {
                                  return const SizedBox();
                                } else if (dataBirthday.isNotEmpty) {
                                  // _audioPlayer.play(AssetSource(
                                  //     'sounds/Selamat Ulang Tahun.mp3'));
                                  return Column(
                                    children: [
                                      SizedBox(height: 20.sp),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: birthdaySection(context),
                                      ),
                                      SizedBox(height: 20.sp),
                                    ],
                                  );
                                } else {
                                  return const SizedBox();
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pengumuman",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: MyColorsConst.darkColor),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BlocProvider(
                                                create: (context) =>
                                                    PengumumanBloc(),
                                                child: ListPengumumanPage(),
                                              )),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "Lihat Semua",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: MyColorsConst.primaryColor),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: MyColorsConst.primaryColor,
                                        size: 20.sp,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.sp),
                          BlocBuilder<PengumumanBloc, PengumumanState>(
                            builder: (context, state) {
                              var listPengumuman =
                                  context.read<PengumumanBloc>().listpengumuman;
                              int itemCount = listPengumuman.length > 5
                                  ? 5
                                  : listPengumuman.length;
                              return Container(
                                constraints: BoxConstraints(maxHeight: 280.sp),
                                child: listPengumuman.isNotEmpty
                                    ? ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: itemCount,
                                        itemBuilder: (context, index) {
                                          var pengumuman =
                                              listPengumuman[index];
                                          return Container(
                                            margin: EdgeInsets.only(
                                                left: index == 0 ? 20.0 : 0.0),
                                            child: PengumumanCard(
                                              imageUrl: pengumuman.thumb,
                                              judul: pengumuman.judul,
                                              tanggal: DateFormat(
                                                "dd MMMM yyyy",
                                                "id_ID",
                                              ).format(
                                                DateFormat(
                                                  "dd/MM/yyyy HH:mm",
                                                ).parse(pengumuman.createdAt ??
                                                    '-'),
                                              ),
                                              tag: '#${pengumuman.tag}',
                                              detail: pengumuman.content,
                                            ),
                                          );
                                        },
                                      )
                                    : Container(
                                        constraints: BoxConstraints(
                                            maxHeight: 280.sp,
                                            minHeight: 100.sp),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 30.sp),
                                              Image.asset(
                                                "assets/images/box_nodata.png",
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    4,
                                              ),
                                              Text('Tidak Ada Pengumuman',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: MyColorsConst
                                                          .darkColor)),
                                            ],
                                          ),
                                        ),
                                      ),
                              );
                            },
                          ),
                          const SizedBox(height: 100)
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define gradient colors
    Color color1 = Colors.black;
    Color color2 = MyColorsConst.primaryColor;

    // Create a linear gradient
    final Gradient gradient = LinearGradient(
      colors: [color1, color2],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    // Create a Shader from the gradient
    final Shader shader = gradient.createShader(Rect.fromCircle(
      center:
          Offset(size.width.sp / 2.sp, -20.sp), //Atur Tinggi Gradient Disini
      radius: size.width,
    ));

    // Set up a Paint object with the gradient shader
    Paint paint = Paint()
      ..shader = shader
      ..style = PaintingStyle.fill;

    // Draw half ellipse shape
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width.sp / 2.sp, -20.sp),
        radius: size.width,
      ),
      0,
      3.14, // Positive value for the top half
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
