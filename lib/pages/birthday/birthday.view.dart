import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/home_bloc/home_bloc.dart';
import 'package:sj_presensi_mobile/services/model/all_karyawan/response_all_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class listBirthdayTodayPage extends StatefulWidget {
  static const routeName = '/listBirthdayTodayPage';
  const listBirthdayTodayPage({super.key});

  @override
  State<listBirthdayTodayPage> createState() => _listBirthdayTodayPageState();
}

class _listBirthdayTodayPageState extends State<listBirthdayTodayPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isMuted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _audioPlayer.play(AssetSource('sounds/Selamat Ulang Tahun.mp3'));
      _audioPlayer.setVolume(1.0);
      context.read<HomeBloc>().add(OnGetBirthday());
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      _audioPlayer.setVolume(_isMuted ? 0.0 : 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) async {
        if (state.status.isInitial) {
          LoadingDialog.showLoadingDialog(context);
        }
        if (state.status.isSuccess) {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColorsConst.primaryColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 18,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          title: Text(
            "Ulang Tahun Bulan Ini",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _toggleMute,
          backgroundColor:
              _isMuted ? Colors.red.shade700 : MyColorsConst.primaryColor,
          child: Icon(_isMuted ? Icons.volume_off : Icons.volume_up),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColorsConst.primaryColor,
                MyColorsConst.primaryBGColor,
                MyColorsConst.primaryBGColor,
                MyColorsConst.primaryBGColor,
              ],
              // stops: [0.0, 0.1],
              begin: Alignment.topCenter,
              end: Alignment.center,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.sp),
                      topRight: Radius.circular(20.sp),
                    ),
                    color: MyColorsConst.primaryBGColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      children: [
                        SizedBox(height: 20.sp),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            final originalList =
                                state.responseDataKaryawan?.data ?? [];
                            final listBirthdayToday =
                                getSortedBirthdayList(originalList);

                            if (listBirthdayToday.isEmpty) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 50.sp),
                                      Image.asset(
                                        "assets/images/box_nodata.png",
                                        height:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                4,
                                      ),
                                      SizedBox(height: 10.sp),
                                      Text('Data Kosong',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: 2.sp),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                            'Tidak ada yang berulang tahun hari ini',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    MyColorsConst.darkColor)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }

                            return ListView.builder(
                              itemCount: listBirthdayToday.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final birthday = listBirthdayToday[index];
                                final birthDate = DateFormat('dd/MM/yyyy')
                                    .parse(birthday.tglLahir ?? "01/01/1900");
                                final today = DateTime.now();
                                var nextBirthday = DateTime(
                                    today.year, birthDate.month, birthDate.day);

                                if (nextBirthday.isBefore(today)) {
                                  nextBirthday = DateTime(today.year,
                                      birthDate.month, birthDate.day);
                                }

                                final isToday =
                                    nextBirthday.year == today.year &&
                                        nextBirthday.month == today.month &&
                                        nextBirthday.day == today.day;
                                final isPast = birthDate.month < today.month ||
                                    (birthDate.month == today.month &&
                                        birthDate.day < today.day);

                                final daysUntilBirthday =
                                    nextBirthday.difference(today).inDays + 1;

                                return Padding(
                                    padding: EdgeInsets.only(bottom: 7.sp),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.sp, vertical: 15.sp),
                                      decoration: BoxDecoration(
                                          color: isPast
                                              ? Color(0xFFFFF8F8)
                                              : Colors.white,
                                          border: Border.all(
                                              color: isPast
                                                  ? MyColorsConst.redColor
                                                  : MyColorsConst.primaryColor,
                                              width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: Row(
                                        children: [
                                          if (isToday) ...{
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.sp)),
                                              child: SvgPicture.asset(
                                                  "assets/icons/birthday_cake_icon.svg"),
                                            ),
                                            SizedBox(width: 10.sp),
                                          },
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  birthday.namaLengkap
                                                          ?.toUpperCase() ??
                                                      "-",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 13.sp,
                                                      color: MyColorsConst
                                                          .darkColor,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  formatTglUmur(
                                                      birthday.tglLahir ??
                                                          "1000/01/01"),
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11.sp,
                                                      color: MyColorsConst
                                                          .darkColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (isToday)
                                            Container(
                                              padding: EdgeInsets.all(0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.sp)),
                                              child: SvgPicture.asset(
                                                  "assets/icons/birthday_popper_icon.svg",
                                                  color: MyColorsConst
                                                      .primaryColor),
                                            )
                                          else if (isPast)
                                            Text(
                                              "Sudah\nLewat",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  color: MyColorsConst.redColor,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          else
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "$daysUntilBirthday",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 20.sp,
                                                      color: MyColorsConst
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  "Hari Lagi",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 8.sp,
                                                      color: MyColorsConst
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                        ],
                                      ),
                                    ));
                              },
                            );
                          },
                        ),
                        SizedBox(height: 150.sp),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<DataAllKaryawan> getSortedBirthdayList(
    List<DataAllKaryawan> originalList) {
  final today = DateTime.now();
  return List<DataAllKaryawan>.from(originalList)
    ..sort((a, b) {
      final dateA = DateFormat('dd/MM/yyyy').parse(a.tglLahir ?? "01/01/1900");
      final dateB = DateFormat('dd/MM/yyyy').parse(b.tglLahir ?? "01/01/1900");

      final birthdayA = DateTime(today.year, dateA.month, dateA.day);
      final birthdayB = DateTime(today.year, dateB.month, dateB.day);

      if (birthdayA.day == today.day && birthdayA.month == today.month) {
        return -1;
      }
      if (birthdayB.day == today.day && birthdayB.month == today.month) {
        return 1;
      }

      if (birthdayA.isBefore(today) && birthdayB.isAfter(today)) return 1;
      if (birthdayB.isBefore(today) && birthdayA.isAfter(today)) return -1;

      return birthdayA.compareTo(birthdayB);
    });
}

