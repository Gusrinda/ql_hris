import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

enum DialogCustomItem {
  success,
  warning,
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
      timer = Timer(Duration(seconds: widget.durationInSec), () {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  void dispose() {
    if (widget.state != DialogCustomItem.warning) {
      timer!.cancel();
      timer = null;
    }
    super.dispose();
  }

  final dataLottie = [
    {
      "asset": 'assets/lotties/json/lottie_success.json',
      "color": Colors.green,
    },
    {
      "asset": 'assets/lotties/json/lottie_warning.json',
      "color": Colors.orange,
    },
    {
      "asset": 'assets/lotties/json/lottie_error.json',
      "color": Colors.red,
    },
    {
      "asset": 'assets/lotties/json/lottie_info.json',
      "color": Colors.blue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(dataLottie[widget.state.index]["asset"] as String,
                height: 100),
            const SizedBox(height: 25),
            Text(
              widget.message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 10),
            widget.state != DialogCustomItem.warning
                ? dialogButton(
                    context,
                    text: 'Tutup',
                    color: dataLottie[widget.state.index]["color"] as Color,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                : Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dialogButton(
                        context,
                        text: 'Batal',
                        color: MyColorsConst.lightDarkColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      dialogButton(
                        context,
                        text: 'Lanjutkan',
                        color: dataLottie[widget.state.index]["color"] as Color,
                        onPressed: widget.onContinue!,
                      )
                    ],
                  ),
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
        fixedSize: const Size(100, 30),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text),
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
//               style: const TextStyle(fontSize: 12),
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
//               child: const Text('Tutup'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
