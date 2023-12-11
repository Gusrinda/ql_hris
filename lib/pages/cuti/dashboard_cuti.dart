import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/add_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/jatah_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DashboardCutiPage extends StatefulWidget {
  static const routeName = '/DashboardCutiPage';
  const DashboardCutiPage({super.key});

  @override
  State<DashboardCutiPage> createState() => _DashboardCutiPageState();
}

class _DashboardCutiPageState extends State<DashboardCutiPage> {
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
            const SizedBox(height: 30),
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
                    width: size.width * 1 / 3.1,
                  ),
                  Expanded(
                    child: Text(
                      "Cuti",
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      DashboardItem(
                        label: 'Jatah Cuti',
                        image: 'assets/images/jatah_cuti.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JatahCutiPage()),
                          );
                        },
                      ),
                      DashboardItem(
                        label: 'History Cuti',
                        image: 'assets/images/history_cuti.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => ListCutiBloc()
                                  ..add(GetListCuti(date: DateTime.now())),
                                child: const CutiPage(),
                              ),
                            ),
                          );
                        },
                      ),
                      DashboardItem(
                        label: 'Pengajuan Cuti',
                        image: 'assets/images/pengajuan_cuti.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => AddCutiBloc()
                                  ..add(OnSelectAlasanCuti())
                                  ..add(OnSelectTipeCuti()),
                                child: AddCutiPage(
                                  reloadDataCallback: () {},
                                ),
                              ),
                            ),
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
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFDDDDDD)),
          color: MyColorsConst.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 0),
              blurRadius: 5,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.sp,
                    backgroundColor: Color(0xFF6F7BF7).withOpacity(0.0),
                    child: Image.asset(image),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    label,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: MyColorsConst.primaryColor,
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
