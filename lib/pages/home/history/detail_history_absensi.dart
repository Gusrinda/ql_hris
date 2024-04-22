import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/services/model/history_attendance_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "ATTEND NO CHECKOU": {
    "name": "Hadir Tidak Check-Out",
  },
  "WORKING": {
    "name": "Belum Check-Out",
  },
  "ATTEND": {
    "name": "Hadir",
  },
  "NOT ATTEND": {
    "name": "Tidak Hadir",
  },
  "CUTI": {
    "name": "Cuti",
  },
  "CUTI BERSAMA": {
    "name": "Cuti Bersama",
  },
  "HARI LIBUR": {
    "name": "Hari Libur",
  },
};

final Map<String, dynamic> stateDictType = {
  "Hari Kerja": {
    "name": "Hari Kerja",
  },
  "Hari Libur": {
    "name": "Hari Libur",
  },
  "Cuti Bersama": {
    "name": "Cuti Bersama",
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
  final DataPresensi? data;
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

String formatDate(String date) {
  if (date == null || date.isEmpty) {
    return "";
  }

  try {
    DateTime dateTime = DateFormat("dd-MM-yyyy").parse(date);
    String formattedDate =
        DateFormat("EEEE, d MMMM yyyy", "id").format(dateTime);
    return formattedDate;
  } catch (e) {
    print("Error parsing date: $e");
    return "";
  }
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
        return const Color(0xFF0068D4);
      case "NOT ATTEND":
        return const Color(0xFFED1B24);
      case "ATTEND NO CHECKOUT":
        return Colors.green.shade700;
      case "ATTEND":
        return const Color(0xFF0CA356);
      case "CUTI":
        return const Color(0xFFED1B24);
      case "CUTI BERSAMA":
        return Colors.deepOrange.shade700;
      case "HARI LIBUR":
        return Colors.purple.shade800;
      default:
        return Colors.black; // warna default
    }
  } else {
    return Colors.grey; // warna default
  }
}

String mapTypeToString(String status) {
  if (stateDictType.containsKey(status)) {
    return stateDictType[status]['name'];
  } else {
    return 'Tidak Diketahui';
  }
}

Color getColorFromType(String type) {
  if (stateDictType.containsKey(type)) {
    switch (type) {
      case "Hari Kerja":
        return const Color(0xFF0CA356);
      case "Hari Libur":
        return const Color(0xFFED1B24);
      case "Cuti Bersama":
        return const Color(0xFF0068D4);
      default:
        return Colors.black87; // warna default
    }
  } else {
    return Colors.grey; // warna default
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
    Color currentColorFromType =
        getColorFromType(widget.data?.type.toString() ?? 'Hari Kerja');
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
                      padding: EdgeInsets.symmetric(horizontal: 5.sp),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 55.sp,
                            ),
                            buildCardImage(
                              dataPresensi: widget.data,
                              checkIn: true,
                              url:
                                  "${widget.checkinFoto?.replaceAll("${MyGeneralConst.API_URL}/${MyGeneralConst.API_URL}/", "${MyGeneralConst.API_URL}/")}",
                              address: widget.checkinAddress ?? '-',
                              onSite: "${widget.checkinOnScope}",
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.sp, vertical: 10.sp),
                              child: const Divider(
                                color: Color(0xFFDDDDDD),
                                thickness: 1,
                              ),
                            ),
                            buildCardImage(
                              dataPresensi: widget.data,
                              checkIn: false,
                              url:
                                  "${widget.checkoutFoto?.replaceAll("${MyGeneralConst.API_URL}/${MyGeneralConst.API_URL}/", "${MyGeneralConst.API_URL}/")}",
                              address: widget.checkoutAddress ?? '-',
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
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: MyColorsConst.darkColor.withOpacity(0.2),
                          offset: Offset(1, 3),
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
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: currentColorFromType.withOpacity(0.15)),
                          child: Text(
                            widget.data?.type ?? '-',
                            style: GoogleFonts.poppins(
                                color: currentColorFromType,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 7.sp),
                        Text(
                          formatDate(widget.data?.dateToIdn ?? ''),
                          style: GoogleFonts.poppins(
                              color: MyColorsConst.darkColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Text(
                                    'In  ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    widget.checkinTime ?? "-",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Row(
                                children: [
                                  Text(
                                    'Out  ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    widget.checkoutTime ?? "-",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
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
                          topRight: Radius.circular(7.sp),
                          bottomLeft: Radius.circular(7.sp),
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
  DataPresensi? dataPresensi,
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
      child: const Icon(
        CupertinoIcons.photo,
        size: 40,
        color: MyColorsConst.lightDarkColor,
      ),
    );
  });
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.sp),
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
                        height: size.width * 3.3 / 5,
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
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                        color:
                            (onSite != null && onSite.toLowerCase() == 'true')
                                ? Colors.green.withOpacity(0.1)
                                : (onSite != null &&
                                        onSite.toLowerCase() == 'false')
                                    ? Colors.red.withOpacity(0.1)
                                    : MyColorsConst.darkColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.my_location_outlined,
                          size: 15,
                          color:
                              (onSite != null && onSite.toLowerCase() == 'true')
                                  ? Colors.green
                                  : (onSite != null &&
                                          onSite.toLowerCase() == 'false')
                                      ? Colors.red
                                      : MyColorsConst.darkColor,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          (onSite != null && onSite.toLowerCase() == 'true')
                              ? "In-Scope"
                              : (onSite != null &&
                                      onSite.toLowerCase() == 'false')
                                  ? "Out-Scope"
                                  : "-",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: (onSite != null &&
                                    onSite.toLowerCase() == 'true')
                                ? Colors.green
                                : (onSite != null &&
                                        onSite.toLowerCase() == 'false')
                                    ? Colors.red
                                    : MyColorsConst.darkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  if (onSite != null && onSite.toLowerCase() == 'false') ...{
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
                  },
                ],
              ),
            ),
          ],
        ),
        checkIn ? const SizedBox() : SizedBox(height: 100.sp),
      ],
    ),
  );
}
