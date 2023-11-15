import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/services/model/notifikasi_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

// final Map<String, dynamic> stateDict = {
//   "Pengajuan Cuti": {
//     "name": "Pengajuan Cuti",
//   },
//   "Pengajuan Spd": {
//     "name": "Pengajuan Spd",
//   },
//   "Surat Perintah Lembur": {
//     "name": "Surat Perintah Lembur",
//   },
//   "Event": {
//     "name": "Selamat Ulang Tahun",
//   },
// };

class NotifikasiPage extends StatefulWidget {
  static const routeName = '/NotifikasiPage';
  const NotifikasiPage({
    super.key,
  });

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  Icon? iconNotifikasi;
  Color? warnaStatus;

  void getIconAndColor(String trxName, String actionType) {
    switch (trxName) {
      case "Pengajuan Cuti":
        if (actionType == "MENGAJUKAN") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.green,
            size: 30,
          );
        } else if (actionType == "Ditolak") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.red,
            size: 30,
          );
        }
        break;
      case "Cuti":
        if (actionType == "Disetujui") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.green,
            size: 30,
          );
        } else if (actionType == "Ditolak") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.red,
            size: 30,
          );
        }
        break;
      case "Lembur":
        iconNotifikasi = const Icon(
          Icons.access_time,
          color: Colors.red,
          size: 30,
        );
        break;
      case "Event":
        iconNotifikasi = const Icon(
          Icons.calendar_month_outlined,
          color: Colors.blue,
          size: 30,
        );
        break;
      default:
        iconNotifikasi = const Icon(
          Icons.notifications,
          color: Colors.yellow,
          size: 30,
        );
    }

    switch (actionType) {
      case "MENGAJUKAN":
        if (trxName == "Pengajuan Cuti" || trxName == "Dinas") {
          warnaStatus = Colors.green;
        } else if (trxName == "Lembur") {
          warnaStatus = Colors.red;
        } else if (trxName == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      case "Ditolak":
        if (trxName == "Cuti" || trxName == "Dinas") {
          warnaStatus = Colors.red;
        } else if (trxName == "Lembur") {
          warnaStatus = Colors.red;
        } else if (trxName == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      default:
        warnaStatus = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<NotifikasiBloc, NotifikasiState>(
      listener: (context, state) async {
        if (state is ListNotifikasiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListNotifikasiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListNotifikasiFailedUserExpired) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else if (state is ListNotifikasiFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        appBar: appBarCustomV1(
          title: "Notifikasi",
          // centerTitle: true,
          padLeft: 8,
        ),
        body: BlocBuilder<NotifikasiBloc, NotifikasiState>(
          builder: (context, state) {
            var listNotifikasi = context.read<NotifikasiBloc>().listNotifikasi;

            return Stack(
              children: [
                if (listNotifikasi.isNotEmpty)
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: listNotifikasi.length,
                        itemBuilder: (context, index) {
                          var data = listNotifikasi;
                          if (data[index].trxName != null &&
                              data[index].actionType != null) {
                            getIconAndColor(
                                data[index].trxName!, data[index].actionType!);

                            return CardListNotifikasi(
                              tipeNotifikasi: data[index].trxName!,
                              status: data[index].actionType!,
                              iconNotifikasi: iconNotifikasi,
                              warnaStatus: warnaStatus,
                              data: data[index],
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        },
                      ),
                    ),
                  ),
                if (listNotifikasi.isEmpty)
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/box_nodata.png",
                          height: size.width * 1 / 2,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Tidak ada data yang ditampilkan!",
                          style: TextStyle(
                            color: MyColorsConst.darkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CardListNotifikasi extends StatelessWidget {
  const CardListNotifikasi({
    Key? key,
    required this.tipeNotifikasi,
    required this.status,
    this.iconNotifikasi,
    this.warnaStatus,
    required this.data,
  }) : super(key: key);

  final String tipeNotifikasi;
  final String status;
  final Icon? iconNotifikasi;
  final Color? warnaStatus;
  final Datum data;

  String mapStatusToString(String status) {
    switch (status) {
      case "Pengajuan Cuti":
        return "Pengajuan Cuti";
      case "Disetujui":
        return "Disetujui";
      case "Ditolak":
        return "Ditolak";
      default:
        return 'Undefined';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: warnaStatus?.withOpacity(0.4) ?? Colors.transparent,
                ),
                child: iconNotifikasi,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          mapStatusToString(tipeNotifikasi),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          data.trxDate != null
                              ? DateFormat('dd MMM')
                                  .format(data.trxDate!.toLocal())
                              : '',
                          style: TextStyle(
                            color: MyColorsConst.semidarkColor2,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      data.text ?? '',
                      style: TextStyle(
                        color: MyColorsConst.semiDarkColor,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
