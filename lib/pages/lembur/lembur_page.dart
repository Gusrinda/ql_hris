import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/lembur/add_lembur.dart';
import 'package:sj_presensi_mobile/pages/lembur/add_lembur/add_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/detail_lembur.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/services/model/lembur/lembur_model.dart';
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
  "DRAFT": {
    "name": "Draft",
  },
};

class LemburPage extends StatefulWidget {
  static const routeName = '/LemburPage';
  const LemburPage({
    super.key,
  });

  @override
  State<LemburPage> createState() => _LemburPageState();
}

String mapStatusToString(String status) {
  if (stateDict.containsKey(status)) {
    return stateDict[status]['name'];
  } else {
    return 'Menunggu Disetujui';
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
    return const Color(0xFF0068D4); // warna default
  }
}

class _LemburPageState extends State<LemburPage> {
  String? username;
  DateTime? selectedMonth;
  DateTime? selectedYear;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    context.read<ListLemburBloc>().add(GetListLembur(date: DateTime.now()));
  }

  String formatTime(DateTime time) {
    return DateFormat.Hm().format(time);
  }

  String extractTime(String? timeString) {
    if (timeString != null) {
      return timeString.substring(0, 5);
    } else {
      return '';
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

    return BlocListener<ListLemburBloc, ListLemburState>(
      listener: (context, state) async {
        if (state is LemburLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is LemburSuccessInBackground) {
          LoadingDialog.dismissDialog(context);

          setState(() {
            username = state.username;
          });
        } else if (state is LemburFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is LemburFailedUserExpired) {
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
        } else if (state is LemburFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => AddLemburBloc()
                    ..add(OnSelectAlasanLembur())
                    ..add(OnSelectTipeLembur()),
                  child: AddLemburPage(
                    // Teruskan callback ke AddCutiPage
                    reloadDataCallback: loadData,
                  ),
                ),
              ),
            );
          },
          backgroundColor: MyColorsConst.primaryLightColor,
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
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
          child: Column(
            children: [
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 1 / 5,
                    ),
                    Expanded(
                      child: Text(
                        "Riwayat Lembur",
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bulan",
                                  style: GoogleFonts.poppins(
                                    color: MyColorsConst.darkColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                MonthPicker(
                                  onTap: (DateTime? months, DateTime? years) {
                                    if (months != null) {
                                      setState(() {
                                        selectedMonth = months;
                                      });
                                      print(
                                          "ini bulan terpilih ${selectedMonth} ${selectedYear}");
                                      DateTime newDate;
                                      newDate = DateTime(
                                        selectedYear != null
                                            ? selectedYear!.year
                                            : DateTime.now().year,
                                        selectedMonth!.month,
                                      );

                                      context.read<ListLemburBloc>().add(
                                            GetListLembur(
                                              date: newDate,
                                            ),
                                          );
                                    }
                                  },
                                  selectedYear: selectedYear,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tahun",
                                  style: GoogleFonts.poppins(
                                    color: MyColorsConst.darkColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                YearPickerCustom(
                                  onTap: (DateTime? years, DateTime? months) {
                                    if (years != null) {
                                      setState(() {
                                        selectedYear = years;
                                      });
                                      print(
                                          "ini tahun yang dipilih ${selectedYear} ${selectedMonth}");

                                      DateTime newDate;
                                      if (selectedMonth != null) {
                                        newDate = DateTime(selectedYear!.year,
                                            selectedMonth!.month);
                                      } else {
                                        newDate = DateTime(selectedYear!.year,
                                            DateTime.now().month);
                                      }

                                      context.read<ListLemburBloc>().add(
                                            GetListLembur(
                                              date: newDate,
                                            ),
                                          );
                                    }
                                  },
                                  selectedMonth: selectedMonth,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Expanded(
                        child: BlocBuilder<ListLemburBloc, ListLemburState>(
                          builder: (context, state) {
                            var listlembur =
                                context.read<ListLemburBloc>().listlembur;
                            debugPrint("LIST LEMBUR ? ${listlembur}");
                            return CardListView(
                              listlembur: listlembur,
                              formatDate: formatDate,
                              extractTime: extractTime,
                              reloadDataCallback: loadData,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  final List<DataLembur> listlembur;
  final String Function(String?) formatDate;
  final String Function(String?) extractTime;
  final VoidCallback reloadDataCallback;

  const CardListView(
      {Key? key,
      required this.listlembur,
      required this.formatDate,
      required this.extractTime,
      required this.reloadDataCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return listlembur.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: listlembur.length,
            itemBuilder: (context, index) {
              // DateTime sampleDate = DateTime.now();
              DataLembur? data = listlembur[index];

              String currentStatus = data.status ?? '';
              Color currentColor = getColorFromStatus(currentStatus);

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailLemburPage(
                            data: data,
                            lemburID: data.id ?? 0,
                            tipeLemburId: data.tipeLemburId,
                            tipeLemburValue: data.tipeLemburValue,
                            nomorFromList: data.nomor,
                            tanggal: data.tanggal,
                            jamMulai: data.jamMulai,
                            jamSelesai: data.jamSelesai,
                            noDoc: data.noDoc,
                            doc: data.doc,
                            keterangan: data.keterangan,
                            alasanId: data.alasanId,
                            alasanValue: data.alasanValue,
                            picId: data.picId,
                            picValue: data.picName,
                            reloadDataCallback: reloadDataCallback,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        // Container(
                        //   margin: EdgeInsets.only(right: 3),
                        //   height: 110,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(6),
                        //     color: Color(0XFF0068D4),
                        //   ),
                        // ),
                        Container(
                          // height: 110,
                          margin: const EdgeInsets.only(
                              bottom: 7, left: 5, right: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    MyColorsConst.darkColor.withOpacity(0.25),
                                offset: Offset(2, 3.5),
                                blurRadius: 7,
                              ),
                            ],
                            color: MyColorsConst.whiteColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 20.sp,
                              ),
                              Text(
                                data.tipeLemburValue ?? '',
                                style: GoogleFonts.poppins(
                                  color: MyColorsConst.darkColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 2.sp,
                              ),
                              Text(
                                "${data.nomor ?? 0}",
                                style: GoogleFonts.poppins(
                                  color: MyColorsConst.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Tanggal',
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      '${data.tanggal}',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Jam',
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "${extractTime(data.jamMulai)} - ${extractTime(data.jamSelesai)}",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
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
                                horizontal: 10.sp, vertical: 3.sp),
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
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        : Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/box_nodata.png",
                  height: size.width * 1 / 2,
                ),
                const SizedBox(height: 8),
                Text(
                  "Tidak ada data yang ditampilkan!",
                  style: GoogleFonts.poppins(
                    color: MyColorsConst.darkColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          );
  }
}
