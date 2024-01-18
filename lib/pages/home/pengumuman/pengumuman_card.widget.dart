import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class PengumumanCard extends StatelessWidget {
  const PengumumanCard(
      {super.key,
      this.imageUrl,
      this.judul,
      this.tanggal,
      this.detail,
      this.tag});

  final String? imageUrl;
  final String? tanggal;
  final String? judul;
  final String? detail;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDetailSlider(context);
      },
      child: Container(
        width: 210.sp,
        margin: EdgeInsets.only(right: 10.sp),
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          border: Border.all(width: 1.sp, color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  child: AspectRatio(
                      aspectRatio: 16 / 9.sp,
                      child: Image.network(
                        imageUrl ?? '',
                        fit: BoxFit.fitWidth,
                      )),
                ),
                SizedBox(height: 5.sp),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.calendar,
                      size: 12.sp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 3.sp,
                    ),
                    Text(
                      tanggal ?? '',
                      style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 5.sp),
                Text(
                  judul ?? '',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: MyColorsConst.darkColor),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tag ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 8.sp,
                      color: MyColorsConst.primaryColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 7.sp),
                Text(
                  detail ?? '',
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 9.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                _showDetailSlider(context);
              },
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showDetailSlider(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.sp),
          topRight: Radius.circular(15.sp),
        ),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.2,
          maxChildSize: 1.0,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.sp),
                  topRight: Radius.circular(15.sp),
                ),
              ),
              child: ListView(
                controller: scrollController,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    child: Image.network(
                      imageUrl ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5.sp),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar,
                        size: 15.sp,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 3.sp,
                      ),
                      Text(
                        tanggal ?? '',
                        style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    judul ?? '',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: MyColorsConst.darkColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5.sp),
                  Text(
                    tag ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: MyColorsConst.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20.sp),
                  Text(
                    detail ?? '',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 3.sp),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // void _showDetailSlider(BuildContext context) {
  //   OverlayEntry? overlayEntry;

  //   overlayEntry = OverlayEntry(
  // builder: (context) => Positioned(
  //   top: 0,
  //   bottom: 0,
  //   left: 0,
  //   right: 0,
  //   child: GestureDetector(
  //     onTap: () {
  //       overlayEntry!.remove();
  //     },
  //     child: Container(
  //       color: Colors.black.withOpacity(0.5),
  //       child: NotificationListener<ScrollNotification>(
  //         onNotification: (scrollNotification) {
  //           if (scrollNotification is ScrollEndNotification &&
  //               scrollNotification.metrics.atEdge &&
  //               scrollNotification.metrics.pixels != 0) {
  //             // Scroll mencapai batas bawah
  //             overlayEntry!.remove();
  //             return true; // Menghentikan penanganan notifikasi
  //           }
  //           return false; // Lanjutkan penanganan notifikasi
  //         },
  //             child: DraggableScrollableSheet(
  //               initialChildSize: 0.5,
  //               minChildSize: 0.2,
  //               maxChildSize: 0.9,
  //               expand: false,
  //               builder:
  //                   (BuildContext context, ScrollController scrollController) {
  //                 return Container(
  //                   padding: EdgeInsets.all(16),
  //                   decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(15.sp),
  //                       topRight: Radius.circular(15.sp),
  //                     ),
  //                   ),
  //                   child: ListView(
  //                     controller: scrollController,
  //                     children: [
  //                       ClipRRect(
  //                         borderRadius: BorderRadius.only(
  //                             topLeft: Radius.circular(5),
  //                             topRight: Radius.circular(5)),
  //                         child: AspectRatio(
  //                             aspectRatio: 16 / 9.sp,
  //                             child: Image.asset(
  //                               imageUrl ?? '',
  //                               fit: BoxFit.cover,
  //                             )),
  //                       ),
  //                       SizedBox(height: 5.sp),
  //                       Row(
  //                         children: [
  //                           Icon(
  //                             Icons.calendar_month_outlined,
  //                             size: 12.sp,
  //                             color: Colors.grey,
  //                           ),
  //                           SizedBox(
  //                             width: 3.sp,
  //                           ),
  //                           Text(
  //                             tanggal ?? '',
  //                             style: GoogleFonts.poppins(
  //                                 fontSize: 8.sp, color: Colors.grey),
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(height: 5.sp),
  //                       Text(
  //                         judul ?? '',
  //                         style: GoogleFonts.poppins(
  //                             fontSize: 12.sp,
  //                             fontWeight: FontWeight.w600,
  //                             color: MyColorsConst.darkColor),
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                       SizedBox(height: 3.sp),
  //                       Text(
  //                         detail ?? '',
  //                         maxLines: 3,
  //                         overflow: TextOverflow.ellipsis,
  //                         style: GoogleFonts.poppins(
  //                             fontSize: 10.sp, color: Colors.grey),
  //                       ),
  //                       SizedBox(height: 5.sp),
  //                     ],
  //                   ),
  //                 );
  //               },
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );

  //   Overlay.of(context).insert(overlayEntry);
  // }
}
