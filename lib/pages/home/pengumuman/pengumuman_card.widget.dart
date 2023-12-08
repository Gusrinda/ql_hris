import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class PengumumanCard extends StatelessWidget {
  const PengumumanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(width: 1, color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  'assets/images/cuti_bersama.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                "07 Desember 2023",
                style: TextStyle(fontSize: 8, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            "Kebijakan Cuti Tahun 2024",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: MyColorsConst.darkColor),
          ),
          Text(
            "Kami berharap bahwa pesan ini menemukan Anda dalam keadaan baik dan bersemangat. Sejalan dengan komitmen kami",
            maxLines: 3,
            style: TextStyle(fontSize: 10, color: Color(0XFF565656)),
          ),
          const SizedBox(height: 5),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColorsConst.primaryLight2Color),
                  child: Text(
                    "Baca Selengkapnya",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: MyColorsConst.primaryColor),
                  )))
        ],
      ),
    );
  }
}
