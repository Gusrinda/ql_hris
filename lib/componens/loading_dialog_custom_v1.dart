import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingDialog {
  static bool _isLoadingDialogShow = false;
  static showLoadingDialog(BuildContext context) {
    if (!LoadingDialog._isLoadingDialogShow) {
      AlertDialog alertLoading = AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            const CircularProgressIndicator(),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text('Harap tunggu...'),
            )
          ],
        ),
      );

      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alertLoading;
        },
      );
      LoadingDialog._isLoadingDialogShow = true;
    }
  }

  static dismissDialog(BuildContext context) {
    if (LoadingDialog._isLoadingDialogShow) {
      LoadingDialog._isLoadingDialogShow = false;
      return Navigator.pop(context);
    }
  }
}
