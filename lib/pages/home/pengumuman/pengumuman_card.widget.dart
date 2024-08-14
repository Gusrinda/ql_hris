import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

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
        padding: EdgeInsets.all(5.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
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
                  borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                  child: AspectRatio(
                      aspectRatio: 16 / 9.sp,
                      child: CachedNetworkImage(
                        imageUrl: imageUrl ?? '',
                        width: double.infinity,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                LinearProgressIndicator(
                                    value: downloadProgress.progress,
                                    backgroundColor: MyColorsConst.primaryColor
                                        .withOpacity(0.5)),
                        errorWidget: (context, url, error) => Container(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade200),
                          child: const Icon(
                            Icons.image_not_supported_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 5.sp),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.sp,
                    vertical: 3.sp,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      SizedBox(height: 5.sp),
                      Text(
                        tag ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontSize: 8.sp,
                            color: MyColorsConst.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        detail ?? '',
                        textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontSize: 9.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.sp, horizontal: 5.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                  Container(
                    padding: EdgeInsets.all(3.sp),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: MyColorsConst.primaryColor),
                    child: Icon(
                      Icons.keyboard_double_arrow_up_rounded,
                      size: 20.sp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     _showDetailSlider(context);
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(10.sp),
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5),
            //         color: MyColorsConst.primaryLight2Color),
            //     child: Text(
            //       "Baca Selengkapnya",
            //       textAlign: TextAlign.center,
            //       style: GoogleFonts.poppins(
            //           fontSize: 10.sp,
            //           fontWeight: FontWeight.w600,
            //           color: MyColorsConst.primaryColor),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  _showDetailSlider(BuildContext context) {
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
            Text processDetailText(String detail) {
              RegExp urlRegExp = RegExp(r'https?://\S+');
              Iterable<RegExpMatch> matches = urlRegExp.allMatches(detail);

              List<InlineSpan> children = [];

              int start = 0;
              for (RegExpMatch match in matches) {
                children
                    .add(TextSpan(text: detail.substring(start, match.start)));
                String? url = match.group(0);
                children.add(
                  TextSpan(
                    text: url,
                    style: TextStyle(color: Colors.blue.shade600),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launchUrl(Uri.parse(url ?? ''));
                      },
                  ),
                );
                start = match.end;
              }

              if (start < detail.length) {
                children.add(TextSpan(text: detail.substring(start)));
              }

              return Text.rich(
                TextSpan(children: children),
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                ),
              );
            }

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
                    child: CachedNetworkImage(
                      imageUrl: imageUrl ?? '',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context, url,
                              downloadProgress) =>
                          LinearProgressIndicator(
                              value: downloadProgress.progress,
                              backgroundColor:
                                  MyColorsConst.primaryColor.withOpacity(0.5)),
                      errorWidget: (context, url, error) => Container(
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: const Icon(
                          Icons.image_not_supported_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.sp),
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
                  processDetailText(detail ?? ""),
                  SizedBox(height: 3.sp),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
