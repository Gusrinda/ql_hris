import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

enum DialogCustomItem {
  success,
  warning,
  confirm,
  error,
  info,
}

class DialogCustom extends StatefulWidget {
  final DialogCustomItem state;
  final String message;
  final int durationInSec;
  final VoidCallback? onContinue;
  const DialogCustom({
    Key? key,
    required this.state,
    required this.message,
    this.durationInSec = 3,
    this.onContinue,
  }) : super(key: key);

  @override
  State<DialogCustom> createState() => _DialogCustomState();
}

class _DialogCustomState extends State<DialogCustom> {
  late Timer? timer;
  @override
  void initState() {
    super.initState();
    if (widget.state != DialogCustomItem.warning) {
      timer = Timer(Duration(seconds: widget.durationInSec ?? 3), () {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  void dispose() {
    if (widget.state != DialogCustomItem.warning) {
      timer?.cancel();
      timer = null;
    }
    super.dispose();
  }

  final dataLottie = [
    {
      "asset": 'assets/lotties/json/success.json',
      "color": Color.fromARGB(255, 11, 83, 143),
      "text": 'SUCCESS!',
    },
    {
      "asset": 'assets/lotties/json/lottie_warning.json',
      "color": Colors.orange,
      "text": 'WARNING!',
    },
    {
      "asset": 'assets/lotties/json/lottie_info.json',
      "color": MyColorsConst.primaryColor,
      "text": 'KONFIRMASI!',
    },
    {
      "asset": 'assets/lotties/json/error.json',
      "color": Colors.red,
      "text": 'ERROR!',
    },
    {
      "asset": 'assets/lotties/json/lottie_info.json',
      "color": Colors.blue,
      "text": 'INFO!',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            Lottie.asset(dataLottie[widget.state.index]["asset"] as String,
                height: 100,
                repeat: dataLottie[widget.state.index]["asset"] ==
                        'assets/lotties/json/success.json'
                    ? false
                    : true),
            const SizedBox(height: 10),
            Text(
              dataLottie[widget.state.index]["text"] as String,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: MyColorsConst.darkColor,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              widget.message,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12.sp),
            ),
            const SizedBox(height: 20),
            widget.state != DialogCustomItem.warning &&
                    widget.state != DialogCustomItem.confirm
                ? SizedBox(
                    width: 100,
                    child: dialogButton(
                      context,
                      text: 'Tutup',
                      color: dataLottie[widget.state.index]["color"] as Color,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: dialogButton(
                          context,
                          text: 'Batal',
                          color: MyColorsConst.lightDarkColor,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Expanded(
                        child: dialogButton(
                          context,
                          text: 'Lanjutkan',
                          color:
                              dataLottie[widget.state.index]["color"] as Color,
                          onPressed: widget.onContinue!,
                        ),
                      )
                    ],
                  ),
            SizedBox(height: 5.sp),
          ],
        ),
      ),
    );
  }

  ElevatedButton dialogButton(
    BuildContext context, {
    required VoidCallback onPressed,
    required String text,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        // fixedSize: const Size(100, 40),
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
        backgroundColor: Colors.white,
        side: BorderSide(color: color, width: 1.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: color, fontSize: 12.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}

// class DialogCustom extends StatelessWidget {
//   final DialogCustomItem state;
//   final String message;
//   DialogCustom({Key? key, required this.state, required this.message})
//       : super(key: key);

//   final dataLottie = [
//     {"asset": 'assets/lotties/json/lottie_success.json', "color": Colors.green},
//     {"asset": 'assets/lotties/json/lottie_warning.json', "color": Colors.red},
//     {"asset": 'assets/lotties/json/lottie_info.json', "color": Colors.blue},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Lottie.asset(dataLottie[state.index]["asset"] as String,
//                 height: 100),
//             const SizedBox(height: 25),
//             Text(
//               message,
//               textAlign: TextAlign.center,
//               style: GoogleFonts.poppins(fontSize: 12),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               style: ElevatedButton.styleFrom(
//                   fixedSize: const Size(100, 30),
//                   backgroundColor: dataLottie[state.index]["color"] as Color,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10))),
//               child: Text('Tutup'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
