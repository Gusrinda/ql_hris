import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/login_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/add_check_in_out_page.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class HomeCheckInOutPage extends StatelessWidget {
  // static const routeName = 'HomeCheckInOutPage';
  const HomeCheckInOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<CheckInOutBloc, CheckInOutState>(
      listener: (context, state) async {
        if (state is CheckInOutLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is InfoCheckInOutSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => const DialogCustom(
              state: DialogCustomItem.info,
              message: "Anda sudah melakukan presensi harian!",
            ),
          );
        } else if (state is CheckInOutFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is CheckInOutFailedUserExpired) {
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
        } else if (state is CheckInOutFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: size.height - (size.height * 1 / 9.5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<CheckInOutBloc, CheckInOutState>(
                      builder: (context, state) {
                        String? name;
                        if (state is InfoCheckInOutSuccessInBackground) {
                          name = state.name;
                        } else if (state is CheckInOutSuccessInBackground) {
                          name = state.name;
                        }
                        return RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              color: MyColorsConst.darkColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: 'Hi'),
                              TextSpan(
                                text: ' ${name ?? "-"}',
                                style: const TextStyle(
                                    color: MyColorsConst.primaryColor),
                              ),
                              const TextSpan(text: '\nYuk isi presensimu!'),
                            ],
                          ),
                        );
                      },
                    ),
                    BlocBuilder<CheckInOutBloc, CheckInOutState>(
                      builder: (context, state) {
                        return buttonCheckInOut(
                          size: size,
                          iconPath: "assets/images/homepage_checkin.png",
                          title: "Check In",
                          color: MyColorsConst.greenColor,
                          enable: state is CheckInOutSuccessInBackground
                              ? state.isCheckin
                              : false,
                          onPressed: () async {
                            await Navigator.of(context).pushNamed(
                              AddCheckInOutPage.routeName,
                              arguments: ProcessCheckInOutPageState.checkin,
                            );
                            context
                                .read<CheckInOutBloc>()
                                .add(AttendanceStateChecked());
                          },
                        );
                      },
                    ),
                    BlocBuilder<CheckInOutBloc, CheckInOutState>(
                      builder: (context, state) {
                        return buttonCheckInOut(
                          size: size,
                          iconPath: "assets/images/homepage_checkout.png",
                          title: "Check Out",
                          color: MyColorsConst.redColor,
                          enable: state is CheckInOutSuccessInBackground
                              ? !state.isCheckin
                              : false,
                          onPressed: () async {
                            await Navigator.of(context).pushNamed(
                              AddCheckInOutPage.routeName,
                              arguments: ProcessCheckInOutPageState.checkout,
                            );
                            context
                                .read<CheckInOutBloc>()
                                .add(AttendanceStateChecked());
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonCheckInOut({
    size,
    iconPath,
    title,
    color,
    enable,
    required VoidCallback onPressed,
  }) {
    return Column(
      children: [
        Image.asset(
          iconPath,
          width: size.width / 2,
        ),
        SizedBox(
          width: size.width * 3 / 6 + 15,
          height: size.width * 1 / 5,
          child: ElevatedButton(
            onPressed: enable ? onPressed : null,
            style: OutlinedButton.styleFrom(
              backgroundColor: enable ? color : MyColorsConst.disableColor,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide.none,
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: MyColorsConst.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}



// ElevatedButton(
//             onPressed: onPress,
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: MyColorsConst.whiteColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           Container(
//             width: size.width * 3 / 6 + 15,
//             height: size.width * 1 / 5,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: enable ? color : MyColorsConst.disableColor,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: MyColorsConst.whiteColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),