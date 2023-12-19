import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/pages/approval/approval.view.dart';
import 'package:sj_presensi_mobile/pages/approval/bloc/approval_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/history_page.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/pengumuman_card.widget.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_page.dart';
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
    // BlocProvider.of<CheckInOutBloc>(context).add(AttendanceStateChecked());
  }

  Future<void> _onRefresh() async {
    try {
      // Dispatch the CheckInOutEvent to refresh the data
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<CheckInOutBloc>().add(AttendanceStateChecked());
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
      child: Scaffold(
        body: SingleChildScrollView(
          child: CustomPaint(
            painter: BackgroundPainter(),
            child: BlocBuilder<CheckInOutBloc, CheckInOutState>(
              builder: (context, state) {
                String? name;
                String? fotoProfil;
                String? cutiMasaKerja;
                String? cutiTahunan;
                String? p24;
                if (state is InfoCheckInOutSuccessInBackground) {
                  name = state.name;
                  fotoProfil = state.fotoProfil;
                  cutiMasaKerja = state.cutiMasaKerja;
                  cutiTahunan = state.cutiTahunan;
                  p24 = state.p24;
                } else if (state is CheckInOutSuccessInBackground) {
                  name = state.name;
                  fotoProfil = state.fotoProfil;
                  cutiMasaKerja = state.cutiMasaKerja;
                  cutiTahunan = state.cutiTahunan;
                  p24 = state.p24;
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.sp), // Spacer for status bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  minRadius: 25.sp,
                                  maxRadius: 25.sp,
                                  backgroundColor: Colors.black54,
                                  child: fotoProfil != null
                                      ? ClipOval(
                                          child: Image.network(
                                            fotoProfil,
                                            fit: BoxFit.cover,
                                            width: 50.sp,
                                            height: 50.sp,
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
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 5.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic
                                      ),
                                    ),
                                    Text(
                                      name ?? 'Karyawan SJ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                      create: (context) => ApprovalBloc()
                                        ..add(
                                          GetListApproval(),
                                        ),
                                      child: ApprovalPage(),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 40.sp,
                                width: 40.sp,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                alignment: Alignment.center,
                                child: Icon(
                                  CupertinoIcons.bell_fill,
                                  size: 20.sp,
                                  color: MyColorsConst.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.bag_badge_minus,
                                        color: MyColorsConst.primaryColor,
                                      ),
                                      const SizedBox(height: 7),
                                      Text(
                                        "${cutiMasaKerja ?? '-'} Hari",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Cuti Masa Kerja",
                                        style: GoogleFonts.poppins(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w500,
                                            color: MyColorsConst.disableColor),
                                      )
                                    ],
                                  ),
                                )),
                            Container(
                              width: 1,
                              height: 60.sp,
                              color: MyColorsConst.disableColor,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.calendar_badge_minus,
                                        color: MyColorsConst.primaryColor,
                                      ),
                                      const SizedBox(height: 7),
                                      Text(
                                        "${cutiTahunan ?? '-'} Hari",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Cuti Tahunan",
                                        style: GoogleFonts.poppins(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w500,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.timer,
                                        color: MyColorsConst.primaryColor,
                                      ),
                                      const SizedBox(height: 7),
                                      p24 == null
                                          ? Text(
                                              "- Jam",
                                              style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          : Text(
                                              "${p24} Jam",
                                              style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                      Text(
                                        "P24",
                                        style: GoogleFonts.poppins(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w500,
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
                      child: Text(
                        "Menu",
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
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
                                        builder: (context) => BlocProvider(
                                          create: (context) => ListLemburBloc()
                                            ..add(GetListLembur(
                                                date: DateTime.now())),
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
                                            ..add(GetListDinas(
                                                date: DateTime.now())),
                                          child: DinasPage(),
                                        ),
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
                                            ..add(GetListCuti(
                                                date: DateTime.now())),
                                          child: CutiPage(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/cuti_menu.png',
                                        width: 50.sp,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "Cuti",
                                        style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
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
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Lihat Semua",
                          //       style: GoogleFonts.poppins(
                          //           fontSize: 12.sp,
                          //           fontWeight: FontWeight.w500,
                          //           color: MyColorsConst.primaryColor),
                          //     ),
                          //     Icon(
                          //       Icons.keyboard_arrow_right_rounded,
                          //       color: MyColorsConst.primaryColor,
                          //       size: 20.sp,
                          //     )
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(maxHeight: 280.sp),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: const [
                          SizedBox(width: 20),
                          PengumumanCard(
                            imageUrl: 'assets/images/cuti_bersama.jpg',
                            judul: "Kebijakan Cuti Tahun 2024",
                            tanggal: "17 Desember 2023",
                            detail:
                                "Kami berharap bahwa pesan ini menemukan Anda dalam keadaan baik dan bersemangat. Sejalan dengan komitmen kami",
                          ),
                          PengumumanCard(
                            imageUrl: 'assets/images/uu-ciptakerja.jpg',
                            judul:
                                "Poin Penting untuk Pekerja dalam UU Cipta Kerja",
                            tanggal: "2 Desember 2023",
                            detail:
                                "DPR resmi menyetujui Rancangan Undang-Undang (RUU) Cipta Kerja untuk disahkan menjadi UU yang salah satunya mengatur tentang klaster ketenagakerjaan.",
                          ),
                          PengumumanCard(
                            imageUrl: 'assets/images/k3.jpeg',
                            judul:
                                "Mengenal Pentingnya K3 Dalam Lingkungan Kerja",
                            tanggal: "17 Desember 2023",
                            detail:
                                "Kesehatan dan Keselamatan Kerja (K3) merupakan hal yang sangat signifikan dalam sektor industri dan lingkungan kerja. Pada bahasan kali ini, kita akan mmembahas semua tentang K3, termasuk pengertian, tujuan, ruang lingkup, dan jenis-jenis bahaya yang perlu diperhatikan. Mungkin masih ada di antara kita yang belum sepenuhnya familiar dengan istilah K3, namun seringkali kita menjumpainya di berbagai institusi, perusahaan, dan tempat kerja. K3 bukan sekadar sebuah ilmu pengetahuan, tetapi juga merupakan upaya konkret untuk mencegah terjadinya kecelakaan dan memastikan kesehatan serta keselamatan bagi mereka yang bekerja di berbagai sektor. ",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100)
                  ],
                );
              },
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
