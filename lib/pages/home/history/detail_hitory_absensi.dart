import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
    "name": "Bekerja",
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
  final dynamic data;
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
        return Colors.blue;
      case "NOT ATTEND":
        return Colors.red;
      case "ATTEND NO CHECKOUT":
        return Colors.green;
      case "ATTEND":
        return Colors.green;
      default:
        return Colors.black; // warna default
    }
  } else {
    return Colors.black; // warna default
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
      appBar: appBarCustomV1(
        title: "Detail Absensi",
        padLeft: 8,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: const Color(0xFFDDDDDD)),
                      color: MyColorsConst.whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${getDayFromDate("${widget.tanggal}")}, ${widget.tanggal}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: currentColor.withOpacity(0.1),
                              ),
                              child: Text(
                                mapStatusToString(widget.status as String),
                                style: TextStyle(
                                  color: currentColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.checkinTime != null
                                  ? "in ${widget.checkinTime}"
                                  : "in -",
                              style: const TextStyle(
                                fontSize: 12,
                                color: MyColorsConst.lightDarkColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              widget.checkoutTime != null
                                  ? "out ${widget.checkoutTime}"
                                  : "out -",
                              style: const TextStyle(
                                fontSize: 12,
                                color: MyColorsConst.lightDarkColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildCardImage(
                    checkIn: true,
                    url: "${widget.checkinFoto}",
                    address: "${widget.checkinAddress}",
                    onSite: "${widget.checkinOnScope}",
                  ),
                  buildCardImage(
                    checkIn: false,
                    url: "${widget.checkoutFoto}",
                    address: "${widget.checkoutAddress}",
                    onSite: "${widget.checkoutOnScope}",
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
  //           style: const TextStyle(
  //             fontSize: 12,
  //             fontWeight: FontWeight.w400,
  //             color: MyColorsConst.lightDarkColor,
  //           ),
  //         ),
  //         Text(
  //           datetime != null ? "" : "-",
  //           style: const TextStyle(
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
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          checkIn ? "Check In" : "Check Out",
          style: TextStyle(
            fontSize: 12,
            color: checkIn ? Colors.green : Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6,
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
                        width: size.width * 1.9 / 5,
                        height: size.width * 1.9 / 5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
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
                  const Text(
                    "Lokasi",
                    style: TextStyle(
                      fontSize: 10,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    address != null ? address : "-",
                    style: const TextStyle(
                      fontSize: 10,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Keterangan",
                    style: TextStyle(
                      fontSize: 10,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    (onSite != null && onSite.toLowerCase() == 'true')
                        ? "In Scope"
                        : (onSite != null && onSite.toLowerCase() == 'false')
                            ? "Out Scope"
                            : "-",
                    style: TextStyle(
                      fontSize: 10,
                      color: (onSite != null && onSite.toLowerCase() == 'true')
                          ? Colors.green
                          : (onSite != null && onSite.toLowerCase() == 'false')
                              ? Colors.red
                              : Colors.black,
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
