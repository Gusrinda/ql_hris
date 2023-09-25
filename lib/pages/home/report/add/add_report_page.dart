import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ql_absensi_express_mobile/componens/appbar_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_button_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_form_custom_v3.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/login_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/add/bloc/add_report_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/report_detail_page.dart';
import 'package:ql_absensi_express_mobile/services/model/report_detail_page_model.dart';
import 'package:ql_absensi_express_mobile/services/model/report_model.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class AddReportPage extends StatelessWidget {
  static const routeName = '/AddReportPage';
  final bool isMorningReport;
  AddReportPage({
    super.key,
    this.isMorningReport = true,
  });
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController task1Controller = TextEditingController();
  final TextEditingController task2Controller = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();

  final layoutData = {
    true: {
      "title": "Laporan Pagi",
      "icon": "assets/icons/laporan_pagi.svg",
      "contentTitle": [
        "Task kemarin yang belum selesai",
        "Task yang dikerjakan hari ini",
      ],
    },
    false: {
      "title": "Laporan Sore",
      "icon": "assets/icons/laporan_sore.svg",
      "contentTitle": [
        "Task hari ini yang sudah selesai",
        "Task hari ini yang belum selesai",
      ],
    }
  };
  var dummyData = ReportModel(
    id: 1,
    date: DateTime.now().add(const Duration(days: 1)),
    status: "completed",
    reportDetails: [
      ReportDetailModel(
        time: DateTime.now(),
        pastTask: "-",
        nextTask: "Lorem Ipsum",
        keterangan: "Lorem Ipsum",
      ),
      ReportDetailModel(
        time: DateTime.now().add(const Duration(hours: 5)),
        pastTask: "Lorem Ipsum",
        nextTask: "Lorem Ipsum",
        keterangan: "Lorem Ipsum",
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<AddReportBloc, AddReportState>(
      listener: (context, state) async {
        if (state is AddReportLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddReportSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
        } else if (state is AddReportFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is AddReportFailedUserExpired) {
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
        } else if (state is AddReportFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        appBar: appBarCustomV1(
          title: layoutData[isMorningReport]!['title'] as String,
          actions: [
            BlocBuilder<AddReportBloc, AddReportState>(
              builder: (context, state) {
                return IconButton(
                  splashRadius: 20,
                  iconSize: 20,
                  icon: const Icon(Icons.question_mark),
                  onPressed: () async {
                    if (state is FetchLastReportSuccessInBackground) {
                      Navigator.of(context).pushNamed(
                        ReportDetailPage.routeName,
                        arguments: ReportDetailPageModel(
                          title: "Detail Laporan Terakhir",
                          data: state.reportModel,
                        ),
                      );
                    } else if (state is FetchLastReportFailedInBackground) {
                      await showDialog(
                        context: context,
                        builder: (_) => const DialogCustom(
                          state: DialogCustomItem.info,
                          message: "Anda belum mempunyai laporan harian!",
                        ),
                      );
                    }
                  },
                );
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        layoutData[isMorningReport]!['icon'] as String,
                        fit: BoxFit.fitWidth,
                        width: size.width * 1.2 / 2,
                      ),
                      SizedBox(height: size.height * 1 / 15),
                      TextFormCustomV3(
                        titleText:
                            (layoutData[isMorningReport]!['contentTitle']!
                                as List)[0],
                        hintText: "",
                        controller: task1Controller,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required!"),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      TextFormCustomV3(
                        titleText:
                            (layoutData[isMorningReport]!['contentTitle']!
                                as List)[1],
                        hintText: "",
                        controller: task2Controller,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required!"),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      TextFormCustomV3(
                        titleText: "Keterangan (isi dengan '-' jika kosong)",
                        hintText: "",
                        controller: keteranganController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required!"),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  BlocBuilder<AddReportBloc, AddReportState>(
                    builder: (context, state) {
                      return TextButtonCustomV1(
                        text: "Submit",
                        backgroundColor: MyColorsConst.primaryColor,
                        textColor: MyColorsConst.whiteColor,
                        onPressed: state is AddReportLoading
                            ? null
                            : () {
                                context.read<AddReportBloc>().add(
                                      AddReportSubmited(
                                        pastTask: task1Controller.text,
                                        nextTask: task2Controller.text,
                                        keterangan: keteranganController.text,
                                        status:
                                            _formKey.currentState!.validate(),
                                      ),
                                    );
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
    );
  }
}
