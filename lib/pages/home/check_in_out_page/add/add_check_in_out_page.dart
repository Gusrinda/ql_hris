import 'dart:developer';

import 'package:detect_fake_location/detect_fake_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/image_form_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/add_check_in_out_form_model.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/add_check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/location_acio_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/time_acio_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/dashboard.view.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

enum ProcessCheckInOutPageState { checkin, checkout }

class AddCheckInOutPage extends StatefulWidget {
  static const routeName = '/ProcessCheckInOutPage';
  final ProcessCheckInOutPageState? formState;

  AddCheckInOutPage({
    super.key,
    this.formState = ProcessCheckInOutPageState.checkin,
  });

  @override
  State<AddCheckInOutPage> createState() => _AddCheckInOutPageState();
}

class _AddCheckInOutPageState extends State<AddCheckInOutPage> {
  final TextEditingController? catatanController = TextEditingController();
  bool isFakeLocation = false;

  final dataLayout = [
    {
      "title": "Masuk",
      "btnColor": Colors.green.shade800,
      "btnText": "Check In",
    },
    {
      "title": "Pulang",
      "btnColor": Colors.red.shade800,
      "btnText": "Check Out",
    }
  ];

  @override
  void initState() {
    detectFakeLocation(context);
    super.initState();
  }

