import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_realisasi_dinas_bloc/list_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/realisasi_dinas.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DashboardDinasPage extends StatefulWidget {
  static const routeName = '/DashboardDinasPage';
  const DashboardDinasPage({super.key});

  @override
  State<DashboardDinasPage> createState() => _DashboardDinasPageState();
}

class _DashboardDinasPageState extends State<DashboardDinasPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
            const SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(5.0),
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
                    width: size.width * 1 / 5,
                  ),
                  Expanded(
                    child: Text(
                      "Perjalanan Dinas",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      DashboardItem(
                        label: '(SPD)\nSurat Perjalanan Dinas',
                        image: 'assets/images/history_spd.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => ListDinasBloc()
                                  ..add(GetListDinas(date: DateTime.now())),
                                child: DinasPage(),
                              ),
                            ),
                          );
                        },
                      ),
                      DashboardItem(
                        label: '(REPD)\nRealisasi Perjalanan Dinas',
                        image: 'assets/images/pengajuan_cuti.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return BlocProvider(
                                create: (context) => ListRealisasiDinasBloc(),
                                child: RealisasiDinasPage(),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String label;
  final String image;
  final VoidCallback? onTap;

  const DashboardItem({
    Key? key,
    required this.label,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(255, 219, 220, 255)),
          color: MyColorsConst.whiteColor,
          boxShadow: [
            BoxShadow(
              color: MyColorsConst.primaryColor.withOpacity(0.15),
              offset: const Offset(0, 2),
              blurRadius: 5,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 15.sp),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF6F7BF7).withOpacity(0.0),
                    child: Image.asset(image),
                  ),
                  SizedBox(width: 15.sp),
                  Text(
                    label,
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: MyColorsConst.darkColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.sp),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16.sp,
                    color: MyColorsConst.darkColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
