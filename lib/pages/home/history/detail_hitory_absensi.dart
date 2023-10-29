import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DetailHistoryAbsensiPage extends StatefulWidget {
  const DetailHistoryAbsensiPage({Key? key}) : super(key: key);

  @override
  State<DetailHistoryAbsensiPage> createState() =>
      _DetailHistoryAbsensiPageState();
}

class _DetailHistoryAbsensiPageState extends State<DetailHistoryAbsensiPage> {
  DateTime? dataCheckIn;
  DateTime? dataCheckOut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustomV1(
        title: "Detail Absensi",
        padLeft: 8,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Color(0xFFDDDDDD)),
                      color: MyColorsConst.whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rabu, 18/10/2023",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildSubCard(
                              checkIn: true,
                              datetime: dataCheckIn,
                            ),
                            buildSubCard(
                              checkIn: false,
                              datetime: dataCheckOut,
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFDDDDDD),
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Lokasi',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Jl. Tambun Bungai No.04, Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 73111',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCardImage(
                    checkIn: true,
                    datetime: dataCheckIn,
                  ),
                  buildCardImage(
                    checkIn: false,
                    datetime: dataCheckOut,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildSubCard({
    required DateTime? datetime,
    bool checkIn = true,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            checkIn ? "In " : "Out ",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: MyColorsConst.lightDarkColor,
            ),
          ),
          Text(
            datetime != null
                ? "${datetime.hour}:${datetime.minute}:${datetime.second}"
                : "08 : 26 : 36",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF969696),
            ),
          ),
        ],
      ),
    );
  }
}

Padding buildCardImage({
  String? url,
  DateTime? datetime,
  bool? onSite,
  checkIn = true,
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
      children: [
        Text(
          checkIn ? "Check In" : "Check Out",
          style: TextStyle(
            fontSize: 14,
            color: MyColorsConst.primaryColor,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
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
      ],
    ),
  );
}
