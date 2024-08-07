import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/pic_search.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/selector/general_selector.dart';
import 'package:sj_presensi_mobile/pages/lembur/add_lembur/add_lembur_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditLemburPage extends StatefulWidget {
  static const routeName = '/EditLemburPage';
  EditLemburPage({
    super.key,
    required this.reloadDataCallback,
    required this.lemburID,
    this.picId,
    this.picValue,
    this.tipeLemburId,
    this.tipeLemburValue,
    this.alasanId,
    this.alasanValue,
    this.tanggal,
    this.jamMulai,
    this.jamSelesai,
    this.keterangan,
  });
  final VoidCallback reloadDataCallback;
  final int lemburID;
  final int? picId;
  final String? picValue;
  final int? tipeLemburId;
  final String? tipeLemburValue;
  final int? alasanId;
  final String? alasanValue;
  final String? tanggal;
  final String? jamMulai;
  final String? jamSelesai;
  final String? keterangan;

  final TextEditingController idAlasanController = TextEditingController();
  final TextEditingController valueAlasanController = TextEditingController();

  //Controller Tipe Lembur
  final TextEditingController idTipeLemburController = TextEditingController();
  final TextEditingController valueTipeLemburController =
      TextEditingController();

  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController? timeFromController = TextEditingController();
  final TextEditingController? timeToController = TextEditingController();
  // Pic Controller
  final TextEditingController? idPicController = TextEditingController();
  final TextEditingController? valuePicController = TextEditingController();

  @override
  State<EditLemburPage> createState() => _EditLemburPageState();
}

