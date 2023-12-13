import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/add_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/bloc/biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/profile_page.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'home.view.dart';

class DashboardView extends StatefulWidget {
  static const routeName = 'DashboardPage';

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    try {
      // Dispatch the CheckInOutEvent to refresh the data
      context.read<CheckInOutBloc>().add(AttendanceStateChecked());
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
      child: Scaffold(
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
                  MultiBlocProvider(
                    providers: [
                      // BlocProvider(
                      //   create: (context) => CheckInOutBloc(),
                      // ),
                      BlocProvider(
                        create: (context) => ListLemburBloc(),
                      ),
                    ],
                    child: HomePage(),
                  ),
                  MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) =>
                            ProfileBloc()..add(GetDataProfile()),
                      ),
                      BlocProvider(
                        create: (context) => BiodataBloc()..add(GetBiodata()),
                      ),
                    ],
                    child: ProfilePage(),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: BlocBuilder<CheckInOutBloc, CheckInOutState>(
          builder: (context, state) {
            bool isButtonEnabled = false;
            if (state is CheckInOutSuccessInBackground) {
              isButtonEnabled = true;
            }

            return FloatingActionButton.large(
              heroTag: "FloatButton-CheckInOut",
              backgroundColor: state is CheckInOutSuccessInBackground
                  ? state.isCheckin
                      ? Colors.green.shade800
                      : Colors.red.shade800
                  : Colors.grey, 
              onPressed: isButtonEnabled
                  ? () async {
                      ProcessCheckInOutPageState checkInOutPageState =
                          state is CheckInOutSuccessInBackground
                              ? state.isCheckin
                                  ? ProcessCheckInOutPageState.checkin
                                  : ProcessCheckInOutPageState.checkout
                              : ProcessCheckInOutPageState.checkin;

                      await Navigator.of(context).pushNamed(
                        AddCheckInOutPage.routeName,
                        arguments: checkInOutPageState,
                      );
                      context
                          .read<CheckInOutBloc>()
                          .add(AttendanceStateChecked());
                    }
                  : null, // Atur nilai onPressed menjadi null jika tombol dinonaktifkan
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    state is CheckInOutSuccessInBackground
                        ? state.isCheckin
                            ? CupertinoIcons.square_arrow_right_fill
                            : CupertinoIcons.square_arrow_left_fill
                        : CupertinoIcons.checkmark_rectangle_fill,
                    size: 34.sp,
                  ),
                  SizedBox(height: 5.sp),
                  SizedBox(
                    width: 70,
                    child: Text(
                      state is CheckInOutSuccessInBackground
                          ? state.isCheckin
                              ? "PRESENSI MASUK"
                              : "PRESENSI KELUAR"
                          : "PRESENSI SELESAI",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.2.sp,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
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
      ),
    );
  }
}
