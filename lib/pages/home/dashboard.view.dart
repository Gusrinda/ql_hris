import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                HomePage(),
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
      floatingActionButton: FloatingActionButton(
        heroTag: "FloatButton-Presensi",
        backgroundColor: Colors.green.shade700,
        onPressed: () {
          // Handle floating button press
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.square_arrow_right_fill,
              size: 20,
            ),
            Text(
              "MASUK",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 7, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        height: 50,
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        color: MyColorsConst.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
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
                          size: 20,
                          color: _currentIndex == 0
                              ? MyColorsConst.primaryColor
                              : MyColorsConst.disableColor,
                        ),
                        if (_currentIndex ==
                            0) // Show text only when Home is active
                          const Text(
                            'Dashboard',
                            style: TextStyle(
                                color: MyColorsConst.primaryColor,
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Column(
                    children: [
                      Icon(
                        CupertinoIcons.person_fill,
                        size: 20,
                        color: _currentIndex == 1
                            ? MyColorsConst.primaryColor
                            : MyColorsConst.disableColor,
                      ),
                      if (_currentIndex ==
                          1) // Show text only when Profile is active
                        const Text(
                          'Profile',
                          style: TextStyle(
                              color: MyColorsConst.primaryColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w600),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
