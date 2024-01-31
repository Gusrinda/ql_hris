import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/check_version/check_version_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/services/model/check_version/check_version.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/SplashPage';
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<CheckVersionBloc>().add(GetVersion());
      }),
    );
  }

  void handleCheckVersionSuccess(CheckVersionSuccess state) async {
    if (await state.isVersionMatch) {
      Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
    } else {
      _showUpdateDialog(state.dataVersion!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<CheckVersionBloc, CheckVersionState>(
      listener: (context, state) async {
        if (state is CheckVersionLoading) {
        } else if (state is CheckVersionSuccess) {
          handleCheckVersionSuccess(state);
        } else if (state is CheckVersionFailed) {
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else {
          await showDialog(
            context: context,
            builder: (_) => const DialogCustom(
              state: DialogCustomItem.error,
              message: "Gagal melakukan pengecekan Versi Aplikasi",
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg_login.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo_SJ.png",
                      width: size.width / 4,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "My Success",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF273E8D)),
                    ),
                    SizedBox(height: 10.sp),
                    SizedBox(
                      width: 30.sp,
                      height: 30.sp,
                      child: const CircularProgressIndicator(
                          color: Color(0XFF273E8D)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showUpdateDialog(DataVersion dataVersion) {
    showDialog(
      barrierDismissible: false,
      context: context,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ) ,
        title: RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: MyColorsConst.darkColor, // Ubah sesuai kebutuhan
            ),
            children: [
              TextSpan(
                text: "Update Aplikasi My Success",
              ),
              TextSpan(
                text: "\nVersi ${dataVersion.version}",
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        scrollable: true,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Release Notes :",
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                )),
            Text(dataVersion.note ?? "",
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _launchDownloadLink(dataVersion.link ?? "");
              context.read<CheckVersionBloc>().add(GetVersion());
            },
            style: TextButton.styleFrom(
              backgroundColor: MyColorsConst.primaryColor.withOpacity(0.1),
              padding: EdgeInsets.symmetric(horizontal: 20.sp)
            ),
            child: Text("Download",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }

  void _launchDownloadLink(String downloadLink) async {
    if (await canLaunchUrl(Uri.parse(downloadLink))) {
      await launchUrl(Uri.parse(downloadLink));
      context.read<CheckVersionBloc>().add(GetVersion());
    } else {
      print('Could not launch $downloadLink');
    }
  }
}
