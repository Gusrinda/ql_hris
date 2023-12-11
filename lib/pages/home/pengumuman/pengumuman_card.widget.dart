import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class PengumumanCard extends StatelessWidget {
  const PengumumanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.sp,
      margin: EdgeInsets.only(right: 10.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        border: Border.all(width: 1.sp, color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            child: AspectRatio(
                aspectRatio: 16 / 9.sp,
                child: Image.asset(
                  'assets/images/cuti_bersama.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 5.sp),
          Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                size: 12.sp,
                color: Colors.grey,
              ),
              SizedBox(width: 3.sp,),
              Text(
                "07 Desember 2023",
                style: GoogleFonts.poppins(fontSize: 8.sp, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 5.sp),
          Text(
            "Kebijakan Cuti Tahun 2024",
            style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: MyColorsConst.darkColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 3.sp),
          Text(
            "Kami berharap bahwa pesan ini menemukan Anda dalam keadaan baik dan bersemangat. Sejalan dengan komitmen kami",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style:
                GoogleFonts.poppins(fontSize: 10.sp, color: Colors.grey),
          ),
          SizedBox(height: 5.sp),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.all(10.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColorsConst.primaryLight2Color),
                  child: Text(
                    "Baca Selengkapnya",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: MyColorsConst.primaryColor),
                  )))
        ],
      ),
    );
  }
}
