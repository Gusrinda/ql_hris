import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/pages/birthday/birthday.view.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

Widget birthdaySection(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, listBirthdayTodayPage.routeName);
    },
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        // border: Border.all(color: Color.fromARGB(255, 219, 220, 255)),
        color: MyColorsConst.whiteColor,
        boxShadow: [
          BoxShadow(
              blurRadius: 20,
              offset: const Offset(0, 2),
              color: MyColorsConst.primaryColor.withOpacity(0.1))
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
      child: Row(
        children: [
          SizedBox(
              width: 40.sp,
              child: Image.asset("assets/images/birthday_cake.png")),
          SizedBox(width: 15.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HAPPY BIRTHDAY SJG WARRIOR",
                style: GoogleFonts.poppins(
                  color: MyColorsConst.darkColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2.sp),
              Text(
                "Pantau terus siapa saja yang ultah",
                maxLines: 2,
                style: GoogleFonts.poppins(
                  color: MyColorsConst.darkColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class BirthdaySection extends StatefulWidget {
  const BirthdaySection({super.key});

  @override
  State<BirthdaySection> createState() => _BirthdaySectionState();
}

class _BirthdaySectionState extends State<BirthdaySection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Colors.white,
      end: Colors.blue.withOpacity(0.5),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.sp),
              // border: Border.all(color: Color.fromARGB(255, 219, 220, 255)),
              color: _colorAnimation.value,
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    offset: const Offset(0, 2),
                    color: MyColorsConst.primaryColor.withOpacity(0.1))
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
            child: Row(
              children: [
                SizedBox(
                    width: 40.sp,
                    child: Image.asset("assets/images/birthday_cake.png")),
                SizedBox(width: 15.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ada Yang Ulang Tahun Bulan Ini",
                      style: GoogleFonts.poppins(
                        color: MyColorsConst.darkColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2.sp),
                    Text(
                      "Pantau terus siapa yang ultah hari ini",
                      style: GoogleFonts.poppins(
                        color: MyColorsConst.darkColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
