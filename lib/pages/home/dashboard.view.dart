import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/pengumuman.view.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/profile_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'home.view.dart';

class DashboardView extends StatefulWidget {
  static const routeName = 'DashboardPage';

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              // physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                BlocProvider(
                  create: (context) =>
                      CheckInOutBloc()..add(AttendanceStateChecked()),
                  child: HomePage(),
                ),
                BlocProvider(
                  create: (context) => ProfileBloc()..add(GetDataProfile()),
                  child: ProfilePage(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        heroTag: "FloatButton-Presensi",
        backgroundColor: Colors.green.shade800,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.square_arrow_right_fill,
              size: 34.sp,
            ),
            SizedBox(height: 5.sp),
            SizedBox(
              width: 70,
              child: Text(
                "PRESENSI MASUK",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.2.sp),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        height: 60.sp,
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        color: MyColorsConst.whiteColor,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70.sp,
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.square_grid_2x2_fill,
                                size: 20.sp,
                                color: _currentIndex == 0
                                    ? MyColorsConst.primaryColor
                                    : MyColorsConst.disableColor,
                              ),
                              if (_currentIndex ==
                                  0) // Show text only when Home is active
                                Text(
                                  'Dashboard',
                                  style: GoogleFonts.poppins(
                                      color: MyColorsConst.primaryColor,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40.sp)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 40.sp),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70.sp,
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.person_fill,
                                size: 20.sp,
                                color: _currentIndex == 1
                                    ? MyColorsConst.primaryColor
                                    : MyColorsConst.disableColor,
                              ),
                              if (_currentIndex ==
                                  1) // Show text only when Profile is active
                                Text(
                                  'Profile',
                                  style: GoogleFonts.poppins(
                                      color: MyColorsConst.primaryColor,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
