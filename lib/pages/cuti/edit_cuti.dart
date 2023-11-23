import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_add_data.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_selector.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_tipe_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditCutiPage extends StatefulWidget {
  static const routeName = '/EditCutiPage';
  EditCutiPage({
    super.key,
    required this.cutiId,
    this.dateTo,
    this.alasanValue,
    this.status,
    this.keterangan,
    this.tipeCutiValue,
    this.dateFrom,
    required this.reloadDataCallback,
  });
  final int? cutiId;
  final String? dateTo;
  final String? alasanValue;
  final String? status;
  final String? keterangan;
  final String? tipeCutiValue;
  final String? dateFrom;
  final VoidCallback reloadDataCallback;

  final TextEditingController idAlasanController = TextEditingController();
  final TextEditingController valueAlasanController = TextEditingController();

  //Controller Tipe Cuti
  final TextEditingController idTipeCutiController = TextEditingController();
  final TextEditingController valueTipeCutiController = TextEditingController();

  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController dateFromController = TextEditingController();
  final TextEditingController dateToController = TextEditingController();

  @override
  State<EditCutiPage> createState() => _EditCutiPageState();
}

class _EditCutiPageState extends State<EditCutiPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedValue;
  String? selectedTipeValue;
  String? selectedIDTipeValue;
  DateTime? selectedDate;
  DateTime? selectedDateFrom;
  DateTime? selectedDateTo;

  @override
  void initState() {
    super.initState();

    widget.valueAlasanController.text = widget.alasanValue ?? '';
    widget.idAlasanController.text = '';

    widget.valueTipeCutiController.text = widget.tipeCutiValue ?? '';
    widget.idTipeCutiController.text = '';

    widget.keteranganController.text = widget.keterangan ?? '';
    widget.dateFromController.text = widget.dateFrom ?? '';
    widget.dateToController.text = widget.dateTo ?? '';

    selectedDateFrom = parseDate(widget.dateFrom);
    selectedDateTo = parseDate(widget.dateTo);
  }

  DateTime? parseDate(String? date) {
    try {
      return date != null ? DateTime.parse(date).toLocal() : null;
    } catch (e) {
      print("Error parsing date: $e");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectAlasanCuti = context.read<AddCutiBloc>().dataAlasanCuti;
    var selectTipeCuti = context.read<AddCutiBloc>().dataTipeCuti;
    String selectedTipeCutiDisplay = "";

    void _showTipeMenu(BuildContext context) async {
      if (selectTipeCuti.isEmpty) {
        context.read<AddCutiBloc>().add(OnSelectTipeCuti());
        selectTipeCuti = context.read<AddCutiBloc>().dataTipeCuti;
      }

      if (selectTipeCuti.isNotEmpty) {
        final selectedTipeValue = await showSearch<DataTipeCuti?>(
          context: context,
          delegate: TipeCutiSearchDelegate(
            tipeCutiData: selectTipeCuti,
            filteredData: selectTipeCuti,
          ),
        );

        if (selectedTipeValue != null) {
          widget.valueTipeCutiController.text =
              selectedTipeValue.value?.toString() ?? '';
          widget.idTipeCutiController.text =
              selectedTipeValue.id?.toString() ?? '';

          setState(() {
            this.selectedTipeValue = selectedTipeValue.value;
          });
        }
      } else {
        print("Tidak ada item dalam selectTemplateSpd");
      }
    }

    void _showAlasanMenu(BuildContext context) async {
      if (selectAlasanCuti.isEmpty) {
        context.read<AddCutiBloc>().add(OnSelectAlasanCuti());
        selectAlasanCuti = context.read<AddCutiBloc>().dataAlasanCuti;
      }

      if (selectAlasanCuti.isNotEmpty) {
        final selectedValue = await showSearch<Datum?>(
          context: context,
          delegate: AlasanCutiSearchDelegate(
            alasanCutiData: selectAlasanCuti,
            filteredData: selectAlasanCuti,
          ),
        );

        if (selectedValue != null) {
          widget.valueAlasanController.text =
              selectedValue.value?.toString() ?? '';
          widget.idAlasanController.text = selectedValue.id?.toString() ?? '';

          setState(() {
            this.selectedValue = selectedValue.value;
          });
        }
      } else {
        print("Tidak ada item dalam selectTemplateSpd");
      }
    }

    return BlocListener<AddCutiBloc, AddCutiState>(
      listener: (context, state) async {
        if (state is AddCutiLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddCutiSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).popUntil((route) => route.isFirst);
          widget.reloadDataCallback();
        } else if (state is AddCutiFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is AddCutiFailedUserExpired) {
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
        } else if (state is AddCutiFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        appBar: appBarCustomV1(
          title: "Pengajuan Cuti",
          padLeft: 8,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: BlocBuilder<AddCutiBloc, AddCutiState>(
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      FormDropDown(
                        input: selectedTipeCutiDisplay,
                        onTap: () {
                          _showTipeMenu(context);
                        },
                        idController: widget.idTipeCutiController,
                        valueController: widget.valueTipeCutiController,
                        hintText: 'Pilih Tipe Cuti',
                        labelTag: 'Label-TipeCuti',
                        formTag: 'Form-TipeCuti',
                        labelForm: 'Tipe Cuti',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Pilih Tipe Cuti';
                          }
                          return null;
                        },
                        errorTextStyle: TextStyle(fontSize: 8),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormDropDown(
                        input: selectedValue ?? "",
                        onTap: () {
                          _showAlasanMenu(context);
                        },
                        idController: widget.idAlasanController,
                        valueController: widget.valueAlasanController,
                        labelForm: 'Alasan Cuti',
                        hintText: 'Pilih Alasan Cuti',
                        labelTag: 'Label-AlasanCuti',
                        formTag: 'Form-AlasanCuti',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Pilih Alasan';
                          }
                          return null;
                        },
                        errorTextStyle: TextStyle(fontSize: 8),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Hero(
                        tag: 'Label-RowJamVisiting',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: FormTextLabel(
                                label: "Tanggal Mulai",
                                labelColor: MyColorsConst.darkColor,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: FormTextLabel(
                                label: "Tanggal Berakhir",
                                labelColor: MyColorsConst.darkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: _buildDateTextField(
                              "Masukkan Tanggal",
                              widget.dateFromController,
                              selectedDateFrom,
                              (selectedDate) {
                                setState(() {
                                  selectedDateFrom = selectedDate;
                                });
                                print("Selected Date From: $selectedDateFrom");
                              },
                              (value) {
                                if (value == null) {
                                  return 'Pilih Tanggal';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 1,
                            child: _buildDateTextField(
                              "Masukkan Tanggal",
                              widget.dateToController,
                              selectedDateTo,
                              (selectedDate) {
                                setState(() {
                                  selectedDateTo = selectedDate;
                                });
                                print("Selected Date To: $selectedDateTo");
                              },
                              (value) {
                                if (value == null) {
                                  return 'Pilih Tanggal';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormCatatanCuti(
                        input: widget.keteranganController.text,
                        onTap: () {},
                        controller: widget.keteranganController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Pilih Tipe Cuti';
                          }
                          return null;
                        },
                        errorTextStyle: TextStyle(fontSize: 8),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButtonCustomV1(
                        text: "Kirim",
                        backgroundColor: MyColorsConst.primaryColor,
                        textColor: MyColorsConst.whiteColor,
                        onPressed: state is AddCutiLoading
                            ? null
                            : () {
                                context.read<AddCutiBloc>().add(
                                      EditCutiSubmited(
                                        id: widget.cutiId ?? 1,
                                        alasan: int.parse(
                                            widget.idAlasanController.text),
                                        tipeCuti: int.parse(
                                            widget.idTipeCutiController.text),
                                        keterangan:
                                            widget.keteranganController.text,
                                        dateFrom:
                                            widget.dateFromController.text,
                                        dateTo: widget.dateToController.text,
                                      ),
                                    );
                              },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDateTextField(
    String hintText,
    TextEditingController controller,
    DateTime? selectedDate,
    Function(DateTime) onDateSelected,
    String? Function(DateTime?)? validator,
  ) {
    return InkWell(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2101),
        );

        if (pickedDate != null) {
          onDateSelected(pickedDate);
          if (controller == widget.dateFromController) {
            widget.dateFromController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedDateFrom = pickedDate;
            });
            print("Selected Date From: $selectedDateFrom");
          } else if (controller == widget.dateToController) {
            widget.dateToController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedDateTo = pickedDate;
            });
            print("Selected Date To: $selectedDateTo");
          }
        }
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate != null
                  ? DateFormat('yyyy-MM-dd').format(selectedDate)
                  : hintText,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
            // const SizedBox(width: 8),
            Icon(
              Icons.calendar_month_rounded,
              color: MyColorsConst.primaryColor,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
