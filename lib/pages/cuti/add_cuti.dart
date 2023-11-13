import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_cuti.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_tipe_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddCutiPage extends StatefulWidget {
  static const routeName = '/AddCutiPage';
  AddCutiPage({super.key});

  final TextEditingController idAlasanController = TextEditingController();
  final TextEditingController valueAlasanController = TextEditingController();

  //Controller Tipe Cuti
  final TextEditingController idTipeCutiController = TextEditingController();
  final TextEditingController valueTipeCutiController = TextEditingController();

  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController dateFromController = TextEditingController();
  final TextEditingController dateToController = TextEditingController();

  @override
  State<AddCutiPage> createState() => _AddCutiPageState();
}

class _AddCutiPageState extends State<AddCutiPage> {
  String? selectedValue;
  String? selectedTipeValue;
  String? selectedIDTipeValue;
  DateTime? selectedDate;
  DateTime? selectedDateFrom;
  DateTime? selectedDateTo;

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

    // Fungsi untuk menampilkan menu alasan cuti
    void _showAlasanMenu(BuildContext context) async {
      if (selectAlasanCuti.isEmpty) {
        // Memastikan data alasan cuti sudah diambil
        context.read<AddCutiBloc>().add(OnSelectAlasanCuti());
        selectAlasanCuti = context.read<AddCutiBloc>().dataAlasanCuti;
      }

      if (selectAlasanCuti.isNotEmpty) {
        // Tampilkan menu dan lakukan pemilihan alasan cuti
        final Datum? selectedValue = await showMenu(
          context: context,
          position: RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectAlasanCuti.map((alasan) {
            return PopupMenuItem<Datum>(
              child: Text(
                alasan.value ?? '',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              value: alasan,
            );
          }).toList(),
        );

        if (selectedValue != null) {
          widget.valueAlasanController.text = selectedValue.value?.toString() ?? '';
          widget.idAlasanController.text = selectedValue.id?.toString() ?? '';
        }
      } else {
        print("Tidak ada item dalam selectAlasanCuti");
      }
    }

    // Fungsi untuk menampilkan menu alasan cuti
    void _showTipeMenu(BuildContext context) async {
      if (selectTipeCuti.isEmpty) {
        // Memastikan data alasan cuti sudah diambil
        context.read<AddCutiBloc>().add(OnSelectTipeCuti());
        selectTipeCuti = context.read<AddCutiBloc>().dataTipeCuti;
      }

      if (selectTipeCuti.isNotEmpty) {
        // Tampilkan menu dan lakukan pemilihan alasan cuti
        final DataTipeCuti? selectedTipeValue = await showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 0, 0, 0),
          items: selectTipeCuti.map((tipe) {
            return PopupMenuItem<DataTipeCuti>(
              value: tipe,
              child: Text(
                tipe.value ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );

        if (selectedTipeValue != null) {
          selectedTipeCutiDisplay = selectedTipeValue.value ?? '';
          widget.valueTipeCutiController.text =
              selectedTipeValue.value?.toString() ?? '';
          widget.idTipeCutiController.text =
              selectedTipeValue.id?.toString() ?? '';

          setState(() {
            this.selectedTipeValue = selectedTipeValue.value;
          });
        }
      } else {
        print("Tidak ada item dalam selectAlasanCuti");
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
          Navigator.of(context).pop();
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
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    FormCuti(
                      input: selectedTipeCutiDisplay,
                      onTap: () {
                        _showTipeMenu(context);
                      },
                      idController: widget.idTipeCutiController,
                      valueController: widget.valueTipeCutiController,
                      hintText: 'Pilih Tipe Cuti',
                      labelTag: 'Label-TipeCuti',
                      formTag: 'Form-TipeCuti',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormCuti(
                      input: selectedValue ?? "",
                      onTap: () {
                        _showAlasanMenu(context);
                      },
                      idController: widget.idAlasanController,
                      valueController: widget.valueAlasanController,
                      hintText: 'Pilih Alasan Cuti',
                      labelTag: 'Label-AlasanCuti',
                      formTag: 'Form-AlasanCuti',
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
                                    AddCutiSubmited(
                                      alasan: int.parse(
                                          widget.idAlasanController.text),
                                      tipeCuti: int.parse(
                                          widget.idTipeCutiController.text),
                                      keterangan:
                                          widget.keteranganController.text,
                                      dateFrom: widget.dateFromController.text,
                                      dateTo: widget.dateToController.text,
                                    ),
                                  );
                            },
                    ),
                  ],
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