  Future<void> detectFakeLocation(BuildContext context) async {
    log("Mencoba mendeteksi Fake Location");
    bool isFakeLocationTemp = await DetectFakeLocation().detectFakeLocation();

    if (isFakeLocationTemp) {
      setState(() {
        isFakeLocation = isFakeLocationTemp;
      });
      showDialog(
        context: context,
        barrierColor: Colors.red.shade900.withOpacity(0.85),
        barrierDismissible: true,
        builder: (BuildContext context) {
          return PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  DashboardView.routeName, (Route<dynamic> route) => false);
            },
            child: AlertDialog(
              title: Text('Fake Location Detected!!!',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: MyColorsConst.redColor,
                    fontWeight: FontWeight.w700,
                  )),
              content: Text(
                  'Anda terdeteksi menggunakan Fake GPS Location. Mohon matikan untuk melanjutkan presensi!',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: MyColorsConst.darkColor,
                    fontWeight: FontWeight.w400,
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () async {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        DashboardView.routeName,
                        (Route<dynamic> route) => false);
                  },
                ),
              ],
            ),
          );
        },
      );
    } else {
      bool isLocationServiceEnabled =
          await Geolocator.isLocationServiceEnabled();
      LocationPermission locationPermission =
          await Geolocator.checkPermission();

      if (!isLocationServiceEnabled ||
          locationPermission == LocationPermission.denied) {
        // Meminta izin lokasi
        locationPermission = await Geolocator.requestPermission();
      }

      if (locationPermission == LocationPermission.whileInUse ||
          locationPermission == LocationPermission.always) {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        if (position.isMocked) {
          // Lokasi adalah palsu atau mock
          log('Lokasi palsu terdeteksi!');
          showDialog(
            context: context,
            barrierColor: Colors.red.shade900.withOpacity(0.85),
            barrierDismissible: true,
            builder: (BuildContext context) {
              return PopScope(
                canPop: false,
                onPopInvoked: (didPop) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      DashboardView.routeName, (Route<dynamic> route) => false);
                },
                child: AlertDialog(
                  title: Text('Fake Location Detected!!!',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: MyColorsConst.redColor,
                        fontWeight: FontWeight.w700,
                      )),
                  content: Text(
                      'Anda terdeteksi menggunakan Fake GPS Location. Mohon matikan untuk melanjutkan presensi!',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: MyColorsConst.darkColor,
                        fontWeight: FontWeight.w400,
                      )),
                  actions: <Widget>[
                    TextButton(
                      child: Text('OK'),
                      onPressed: () async {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            DashboardView.routeName,
                            (Route<dynamic> route) => false);
                      },
                    ),
                  ],
                ),
              );
            },
          );
          setState(() {
            isFakeLocation = true;
          });
        } else {
          // Lokasi adalah asli
          log('Lokasi GPS asli.');
          setState(() {
            isFakeLocation = false;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocListener(
      listeners: [
        BlocListener<AddCheckInOutBloc, AddCheckInOutState>(
          listener: (context, state) async {
            if (state is AddCheckInOutLoading) {
              LoadingDialog.showLoadingDialog(context);
            } else if (state is AddCheckInOutSuccess) {
              LoadingDialog.dismissDialog(context);
              await showDialog(
                context: context,
                builder: (_) => DialogCustom(
                  state: DialogCustomItem.success,
                  message: state.message,
                ),
              );
              Navigator.of(context).popUntil((route) => route.isFirst);
            } else if (state is AddCheckInOutFailed) {
              LoadingDialog.dismissDialog(context);
              await showDialog(
                context: context,
                builder: (_) => DialogCustom(
                  state: DialogCustomItem.error,
                  message: state.message,
                ),
              );
            } else if (state is AddCheckInOutFailedUserExpired) {
              LoadingDialog.dismissDialog(context);
              await showDialog(
                context: context,
                builder: (_) => DialogCustom(
                  state: DialogCustomItem.error,
                  message: state.message,
                ),
              );
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginPage.routeName, (route) => false);
            } else if (state is AddCheckInOutFailedInBackground) {
              LoadingDialog.dismissDialog(context);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginPage.routeName, (route) => false);
            }
          },
        ),
      ],
      child: Scaffold(
        // appBar: appBarCustomV1(
        //   title: "Presensi ${dataLayout[formState!.index]["title"] as String}",
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
          child: Column(
            children: [
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.only(left: 5.0.sp),
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
                      width: size.width * 0.5 / 2.4,
                    ),
                    Expanded(
                      child: Text(
                        "Presensi ${dataLayout[widget.formState!.index]["title"] as String}",
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
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ImageFormCustomV1(
                                  onImageSelected: (filePath) {
                                    context.read<AddCheckInOutBloc>().add(
                                          AddCheckInOutFormDataAdded(
                                            formData: AddCheckInOutModel(
                                                imagePath: filePath),
                                          ),
                                        );
                                  },
                                  onImageSelectedError: (message) async {
                                    await showDialog(
                                      context: context,
                                      builder: (_) => DialogCustom(
                                        state: DialogCustomItem.error,
                                        message: message,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BlocBuilder<TimeAcioBloc, TimeAcioState>(
                                      builder: (context, state) {
                                        var data = state is TimeAcioLoadSuccess
                                            ? state
                                            : null;
                                        return Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month_rounded,
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                  size: 20,
                                                ),
                                                const SizedBox(
                                                    width:
                                                        5), // Atur jarak sesuai kebutuhan
                                                Text(
                                                  '${data != null ? DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(data.dateTime) : "-"}',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12.sp,
                                                      color: MyColorsConst
                                                          .darkColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(width: 20),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  const Spacer(),
                                                  Icon(
                                                    Icons.access_time_filled,
                                                    color: MyColorsConst
                                                        .primaryColor,
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    '${data != null ? DateFormat('HH:mm:ss').format(data.dateTime) : "-"}',
                                                    style: GoogleFonts.poppins(
                                                        // fontFamily: 'Poppins',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 5),
                                    Divider(
                                      thickness: 1.5,
                                      color: Colors.grey.shade300,
                                    ),
                                    BlocBuilder<LocationAcioBloc,
                                        LocationAcioState>(
                                      builder: (context, state) {
                                        var isLoading = true;
                                        if (state is! LocationAcioLoading)
                                          isLoading = false;
                                        var data =
                                            state is LocationAcioLoadSuccess
                                                ? state
                                                : null;
                                        print("LATITUDE: ${data?.latitude}");
                                        print("LONGITUDE: ${data?.longitude}");
                                        context
                                            .read<AddCheckInOutBloc>()
                                            .add(AddCheckInOutFormDataAdded(
                                              formData: AddCheckInOutModel(
                                                address: data?.location,
                                                isOnSite: data?.isOnSite,
                                                latitude: data?.latitude,
                                                longitude: data?.longitude,
                                              ),
                                            ));
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            buildDetailCard(
                                              title: "Lokasi",
                                              text: isLoading
                                                  ? "Loading..."
                                                  : data != null
                                                      ? data.location
                                                      : "-",
                                              textSize: 12,
                                              textBold: FontWeight.normal,
                                            ),
                                            buildDetailCard(
                                              title: "Keterangan",
                                              text: isLoading
                                                  ? "Loading..."
                                                  : data != null
                                                      ? data.isOnSite
                                                          ? 'On Scope'
                                                          : 'Out Scope'
                                                      : "-",
                                              color: data != null
                                                  ? data.isOnSite
                                                      ? MyColorsConst.greenColor
                                                      : MyColorsConst.redColor
                                                  : MyColorsConst.darkColor,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            // Padding(
                                            //   padding: const EdgeInsets.symmetric(horizontal: 9),
                                            //   child: Text("Alasan lokasi Out Scope", style: GoogleFonts.poppins(
                                            //     fontSize: 12, fontWeight: FontWeight.w700, color: MyColorsConst.darkColor
                                            //   ),),
                                            // ),
                                            if (data != null && !data.isOnSite)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 9),
                                                child: TextFormField(
                                                  controller:
                                                      catatanController!,
                                                  maxLines: 5,
                                                  textAlign: TextAlign.start,
                                                  decoration: InputDecoration(
                                                    focusColor:
                                                        MyColorsConst.redColor,
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: MyColorsConst
                                                              .redColor,
                                                          width: 1.5),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 15),
                                                    labelStyle:
                                                        GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    labelText:
                                                        'Alasan Presensi Out Scope',
                                                    alignLabelWithHint:
                                                        true, // Align label with the top
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ),
                        ),
                        if (isFakeLocation == false)
                          BlocBuilder<AddCheckInOutBloc, AddCheckInOutState>(
                            builder: (context, state) {
                              return ValueListenableBuilder<TextEditingValue>(
                                  valueListenable: catatanController!,
                                  builder: (context, value, child) {
                                    bool canActivateButton(
                                        AddCheckInOutState state,
                                        TextEditingValue value) {
                                      if (state
                                              is AddCheckInOutButtonActivate &&
                                          !state.isOnSite) {
                                        if (value.text.isNotEmpty) {
                                          return true;
                                        } else {
                                          return false;
                                        }
                                      } else if (state
                                              is AddCheckInOutButtonActivate &&
                                          state.isOnSite) {
                                        return true;
                                      } else {
                                        return false;
                                      }
                                    }

                                    bool canActivate =
                                        canActivateButton(state, value);

                                    return TextButtonCustomV1(
                                      text: dataLayout[widget.formState!.index]
                                          ["btnText"] as String,
                                      backgroundColor:
                                          dataLayout[widget.formState!.index]
                                              ["btnColor"] as Color,
                                      textColor: MyColorsConst.whiteColor,
                                      onPressed: state is AddCheckInOutLoading
                                          ? null
                                          : canActivate
                                              ? () async {
                                                  if (state
                                                          is AddCheckInOutButtonActivate &&
                                                      state.isOnSite) {
                                                    context
                                                        .read<
                                                            AddCheckInOutBloc>()
                                                        .add(AddCheckInOutSubmited(
                                                            catatan:
                                                                catatanController
                                                                        ?.value
                                                                        .text ??
                                                                    "-"));
                                                  } else {
                                                    context
                                                        .read<
                                                            AddCheckInOutBloc>()
                                                        .add(AddCheckInOutSubmited(
                                                            catatan:
                                                                catatanController
                                                                        ?.value
                                                                        .text ??
                                                                    "-"));
                                                  }
                                                }
                                              : null,
                                    );
                                  });
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDetailCard({
    required title,
    required text,
    double textSize = 10.0,
    Color color = MyColorsConst.darkColor,
    textBold = FontWeight.bold,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color: MyColorsConst.darkColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: MyColorsConst.whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: color,
              fontSize: textSize,
              fontWeight: textBold,
            ),
          ),
        ),
      ],
    );
  }
}
