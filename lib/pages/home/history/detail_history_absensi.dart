import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/services/model/history_attendance_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "ATTEND NO CHECKOUT": {
    "name": "Hadir Tidak Check Out",
  },
  "ATTEND": {
    "name": "Hadir",
  },
  "WORKING": {
    "name": "Hadir Belum Check-Out",
  },
  "NOT ATTEND": {
    "name": "Tidak Hadir",
  },
  "DAY OFF": {
    "name": "Libur",
  },
};

class DetailHistoryAbsensiPage extends StatefulWidget {
  static const routeName = '/DetailHistoryPage';

  const DetailHistoryAbsensiPage(
      {super.key,
      required this.data,
      this.status,
      this.checkinFoto,
      this.checkoutFoto,
      this.checkinTime,
      this.checkoutTime,
      this.tanggal,
      this.checkoutAddress,
      this.checkinAddress,
      this.checkinOnScope,
      this.checkoutOnScope});
  final Datum? data;
  final String? status;
  final String? checkinFoto;
  final String? checkoutFoto;
  final String? checkinTime;
  final String? checkoutTime;
  final String? tanggal;
  final String? checkoutAddress;
  final String? checkinAddress;
  final bool? checkinOnScope;
  final bool? checkoutOnScope;

  @override
  State<DetailHistoryAbsensiPage> createState() =>
      _DetailHistoryAbsensiPageState();
}

String getDayFromDate(String date) {
  DateTime dateTime = DateFormat("dd/MM/yyyy").parse(date);
  String day = DateFormat.EEEE("id").format(dateTime);
  return day;
}

String mapStatusToString(String status) {
  if (stateDict.containsKey(status)) {
    return stateDict[status]['name'];
  } else {
    return 'Undefined';
  }
}

Color getColorFromStatus(String status) {
  if (stateDict.containsKey(status)) {
    switch (status) {
      case "WORKING":
        return const Color(0XFF0068D4);
      case "NOT ATTEND":
        return const Color(0XFFED1B24);
      case "ATTEND NO CHECKOUT":
        return const Color(0XFF0CA356);
      case "ATTEND":
        return const Color(0XFF0CA356);
      default:
        return MyColorsConst.darkColor; // warna default
    }
  } else {
    return MyColorsConst.darkColor; // warna default
  }
}

class _DetailHistoryAbsensiPageState extends State<DetailHistoryAbsensiPage> {
  DateTime? dataCheckIn;
  DateTime? dataCheckOut;

  @override
  // void initState() {
  //   super.initState();
  //   if (widget.checkinTime != null) {
  //     dataCheckIn = DateTime.parse(widget.checkinTime!);
  //   }
  //   if (widget.checkoutTime != null) {
  //     dataCheckOut = DateTime.parse(widget.checkoutTime!);
  //   }
  // }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String currentStatus = widget.status as String;
    Color currentColor = getColorFromStatus(currentStatus);
    return Scaffold(
      // appBar: appBarCustomV1(
      //   title: "Detail Absensi",
      //   padLeft: 8,
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColorsConst.primaryDarkColor,
              MyColorsConst.primaryColor,
            ],
            stops: [0.0, 0.1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.sp),
                Container(
                  padding: EdgeInsets.all(5.0.sp),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 18,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: size.width * 1 / 4.5,
                      ),
                      Expanded(
                        child: Text(
                          "Detail Absensi",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.sp,
                ),
                Expanded(
                  child: Container(
                    height: size.height,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.0.sp),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.sp,
                            ),
                            buildCardImage(
                              dataPresensi: widget.data,
                              checkIn: true,
                              url: "${widget.checkinFoto}",
                              address: "${widget.checkinAddress}",
                              onSite: "${widget.checkinOnScope}",
                            ),
                            const Divider(
                              color: Color(0xFFDDDDDD),
                              thickness: 1,
                            ),
                            buildCardImage(
                              dataPresensi: widget.data,
                              checkIn: false,
                              url: "${widget.checkoutFoto}",
                              address: "${widget.checkoutAddress}",
                              onSite: "${widget.checkoutOnScope}",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 7.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: MyColorsConst.darkColor.withOpacity(0.1),
                          offset: Offset(0, 0),
                          blurRadius: 5,
                        ),
                      ],
                      color: MyColorsConst.whiteColor,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.sp, vertical: 15.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${getDayFromDate("${widget.tanggal}")}, ${widget.tanggal}",
                          style: GoogleFonts.poppins(
                              color: MyColorsConst.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'In ',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                widget.checkinTime ?? "-",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: MyColorsConst.darkColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Out',
                                style: GoogleFonts.poppins(
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                widget.checkoutTime ?? "-",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: MyColorsConst.darkColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      padding: EdgeInsets.symmetric(
                          horizontal: 7.sp, vertical: 3.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.sp),
                          bottomLeft: Radius.circular(10.sp),
                        ),
                        color: currentColor,
                      ),
                      child: Center(
                        child: Text(
                          mapStatusToString(currentStatus),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Padding buildSubCard({
  //   required DateTime? datetime,
  //   bool checkIn = true,
  // }) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 10),
  //     child: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Text(
  //           checkIn ? "In " : "Out ",
  //           style: GoogleFonts.poppins(
  //             fontSize: 12,
  //             fontWeight: FontWeight.w400,
  //             color: MyColorsConst.lightDarkColor,
  //           ),
  //         ),
  //         Text(
  //           datetime != null ? "" : "-",
  //           style: GoogleFonts.poppins(
  //             fontSize: 12,
  //             fontWeight: FontWeight.w600,
  //             color: Color(0xFF969696),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

Padding buildCardImage({
  Datum? dataPresensi,
  String? url,
  String? onSite,
  checkIn = true,
  String? address,
}) {
  var errImage = Builder(builder: (context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1.9 / 5,
      height: size.width * 1.9 / 5,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 235, 235, 235),
        shape: BoxShape.rectangle,
      ),
      child: Icon(
        Icons.camera_alt_rounded,
        size: 40,
        color: MyColorsConst.lightDarkColor,
      ),
    );
  });
  return Padding(
    padding: EdgeInsets.all(16.0.sp),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          checkIn ? "Check In" : "Check Out",
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: checkIn ? Colors.green : Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.sp,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            url != null
                ? CachedNetworkImage(
                    imageUrl: url,
                    imageBuilder: (context, imageProvider) {
                      final size = MediaQuery.of(context).size;
                      return Container(
                        width: size.width * 2 / 5,
                        height: size.width * 2.5 / 5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: imageProvider,
                            fit: BoxFit.fitWidth,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      );
                    },
                    placeholder: (
                      context,
                      url,
                    ) =>
                        const CircularProgressIndicator(),
                    errorWidget: (
                      context,
                      url,
                      error,
                    ) =>
                        errImage,
                  )
                : errImage,
            const SizedBox(
              width: 15,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lokasi",
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: MyColorsConst.lightDarkColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    address ?? "-",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    "Status Lokasi",
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: MyColorsConst.lightDarkColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    (onSite != null && onSite.toLowerCase() == 'true')
                        ? "In-Scope"
                        : (onSite != null && onSite.toLowerCase() == 'false')
                            ? "Out-Scope"
                            : "-",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: (onSite != null && onSite.toLowerCase() == 'true')
                          ? Colors.green
                          : (onSite != null && onSite.toLowerCase() == 'false')
                              ? Colors.red
                              : MyColorsConst.darkColor,
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    "Alasan Out-Scope",
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: MyColorsConst.lightDarkColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    checkIn
                        ? dataPresensi?.catatanIn ?? "-"
                        : dataPresensi?.catatanOut ?? "-",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
