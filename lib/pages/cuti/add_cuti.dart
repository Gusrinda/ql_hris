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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController alasanController = TextEditingController();
  final TextEditingController tipeCutiController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController dateFromController = TextEditingController();
  final TextEditingController dateToController = TextEditingController();

  @override
  State<AddCutiPage> createState() => _AddCutiPageState();
}

class _AddCutiPageState extends State<AddCutiPage> {
  final TextEditingController _controller = TextEditingController();
  String? selectedValue;
  String? selectedTipeValue;
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
          position: RelativeRect.fromLTRB(0, 100, 0, 0),
          items: selectAlasanCuti.map((alasan) {
            return PopupMenuItem(
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

        if (selectedValue != null && selectedValue is Datum) {
          widget.alasanController.text = selectedValue.value ?? '';
          setState(() {
            this.selectedValue = selectedValue.value;
          });
        }
      } else {
        print("Tidak ada item dalam selectAlasanCuti");
        // Tambahkan log atau tindakan lain sesuai kebutuhan
      }

      // Perbarui tampilan setelah pemilihan alasan cuti
      setState(() {});
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
          position: RelativeRect.fromLTRB(0, 100, 0, 0),
          items: selectTipeCuti.map((tipe) {
            return PopupMenuItem(
              child: Text(
                tipe.value ?? '',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              value: tipe,
            );
          }).toList(),
        );

        if (selectedTipeValue != null && selectedTipeValue is DataTipeCuti) {
          widget.tipeCutiController.text = selectedTipeValue.value ?? '';
          setState(() {
            this.selectedTipeValue =
                selectedTipeValue.value; // Update selectedValue
          });
        }
      } else {
        print("Tidak ada item dalam selectAlasanCuti");
        // Tambahkan log atau tindakan lain sesuai kebutuhan Anda
      }

      // Perbarui tampilan setelah pemilihan alasan cuti
      setState(() {});
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
                var selectAlasanCuti =
                    context.read<AddCutiBloc>().dataAlasanCuti;
                var selectTipeCuti = context.read<AddCutiBloc>().dataTipeCuti;

                // Mendapatkan list alasan cuti dari dataBloc
                // List<String> alasanCutiList =
                //     selectAlasanCuti.map((data) => data.value ?? "").toList();

                debugPrint("Alasan Cuti ${selectAlasanCuti}");
                debugPrint("Alasan Cuti ${selectTipeCuti}");
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    FormTipeCuti(
                      input: selectedTipeValue ?? "",
                      onTap: () {
                        _showTipeMenu(context);
                      },
                      controller: widget.tipeCutiController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormTipeAlasan(
                      input: selectedValue ?? "",
                      onTap: () {
                        _showAlasanMenu(context);
                      },
                      controller: widget.alasanController,
                      // alasanList: selectAlasanCuti,
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
                                      alasan: widget.alasanController.text,
                                      tipeCuti: widget.tipeCutiController.text,
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