class _EditLemburPageState extends State<EditLemburPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    widget.idAlasanController.text = widget.alasanId.toString();
    widget.valueAlasanController.text = widget.alasanValue ?? '';
    widget.idTipeLemburController.text = widget.tipeLemburId.toString();
    widget.valueTipeLemburController.text = widget.tipeLemburValue ?? '';
    widget.keteranganController.text = widget.keterangan ?? '';
    widget.dateController.text = convertDateFormat(widget.tanggal) ?? '';
    selectedDateLembur = parseDateString(widget.tanggal);
    widget.timeFromController?.text = widget.jamMulai ?? '';
    widget.timeToController?.text = widget.jamSelesai ?? '';
    // Konversi String ke TimeOfDay
    selectedTimeFrom = widget.jamMulai != null
        ? TimeOfDay(
            hour: int.parse(widget.jamMulai!.split(":")[0]),
            minute: int.parse(widget.jamMulai!.split(":")[1]),
          )
        : null;

    selectedTimeTo = widget.jamSelesai != null
        ? TimeOfDay(
            hour: int.parse(widget.jamSelesai!.split(":")[0]),
            minute: int.parse(widget.jamSelesai!.split(":")[1]),
          )
        : null;

    widget.idPicController?.text = widget.picId.toString();
    widget.valuePicController?.text = widget.picValue ?? '';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final lemburBloc = context.read<AddLemburBloc>();
      lemburBloc.add(OnSelectPic());
      lemburBloc.add(OnSelectTipeLembur());
      lemburBloc.add(OnSelectAlasanLembur());
    });
  }

  String? convertDateFormat(String? originalDate) {
    if (originalDate != null && originalDate.isNotEmpty) {
      try {
        final parsedDate = DateFormat('dd/MM/yyyy').parse(originalDate);
        return DateFormat('yyyy-MM-dd').format(parsedDate);
      } catch (e) {
        print('Error converting date format: $e');
      }
    }
    return null;
  }

  DateTime? parseDateString(String? date) {
    try {
      if (date != null) {
        final List<String> dateParts = date.split('/');
        final day = int.parse(dateParts[0]);
        final month = int.parse(dateParts[1]);
        final year = int.parse(dateParts[2]);
        return DateTime(year, month, day);
      }
    } catch (e) {
      print("Error parsing date string: $e");
    }
    return null;
  }

  String? selectedValue;
  String? selectedTipeValue;
  String? selectedIDTipeValue;
  DateTime? selectedDateLembur;
  TimeOfDay? selectedTimeFrom;
  TimeOfDay? selectedTimeTo;
  String? selectedPic;
  int weekdaysCount = 0;

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
    var size = MediaQuery.of(context).size;
    var selectAlasanLembur = context.read<AddLemburBloc>().dataAlasanLembur;
    var selectTipeLembur = context.read<AddLemburBloc>().dataTipeLembur;
    var dataPic = context.read<AddLemburBloc>().dataPic;
    String selectedTipeLemburDisplay = "";

    void _showTipeMenu(BuildContext context) async {
      if (selectTipeLembur!.isEmpty) {
        context.read<AddLemburBloc>().add(OnSelectTipeLembur());
        selectTipeLembur = context.read<AddLemburBloc>().dataTipeLembur;
      }

      if (selectTipeLembur!.isNotEmpty) {
        final selectedTipeValue = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: selectTipeLembur!,
            filteredData: selectTipeLembur!,
          ),
        );

        if (selectedTipeValue != null) {
          widget.valueTipeLemburController.text =
              selectedTipeValue.value?.toString() ?? '';
          widget.idTipeLemburController.text =
              selectedTipeValue.id?.toString() ?? '';

          setState(() {
            this.selectedTipeValue = selectedTipeValue.value;
            print(selectedTipeValue.value);
            print("Selected ID Tipe Lembur: ${selectedTipeValue.id}");
          });
        }
      } else {
        print("Tidak ada item dalam selectTipeLembur");
      }
    }

    void _showAlasanMenu(BuildContext context) async {
      if (selectAlasanLembur!.isEmpty) {
        context.read<AddLemburBloc>().add(OnSelectAlasanLembur());
        selectAlasanLembur = context.read<AddLemburBloc>().dataAlasanLembur;
      }

      if (selectAlasanLembur!.isNotEmpty) {
        final selectedValue = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: selectAlasanLembur!,
            filteredData: selectAlasanLembur!,
          ),
        );

        if (selectedValue != null) {
          widget.valueAlasanController.text =
              selectedValue.value?.toString() ?? '';
          widget.idAlasanController.text = selectedValue.id?.toString() ?? '';

          setState(() {
            this.selectedValue = selectedValue.value;
            print(selectedValue.value);
            print("Selected ID Alasan Lembur: ${selectedValue.id}");
          });
        }
      } else {
        print("Tidak ada item dalam selectAlasanLembur");
      }
    }

    void _showPic(BuildContext context) async {
      if (dataPic.isEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.read<AddLemburBloc>().add(OnSelectPic());
        });
        dataPic = context.read<AddLemburBloc>().dataPic;
      }

      if (dataPic.isNotEmpty) {
        final selectedPic = await showSearch<DataPic?>(
          context: context,
          delegate: PicSearchDelegate(
            dataPic: dataPic,
            filteredData: dataPic,
          ),
        );

        if (selectedPic != null) {
          widget.idPicController?.text = selectedPic.id?.toString() ?? '';
          widget.valuePicController?.text =
              selectedPic.mKaryNamaLengkap?.toString() ?? '';

          setState(() {
            this.selectedPic = selectedPic.mKaryNamaLengkap;
            print(selectedPic.mKaryNamaLengkap);
            print("Selected ID Kota: ${selectedPic.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    return BlocListener<AddLemburBloc, AddLemburState>(
      listener: (context, state) async {
        if (state is AddLemburLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is EditLemburSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
          widget.reloadDataCallback();
        } else if (state is EditLemburFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is AddLemburFailedUserExpired) {
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
        } else if (state is AddLemburFailed) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
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
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.5 / 4.5,
                    ),
                    Expanded(
                      child: Text(
                        "Revisi Pengajuan Lembur",
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
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
                        horizontal: 20, vertical: 20),
                    child: BlocBuilder<AddLemburBloc, AddLemburState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            Expanded(
                              child: Form(
                                key: _formKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: ListView(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FormDropDownDataWithNote(
                                          note:
                                              "   Isi data PIC jika lembur ditujukan untuk bawahan.",
                                          showRedStar: false,
                                          input: selectedPic ?? '',
                                          onTap: () {
                                            _showPic(context);
                                          },
                                          idController: widget.idPicController!,
                                          valueController:
                                              widget.valuePicController!,
                                          labelForm: 'PIC',
                                          hintText: 'Pilih Pic',
                                          labelTag: 'Label-Pic',
                                          formTag: 'Form-Pic',
                                          validator: (value) {
                                            // if (value == null ||
                                            //     value.isEmpty) {
                                            //   return 'Pilih Pic';
                                            // }
                                            return null;
                                          },
                                          errorTextStyle:
                                              GoogleFonts.poppins(fontSize: 8),
                                        ),
                                        FormDropDownData(
                                          input: selectedTipeLemburDisplay,
                                          onTap: () {
                                            _showTipeMenu(context);
                                          },
                                          idController:
                                              widget.idTipeLemburController,
                                          valueController:
                                              widget.valueTipeLemburController,
                                          hintText: 'Pilih Tipe Lembur',
                                          labelTag: 'Label-TipeLembur',
                                          formTag: 'Form-TipeLembur',
                                          labelForm: 'Tipe Lembur',
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Pilih Tipe Lembur';
                                            }
                                            return null;
                                          },
                                          errorTextStyle:
                                              GoogleFonts.poppins(fontSize: 8),
                                        ),
                                        FormDropDownData(
                                          input: selectedValue ?? "",
                                          onTap: () {
                                            _showAlasanMenu(context);
                                          },
                                          idController:
                                              widget.idAlasanController,
                                          valueController:
                                              widget.valueAlasanController,
                                          labelForm: 'Alasan Lembur',
                                          hintText: 'Pilih Alasan Lembur',
                                          labelTag: 'Label-AlasanLembur',
                                          formTag: 'Form-AlasanLembur',
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Pilih Alasan Lembur';
                                            }
                                            return null;
                                          },
                                          errorTextStyle: GoogleFonts.poppins(
                                              fontSize: 10.sp),
                                        ),
                                        Hero(
                                          tag: 'Label-RowDateVisiting',
                                          flightShuttleBuilder:
                                              flightShuttleBuilder,
                                          child: Row(
                                            children: [
                                              const FormTextLabel(
                                                label: "Tanggal Lembur",
                                                labelColor:
                                                    MyColorsConst.darkColor,
                                              ),
                                              SizedBox(width: 2.sp),
                                              Text(
                                                '*',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        _buildDateTextField(
                                          "Masukkan Tanggal",
                                          widget.dateController,
                                          selectedDateLembur,
                                          (selectedDate) {
                                            setState(() {
                                              selectedDate = selectedDate;
                                            });
                                            print(
                                                "Selected Date From: $selectedDate");
                                          },
                                          (value) {
                                            if (value == null) {
                                              return 'Pilih Tanggal';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.sp,
                                        ),
                                        Hero(
                                          tag: 'Label-RowJamVisiting',
                                          flightShuttleBuilder:
                                              flightShuttleBuilder,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    FormTextLabel(
                                                      label: "Jam Mulai",
                                                      labelColor: MyColorsConst
                                                          .darkColor,
                                                    ),
                                                    SizedBox(width: 2.sp),
                                                    Text(
                                                      '*',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.red),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.sp,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    const FormTextLabel(
                                                      label: "Jam Berakhir",
                                                      labelColor: MyColorsConst
                                                          .darkColor,
                                                    ),
                                                    SizedBox(width: 2.sp),
                                                    Text(
                                                      '*',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.red),
                                                    ),
                                                  ],
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
                                              child: _buildTimeTextField(
                                                "Jam : Menit",
                                                widget.timeFromController!,
                                                selectedTimeFrom,
                                                (TimeOfDay time) {
                                                  setState(() {
                                                    selectedTimeFrom = time;
                                                  });
                                                  // Lakukan operasi lain jika diperlukan ketika waktu dipilih
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20.sp,
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: _buildTimeTextField(
                                                "Jam : Menit",
                                                widget.timeToController!,
                                                selectedTimeTo,
                                                (TimeOfDay time) {
                                                  setState(() {
                                                    selectedTimeTo = time;
                                                  });
                                                  // Lakukan operasi lain jika diperlukan ketika waktu dipilih
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.sp,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Lembur selama : ',
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.sp,
                                              color: MyColorsConst.darkColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: _calculateMinutes()
                                                    .toString(),
                                                style: GoogleFonts.poppins(
                                                  fontSize: 18.sp,
                                                  color: Colors.red.shade600,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' Menit',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Colors.red.shade600,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.sp,
                                        ),
                                        FormCatatanData(
                                          hintText: 'Keterangan',
                                          labelForm: 'Keterangan Lembur',
                                          labelTag: 'Label-KeteranganLembur',
                                          formTag: 'Form-KeteranganLembur',
                                          input:
                                              widget.keteranganController.text,
                                          onTap: () {},
                                          controller:
                                              widget.keteranganController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Tuliskan Keterangan';
                                            }
                                            return null;
                                          },
                                          errorTextStyle:
                                              GoogleFonts.poppins(fontSize: 8),
                                        ),
                                        SizedBox(
                                          height: 20.sp,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TextButtonCustomV1(
                              text: "Kirim",
                              height: 50,
                              backgroundColor:
                                  Colors.orange.shade700.withOpacity(0.2),
                              textColor: Colors.orange.shade700,
                              onPressed: state is AddLemburLoading
                                  ? null
                                  : () {
                                      if (_formKey.currentState!.validate()) {
                                        showDialog(
                                          context: context,
                                          builder: (_) => DialogCustom(
                                            state: DialogCustomItem.confirm,
                                            message:
                                                "Pastikan Data Sudah Benar Sebelum Mengirim Pengajuan Lembur?",
                                            durationInSec: 7,
                                            onContinue: () => context
                                                .read<AddLemburBloc>()
                                                .add(
                                                  OnEditLembur(
                                                      lemburID: widget.lemburID,
                                                      picID: widget.idPicController?.value.text != null
                                                          ? int.tryParse(widget
                                                              .idPicController!
                                                              .value
                                                              .text)
                                                          : null,
                                                      alasanLemburID: int.parse(widget
                                                          .idAlasanController
                                                          .value
                                                          .text),
                                                      tipeLemburID: int.parse(widget
                                                          .idTipeLemburController
                                                          .value
                                                          .text),
                                                      keterangan: widget
                                                          .keteranganController
                                                          .value
                                                          .text,
                                                      dateLembur: widget
                                                          .dateController
                                                          .value
                                                          .text,
                                                      timeFrom: widget
                                                              .timeFromController
                                                              ?.value
                                                              .text ??
                                                          "00:00",
                                                      timeTo: widget.timeToController?.value.text ?? "00:00"),
                                                ),
                                          ),
                                        );
                                      }
                                    },
                            ),
                          ],
                        );
                      },
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

  int _calculateMinutes() {
    if (selectedTimeFrom != null && selectedTimeTo != null) {
      int minutesDifference = calculateMinutesDifference(
          selectedTimeFrom as TimeOfDay, selectedTimeTo! as TimeOfDay);
      print("Selisih waktu dalam menit: $minutesDifference menit");
      return minutesDifference;
    } else {
      print("Pilih waktu mulai dan waktu berakhir terlebih dahulu.");
      return 0; // or any default value you prefer
    }
  }

  int calculateMinutesDifference(TimeOfDay from, TimeOfDay to) {
    int fromMinutes = from.hour * 60 + from.minute;
    int toMinutes = to.hour * 60 + to.minute;

    return toMinutes - fromMinutes;
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
          lastDate: DateTime(2500),
        );

        if (pickedDate != null) {
          onDateSelected(pickedDate);
          widget.dateController.text =
              DateFormat('yyyy-MM-dd').format(pickedDate);
          setState(() {
            selectedDateLembur = pickedDate;
          });
          print("Selected Date From: $selectedDateLembur");
        }
      },
      child: Container(
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate != null
                  ? DateFormat('yyyy-MM-dd').format(selectedDate)
                  : hintText,
              style: GoogleFonts.poppins(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: selectedDate != null
                    ? MyColorsConst.darkColor
                    : MyColorsConst.disableColor,
              ),
            ),
            Icon(
              CupertinoIcons.calendar_today,
              color: MyColorsConst.primaryColor,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeTextField(
    String hintText,
    TextEditingController controller,
    TimeOfDay? selectedTime,
    Function(TimeOfDay) onTimeSelected,
  ) {
    return GestureDetector(
      onTap: () async {
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: selectedTime ?? TimeOfDay.now(),
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          },
        );

        if (pickedTime != null) {
          onTimeSelected(pickedTime);

          String formattedHour = pickedTime.hour.toString().padLeft(2, '0');
          String formattedMinute = pickedTime.minute.toString().padLeft(2, '0');
          String formattedTime = '$formattedHour:$formattedMinute';

          controller.text = formattedTime;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedTime != null ? _formatTime(selectedTime) : hintText,
              style: TextStyle(
                fontSize: selectedTime != null ? 13.sp : 10.sp,
                fontWeight:
                    selectedTime != null ? FontWeight.w500 : FontWeight.w500,
                color: selectedTime != null
                    ? MyColorsConst.darkColor
                    : MyColorsConst.disableColor,
              ),
            ),
            Icon(
              CupertinoIcons.clock_fill,
              color: MyColorsConst.primaryColor,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(TimeOfDay timeOfDay) {
    final DateTime dateTime =
        DateTime(2023, 1, 1, timeOfDay.hour, timeOfDay.minute);
    return DateFormat.Hm().format(dateTime);
  }
}
