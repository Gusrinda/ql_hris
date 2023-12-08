import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/home_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/pengumuman_card.widget.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: BackgroundPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40.0), // Spacer for status bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          minRadius: 25,
                          maxRadius: 25,
                          backgroundColor: Colors.black54,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selamat Datang,',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Ari Kurniawan!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        alignment: Alignment.center,
                        child: const Icon(
                          CupertinoIcons.bell_fill,
                          size: 20,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.bag_badge_minus,
                                  color: MyColorsConst.primaryColor,
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "36 Hari",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Cuti Masa Kerja",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: MyColorsConst.disableColor),
                                )
                              ],
                            ),
                          )),
                      Container(
                        width: 1,
                        height: 60,
                        color: MyColorsConst.disableColor,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.calendar_badge_minus,
                                  color: MyColorsConst.primaryColor,
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "20 Hari",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Cuti Tahunan",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: MyColorsConst.disableColor),
                                )
                              ],
                            ),
                          )),
                      Container(
                        width: 1,
                        height: 60,
                        color: MyColorsConst.disableColor,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.timer,
                                  color: MyColorsConst.primaryColor,
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "120 Menit",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "P24",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: MyColorsConst.disableColor),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: Offset(0, 2),
                            color: MyColorsConst.primaryColor.withOpacity(0.1))
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
                                  create: (context) => CheckInOutBloc()
                                    ..add(AttendanceStateChecked()),
                                  child: const HomeCheckInOutPage(),
                                ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/presensi_menu.png',
                                width: 50,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Presensi",
                                style: TextStyle(
                                  fontSize: 10,
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
                                  builder: (context) => BlocProvider(
                                    create: (context) => ListLemburBloc()
                                      ..add(
                                          GetListLembur(date: DateTime.now())),
                                    child: LemburPage(),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/lembur_menu.png',
                                  width: 50,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Lembur",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: MyColorsConst.darkColor),
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
                                  builder: (context) => BlocProvider(
                                    create: (context) => ListDinasBloc()
                                      ..add(GetListDinas(date: DateTime.now())),
                                    child: DinasPage(),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spd_menu.png',
                                  width: 50,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Perjalanan Dinas",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: MyColorsConst.darkColor),
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
                                  builder: (context) => BlocProvider(
                                    create: (context) => ListCutiBloc()
                                      ..add(GetListCuti(date: DateTime.now())),
                                    child: CutiPage(),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/cuti_menu.png',
                                  width: 50,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Cuti",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: MyColorsConst.darkColor),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Pengumuman",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: MyColorsConst.darkColor),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(width: 20),
                    PengumumanCard(),
                    PengumumanCard(),
                    PengumumanCard(),
                  ],
                ),
              ),
              const SizedBox(height: 100)
            ],
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
    Color color1 = Color(0XFF9BF8F4);
    Color color2 = Color(0XFF6F7BF7);

    // Create a linear gradient
    final Gradient gradient = LinearGradient(
      colors: [color1, color2],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    // Create a Shader from the gradient
    final Shader shader = gradient.createShader(Rect.fromCircle(
      center: Offset(size.width / 2, -20), //Atur Tinggi Gradient Disini
      radius: size.width,
    ));

    // Set up a Paint object with the gradient shader
    Paint paint = Paint()
      ..shader = shader
      ..style = PaintingStyle.fill;

    // Draw half ellipse shape
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, -20),
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
