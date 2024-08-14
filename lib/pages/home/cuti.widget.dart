import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/model/profile_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class CutiCard extends StatelessWidget {
  const CutiCard({super.key, required this.infoCuti});

  final InfoCuti infoCuti;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.sp),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                color:
                    Colors.transparent, // Harus transparan agar blur terlihat
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                // color: Colors.white,
                gradient: LinearGradient(
                  colors: [
                    MyColorsConst.primaryColor.withOpacity(0.3),
                    MyColorsConst.whiteColor.withOpacity(0.5),
                  ],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                ),
                border: Border.all(
                  width: 1,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
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
                              color: Colors.white,
                            ),
                            const SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: infoCuti.sisaCutiMasaKerja
                                            ?.toString() ??
                                        '0',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.amber.shade300,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " / ${infoCuti.cutiMasaKerja?.toString() ?? '0'}\nHari",
                                    style: GoogleFonts.poppins(
                                      height: 1,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: MyColorsConst.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Cuti Masa Kerja",
                              style: GoogleFonts.poppins(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.amber.shade300),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              CupertinoIcons.calendar_badge_minus,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        infoCuti.sisaCutiReguler?.toString() ??
                                            '0',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.amber.shade300,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " / ${infoCuti.cutiReguler?.toString() ?? '0'}\nHari",
                                    style: GoogleFonts.poppins(
                                      height: 1,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: MyColorsConst.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Cuti Tahunan",
                              style: GoogleFonts.poppins(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.amber.shade300),
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
                            const Icon(
                              CupertinoIcons.timer,
                              color: MyColorsConst.whiteColor,
                            ),
                            const SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        infoCuti.sisaCutiP24?.toString() ?? '0',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.amber.shade300,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " / ${infoCuti.cutiP24?.toString() ?? '0'}\nMenit",
                                    style: GoogleFonts.poppins(
                                      height: 1,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: MyColorsConst.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "P24",
                              style: GoogleFonts.poppins(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.amber.shade300,
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
