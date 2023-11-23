import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/edit_cuti.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "IN APPROVAL": {
    "name": "Menunggu Disetujui",
  },
  "APPROVED": {
    "name": "Disetujui",
  },
  "REJECTED": {
    "name": "Ditolak",
  },
  "REVISED": {
    "name": "Revisi",
  },
};

class DetailCutiPage extends StatefulWidget {
  static const routeName = '/DetailCutiPage';

  const DetailCutiPage({
    super.key,
    this.data,
    this.dateFrom,
    this.dateTo,
    this.alasanValue,
    this.status,
    this.keterangan,
    this.tipeCutiValue,
    this.nomorFromNotif,
    this.nomorFromList,
    this.cutiId,
  });
  final dynamic? data;
  final String? dateFrom;
  final String? dateTo;
  final String? alasanValue;
  final String? status;
  final String? keterangan;
  final String? tipeCutiValue;
  final String? nomorFromNotif;
  final String? nomorFromList;
  final int? cutiId;

  @override
  State<DetailCutiPage> createState() => _DetailCutiPageState();
}

class _DetailCutiPageState extends State<DetailCutiPage> {
  //  void loadData() {
  //   context.read<AddCutiBloc>().add(GetCuti(date: DateTime.now()));
  // }

  String mapStatusToString(String status) {
    if (widget.status != null && stateDict.containsKey(widget.status)) {
      return stateDict[widget.status]['name'];
    } else {
      return 'Undefined';
    }
  }

  Color getColorFromStatus(String status) {
    if (stateDict.containsKey(status)) {
      switch (status) {
        case "IN APPROVAL":
          return const Color(0xFF0068D4);
        case "REVISED":
          return Colors.orange;
        case "REJECTED":
          return const Color(0xFFED1B24);
        case "APPROVED":
          return const Color(0xFF0CA356);
        default:
          return Colors.grey; // warna default
      }
    } else {
      return Colors.grey; // warna default
    }
  }

  String formatDate(String? dateString) {
    if (dateString != null) {
      DateTime date = DateFormat("dd/MM/yyyy").parse(dateString);
      return DateFormat('d MMMM y', 'id_ID').format(date);
    } else {
      return 'Tanggal tidak tersedia';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String currentStatus = widget.status as String;
    Color currentColor = getColorFromStatus(currentStatus);

    return Scaffold(
      appBar: appBarCustomV1(
        title: "Detail Pengajuan Cuti",
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
                        Row(
                          children: [
                            Text(
                              "${widget.tipeCutiValue ?? '-'}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.all(4),
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
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_rounded,
                              color: MyColorsConst.lightDarkColor,
                              size: 10,
                            ),
                            const SizedBox(
                                width: 5), // Atur jarak sesuai kebutuhan
                            Text(
                              '${formatDate(widget.dateFrom ?? '-')} - ${formatDate(widget.dateTo ?? '-')}',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Divider(
                          color: Color(0xFFDDDDDD),
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Alasan',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.alasanValue ?? '-'}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Catatan',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.keterangan ?? '-'}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  if (currentStatus == "REVISED")
                    TextButtonCustomV1(
                      height: 45,
                      text: "Edit",
                      backgroundColor: Colors.blue,
                      textColor: MyColorsConst.whiteColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlocProvider(
                              create: (context) => AddCutiBloc()
                                ..add(OnSelectAlasanCuti())
                                ..add(OnSelectTipeCuti()),
                              child: EditCutiPage(
                                cutiId: widget.cutiId ?? 1,
                                dateFrom: widget.dateFrom,
                                dateTo: widget.dateTo,
                                alasanValue: widget.alasanValue,
                                status: widget.status,
                                keterangan: widget.keterangan,
                                tipeCutiValue: widget.tipeCutiValue,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
