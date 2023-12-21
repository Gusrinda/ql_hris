import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DownloadBerkasPage extends StatefulWidget {
  static const routeName = '/DownloadBerkasPage';
  const DownloadBerkasPage({super.key});

  @override
  State<DownloadBerkasPage> createState() => _DownloadBerkasPageState();
}

class _DownloadBerkasPageState extends State<DownloadBerkasPage> {
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
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    children: [
                      DashboardItem(
                        label: 'Prosedur SOP Perusahaan',
                        image: 'assets/images/sop_sj.png',
                        onTap: () {},
                      ),
                      DashboardItem(
                        label: 'Sucess Jaya Academy',
                        image: 'assets/images/academy_sj.png',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            )
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
                    Icons.file_download_outlined,
                    size: 20.sp,
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