String formatTglUmur(String tanggalString) {
  // Inisialisasi lokal untuk Bahasa Indonesia
  initializeDateFormatting('id_ID', null);

  // Parse string tanggal ke DateTime
  DateTime tanggal = DateFormat('dd/MM/yyyy').parse(tanggalString);

  // Ubah tahun ke tahun saat ini
  DateTime tanggalDenganTahunSaatIni =
      DateTime(DateTime.now().year, tanggal.month, tanggal.day);

  // Format tanggal ke string yang diinginkan
  String hari = DateFormat('EEEE', 'id_ID').format(tanggalDenganTahunSaatIni);
  String tanggalLengkap =
      DateFormat('dd MMMM', 'id_ID').format(tanggalDenganTahunSaatIni);

  // Gabungkan semua informasi
  return '$hari, $tanggalLengkap';
}


// String formatTglUmur(String tanggalString) {
//   // Inisialisasi lokal untuk Bahasa Indonesia
//   initializeDateFormatting('id_ID', null);

//   // Parse string tanggal ke DateTime
//   DateTime tanggal = DateFormat('dd/MM/yyyy').parse(tanggalString);

//   // Format tanggal ke string yang diinginkan
//   String hari = DateFormat('EEEE', 'id_ID').format(tanggal);
//   String tanggalLengkap = DateFormat('dd MMM yyyy', 'id_ID').format(tanggal);

//   // Hitung umur
//   int umur = DateTime.now().year - tanggal.year;
//   if (DateTime.now().month < tanggal.month ||
//       (DateTime.now().month == tanggal.month &&
//           DateTime.now().day < tanggal.day)) {
//     umur--;
//   }

//   // Gabungkan semua informasi
//   return '$hari, $tanggalLengkap ($umur Tahun)';
// }


