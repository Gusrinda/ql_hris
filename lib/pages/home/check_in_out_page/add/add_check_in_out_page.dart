import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ql_absensi_express_mobile/componens/appbar_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/image_form_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_button_custom_v1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/login_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/add_check_in_out_form_model.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/bloc/add_check_in_out_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/bloc/location_acio_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/bloc/time_acio_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/home_page.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

enum ProcessCheckInOutPageState { checkin, checkout }

class AddCheckInOutPage extends StatelessWidget {
  static const routeName = '/ProcessCheckInOutPage';
  final ProcessCheckInOutPageState? formState;
  AddCheckInOutPage({
    super.key,
    this.formState = ProcessCheckInOutPageState.checkin,
  });
  final dataLayout = [
    {
      "title": "Masuk",
      "btnColor": MyColorsConst.greenColor,
      "btnText": "Check In",
    },
    {
      "title": "Pulang",
      "btnColor": MyColorsConst.redColor,
      "btnText": "Check Out",
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationAcioBloc, LocationAcioState>(
          listener: (context, state) async {
            // if (state is LocationAcioLoading) {
            //   LoadingDialog.showLoadingDialog(context);
            // } else if (state is LocationAcioLoadSuccess) {
            //   LoadingDialog.dismissDialog(context);
            // } else
            if (state is LocationAcioLoadFailed) {
              // LoadingDialog.dismissDialog(context);
              await showDialog(
                context: context,
                builder: (_) => DialogCustom(
                  state: DialogCustomItem.error,
                  message: state.message,
                ),
              );
              Navigator.of(context).popUntil((route) => route.isFirst);
            }
          },
        ),
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
        appBar: appBarCustomV1(
          title: "Presensi ${dataLayout[formState!.index]["title"] as String}",
          padLeft: 8,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ImageFormCustomV1(
                  onImageSelected: (filePath) {
                    context.read<AddCheckInOutBloc>().add(
                          AddCheckInOutFormDataAdded(
                            formData: AddCheckInOutModel(imagePath: filePath),
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
                  children: [
                    BlocBuilder<TimeAcioBloc, TimeAcioState>(
                      builder: (context, state) {
                        var data = state is TimeAcioLoadSuccess ? state : null;
                        return Column(
                          children: [
                            buildDetailCard(
                              title: "Tanggal",
                              text: data != null
                                  ? DateFormat('EEEE, dd-MM-yyyy', 'id_ID')
                                      .format(data.dateTime)
                                  : "-",
                            ),
                            const SizedBox(height: 24),
                            buildDetailCard(
                              title: "Waktu",
                              text: data != null
                                  ? DateFormat('HH:mm:ss').format(data.dateTime)
                                  : "-",
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    BlocBuilder<LocationAcioBloc, LocationAcioState>(
                      builder: (context, state) {
                        var isLoading = true;
                        if (state is! LocationAcioLoading) isLoading = false;
                        var data =
                            state is LocationAcioLoadSuccess ? state : null;

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
                          children: [
                            buildDetailCard(
                              title: "Status",
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
                                      : MyColorsConst.yellowColor
                                  : MyColorsConst.darkColor,
                            ),
                            const SizedBox(height: 24),
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: BlocBuilder<AddCheckInOutBloc, AddCheckInOutState>(
            builder: (context, state) {
              return TextButtonCustomV1(
                text: dataLayout[formState!.index]["btnText"] as String,
                backgroundColor:
                    dataLayout[formState!.index]["btnColor"] as Color,
                textColor: MyColorsConst.whiteColor,
                onPressed: state is AddCheckInOutLoading
                    ? null
                    : state is AddCheckInOutButtonActivate
                        ? () async {
                            if (state.isOnSite) {
                              context
                                  .read<AddCheckInOutBloc>()
                                  .add(AddCheckInOutSubmited());
                            } else {
                              await showDialog(
                                context: context,
                                builder: (_) => DialogCustom(
                                  state: DialogCustomItem.warning,
                                  message:
                                      "Anda sedang berada diluar kantor!\nApakah masih ingin melanjutkan?",
                                  onContinue: () => context
                                      .read<AddCheckInOutBloc>()
                                      .add(AddCheckInOutSubmited()),
                                ),
                              );
                            }
                          }
                        : null,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildDetailCard({
    required title,
    required text,
    double textSize = 16.0,
    Color color = MyColorsConst.darkColor,
    textBold = FontWeight.bold,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 125, 255),
                Color.fromARGB(255, 51, 255, 204),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: MyColorsConst.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: MyColorsConst.whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            boxShadow: [
              BoxShadow(
                color: MyColorsConst.shadowColor,
                blurRadius: 2,
                offset: Offset(0, 4),
                spreadRadius: 1,
              ),
            ],
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
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
