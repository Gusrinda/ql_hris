import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_selector.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_tipe_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

class AddCutiPage extends StatefulWidget {
  static const routeName = '/AddCutiPage';
  AddCutiPage({super.key, required this.reloadDataCallback});
  final VoidCallback reloadDataCallback;

  final TextEditingController? idAlasanController = TextEditingController();
  final TextEditingController valueAlasanController = TextEditingController();

  //Controller Tipe Cuti
  final TextEditingController idTipeCutiController = TextEditingController();
  final TextEditingController valueTipeCutiController = TextEditingController();

  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController dateFromController = TextEditingController();
  final TextEditingController dateToController = TextEditingController();
  final TextEditingController? timeFromController = TextEditingController();
  final TextEditingController? timeToController = TextEditingController();

  @override
  State<AddCutiPage> createState() => _AddCutiPageState();
}

class _AddCutiPageState extends State<AddCutiPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedValue;
  String? selectedTipeValue;
  DateTime? selectedDate;
  DateTime? selectedDateFrom;
  DateTime? selectedDateTo;
  TimeOfDay? selectedTimeFrom;
  TimeOfDay? selectedTimeTo;
  int weekdaysCount = 0;
  bool dateFromError = false;
  bool dateToError = false;
  final _picker = ImagePicker();
  File? uploadedFile;
  String fileName = "";
  String fileUrl = "";

  Future<XFile?> captureFile(BuildContext context) async {
    try {
      final pickFile = await _picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front,
      );

      if (pickFile == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal Mengambil File!'),
            backgroundColor: MyColorsConst.redColor,
          ),
        );
        return null;
      }
      return pickFile;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
      return null;
    }
  }

  Future<FilePickerResult?> uploadFile(BuildContext context) async {
    try {
      FilePickerResult? pickedFileNonCamera =
          await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpeg', 'jpg', 'png'],
      );

      if (pickedFileNonCamera != null) {
        PlatformFile file = pickedFileNonCamera.files.first;
        setState(() {
          uploadedFile = File(file.path ?? '');
          fileName = file.name;
          fileUrl = file.path ?? '';
        });
        print('Path: ${file.path}');
        print('File Name: $fileName');
        print('Size: ${file.size}');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 2),
            content: Text('Gagal Mengambil File!'),
            backgroundColor: MyColorsConst.redColor,
          ),
        );
        return null;
      }
      return pickedFileNonCamera;
    } on PlatformException catch (e) {
      print('Failed to upload file: $e');
      return null;
    }
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
    var size = MediaQuery.of(context).size;
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
            if (this.selectedTipeValue == "P24") {
              selectedTimeFrom = TimeOfDay(hour: 8, minute: 0);
              selectedTimeTo = TimeOfDay(hour: 8, minute: 0);
              selectedDateFrom = DateTime.now();
              widget.dateFromController.text =
                  DateFormat('yyyy-MM-dd').format(DateTime.now());
              selectedDateTo = DateTime.now();
              widget.dateToController.text =
                  DateFormat('yyyy-MM-dd').format(DateTime.now());
            }
            print(selectedTipeValue.value);
            print("Selected ID Tipe Cuti: ${selectedTipeValue.id}");
          });
        }
      } else {
        print("Tidak ada item dalam selectTipeCuti");
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
          widget.idAlasanController!.text = selectedValue.id?.toString() ?? '';

          setState(() {
            this.selectedValue = selectedValue.value;
            print(selectedValue.value);
            print("Selected ID Alasan Cuti: ${selectedValue.id}");
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
          Navigator.pop(context);
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
          Navigator.of(context).pop();
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
        // appBar: appBarCustomV1(
        //   title: "Pengajuan Cuti",
        //   padLeft: 8,
        // ),
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
                      width: size.width * 1 / 4.8,
                    ),
                    Expanded(
                      child: Text(
                        "Pengajuan Cuti",
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
                    child: BlocBuilder<AddCutiBloc, AddCutiState>(
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
                                        FormDropDownData(
                                          input: selectedTipeCutiDisplay,
                                          onTap: () {
                                            _showTipeMenu(context);
                                          },
                                          idController:
                                              widget.idTipeCutiController,
                                          valueController:
                                              widget.valueTipeCutiController,
                                          hintText: 'Pilih Tipe Cuti',
                                          labelTag: 'Label-TipeCuti',
                                          formTag: 'Form-TipeCuti',
                                          labelForm: 'Tipe Cuti',
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Pilih Tipe Cuti';
                                            }
                                            return null;
                                          },
                                          errorTextStyle:
                                              GoogleFonts.poppins(fontSize: 8),
                                        ),
                                        if (selectedTipeValue != "P24") ...{
                                          FormDropDownData(
                                            input: selectedValue ?? "",
                                            onTap: () {
                                              _showAlasanMenu(context);
                                            },
                                            idController:
                                                widget.idAlasanController!,
                                            valueController:
                                                widget.valueAlasanController,
                                            labelForm: 'Alasan Cuti',
                                            hintText: 'Pilih Alasan Cuti',
                                            labelTag: 'Label-AlasanCuti',
                                            formTag: 'Form-AlasanCuti',
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Pilih Alasan Cuti';
                                              }
                                              return null;
                                            },
                                            errorTextStyle: GoogleFonts.poppins(
                                                fontSize: 10.sp),
                                          ),
                                        },
                                        Hero(
                                          tag: 'Label-RowDateVisiting',
                                          flightShuttleBuilder:
                                              flightShuttleBuilder,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    FormTextLabel(
                                                      label: selectedTipeValue !=
                                                              "P24"
                                                          ? "Tanggal Mulai"
                                                          : "Tanggal Cuti P24",
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
                                              if (selectedTipeValue !=
                                                  "P24") ...{
                                                SizedBox(
                                                  width: 20.sp,
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    children: [
                                                      const FormTextLabel(
                                                        label:
                                                            "Tanggal Berakhir",
                                                        labelColor:
                                                            MyColorsConst
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
                                              }
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
                                                  "Pilih Tanggal",
                                                  widget.dateFromController,
                                                  selectedDateFrom,
                                                  (selectedDate) {
                                                setState(() {
                                                  selectedDateFrom =
                                                      selectedDate;
                                                });
                                                print(
                                                    "Selected Date From: $selectedDateFrom");
                                              }, dateFromError),
                                            ),
                                            if (selectedTipeValue != "P24") ...{
                                              SizedBox(
                                                width: 20.sp,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: _buildDateTextField(
                                                  "Pilih Tanggal",
                                                  widget.dateToController,
                                                  selectedDateTo,
                                                  (selectedDate) {
                                                    setState(() {
                                                      selectedDateTo =
                                                          selectedDate;
                                                    });
                                                    print(
                                                        "Selected Date To: $selectedDateTo");
                                                  },
                                                  dateToError,
                                                ),
                                              ),
                                            }
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.sp,
                                        ),
                                        if (selectedTipeValue == "P24") ...{
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
                                                        labelColor:
                                                            MyColorsConst
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
                                                        labelColor:
                                                            MyColorsConst
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
                                                child: _buildCustomTimeDropdown(
                                                  "Jam : Menit",
                                                  widget.timeFromController!,
                                                  selectedTimeFrom,
                                                  (TimeOfDay time) {
                                                    setState(() {
                                                      selectedTimeFrom = time;
                                                    });
                                                  },
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.sp,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: _buildCustomTimeDropdown(
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
                                        },
                                        if (selectedTipeValue == "P24") ...{
                                          Text.rich(
                                            TextSpan(
                                              text: 'Cuti P24 Selama : ',
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
                                        } else ...{
                                          Row(
                                            children: [
                                              Text.rich(
                                                TextSpan(
                                                  text: 'Cuti Selama : ',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 13.sp,
                                                    color:
                                                        MyColorsConst.darkColor,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: weekdaysCount
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 18.sp,
                                                        color:
                                                            Colors.red.shade600,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' hari',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 13.sp,
                                                        color:
                                                            Colors.red.shade600,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Text(
                                                'Surat Dokter',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color:
                                                      MyColorsConst.darkColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: OutlinedButton.icon(
                                                  onPressed: () async {
                                                    final file =
                                                        await uploadFile(
                                                            context);

                                                    if (file != null) {
                                                      setState(() {
                                                        uploadedFile = file
                                                            .files
                                                            .first as File?;
                                                      });

                                                      // Extract file name from the path
                                                      fileName = uploadedFile !=
                                                              null
                                                          ? uploadedFile!.path
                                                              .split('/')
                                                              .last
                                                          : "";
                                                      print(
                                                          'Uploaded file: $fileName');
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 15),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    foregroundColor:
                                                        MyColorsConst
                                                            .primaryColor,
                                                    side: BorderSide(
                                                      width: 1.5,
                                                      color: MyColorsConst
                                                          .formBorderColor,
                                                    ),
                                                  ),
                                                  icon: Icon(
                                                    CupertinoIcons.doc,
                                                    size: 20.sp,
                                                    color: MyColorsConst
                                                        .lightDarkColor,
                                                  ),
                                                  label: Text(
                                                    'Upload',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 13.sp,
                                                      color: MyColorsConst
                                                          .lightDarkColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Expanded(
                                                child: OutlinedButton.icon(
                                                  onPressed: () async {
                                                    final file =
                                                        await captureFile(
                                                            context);

                                                    if (file != null) {
                                                      setState(() {
                                                        uploadedFile =
                                                            File(file.path);
                                                      });

                                                      fileName = uploadedFile!
                                                          .path
                                                          .split('/')
                                                          .last;
                                                      print(
                                                          'Captured file: $fileName');
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 15),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    foregroundColor:
                                                        MyColorsConst
                                                            .primaryColor,
                                                    side: BorderSide(
                                                      width: 1.5,
                                                      color: MyColorsConst
                                                          .formBorderColor,
                                                    ),
                                                  ),
                                                  icon: Icon(
                                                    CupertinoIcons.camera,
                                                    size: 20.sp,
                                                    color: MyColorsConst
                                                        .lightDarkColor,
                                                  ),
                                                  label: Text(
                                                    'Kamera',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 13.sp,
                                                      color: MyColorsConst
                                                          .lightDarkColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (uploadedFile != null)
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 7.sp),
                                                SizedBox(
                                                  width: size.width,
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Nama File: ',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 12.sp,
                                                            color: MyColorsConst
                                                                .lightDarkColor,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' $fileName',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 12.sp,
                                                            color: MyColorsConst
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        },
                                        SizedBox(
                                          height: 20.sp,
                                        ),
                                        FormCatatanData(
                                          hintText: 'Keterangan',
                                          labelForm: 'Keterangan Cuti',
                                          labelTag: 'Label-KeteranganCuti',
                                          formTag: 'Form-KeteranganCuti',
                                          input:
                                              widget.keteranganController.text,
                                          onTap: () {},
                                          controller:
                                              widget.keteranganController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Tuliskan Keterangan Cuti';
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
                              text: "Kirim Pengajuan",
                              height: 50,
                              backgroundColor:
                                  MyColorsConst.primaryColor.withOpacity(0.2),
                              textColor: MyColorsConst.primaryColor,
                              onPressed: state is AddCutiLoading
                                  ? null
                                  : () {
                                      final FormState? formState =
                                          _formKey.currentState;

                                      setState(() {
                                        if (selectedDateFrom == null) {
                                          dateFromError = true;
                                        } else {
                                          dateFromError = false;
                                        }

                                        if (selectedDateTo == null) {
                                          dateToError = true;
                                        } else {
                                          dateToError = false;
                                        }
                                      });

                                      if (formState != null &&
                                          formState.validate()) {
                                        if (!dateFromError && !dateToError) {
                                          if (selectedTipeValue != "P24") {
                                            setState(() {
                                              selectedTimeFrom = null;
                                              selectedTimeTo = null;
                                            });
                                          }

                                          print(dateFromError);
                                          // Form is valid, proceed with submission
                                          widget.timeFromController?.text =
                                              selectedTimeFrom
                                                      ?.format(context) ??
                                                  "";
                                          widget.timeToController?.text =
                                              selectedTimeTo?.format(context) ??
                                                  "";

                                          showDialog(
                                            context: context,
                                            builder: (_) => DialogCustom(
                                              state: DialogCustomItem.confirm,
                                              message:
                                                  "Anda Yakin Mengirim Pengajuan Cuti?",
                                              durationInSec: 7,
                                              onContinue: () => context
                                                  .read<AddCutiBloc>()
                                                  .add(
                                                    AddCutiSubmited(
                                                      alasan: widget
                                                                  .idAlasanController!
                                                                  .text !=
                                                              null
                                                          ? int.tryParse(widget
                                                              .idAlasanController!
                                                              .text)
                                                          : null,
                                                      tipeCuti: int.parse(widget
                                                          .idTipeCutiController
                                                          .text),
                                                      keterangan: widget
                                                          .keteranganController
                                                          .text,
                                                      suratDokter: uploadedFile !=
                                                                  null &&
                                                              uploadedFile!.path
                                                                  .isNotEmpty
                                                          ? File(uploadedFile!
                                                              .path)
                                                          : null,
                                                      dateFrom: widget
                                                          .dateFromController
                                                          .text,
                                                      dateTo: selectedTipeValue !=
                                                              "P24"
                                                          ? widget
                                                              .dateToController
                                                              .text
                                                          : widget
                                                              .dateFromController
                                                              .text,
                                                      timeFrom: widget
                                                              .timeFromController
                                                              ?.text ??
                                                          "",
                                                      timeTo: widget
                                                              .timeToController
                                                              ?.text ??
                                                          "",
                                                    ),
                                                  ),
                                            ),
                                          );
                                        }
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

  Future<int> calculateWeekdaysFromAPI(String dateFrom, String dateTo) async {
    const apiUrl = '${MyGeneralConst.API_URL}/operation/t_cuti/hitungHari';

    final Map<String, String> postData = {
      "date_from": "$dateFrom",
      "date_to": "$dateTo",
    };

    print("URL API: $apiUrl");
    print("BODY API: $postData");

    try {
      final userToken = await GeneralSharedPreferences.getUserToken();
      if (userToken is ServicesSuccess) {
        // print("${userToken.response["token"]}");
        final response = await http.post(
          Uri.parse(apiUrl),
          body: postData,
          headers: {
            'Authorization': 'Bearer ${userToken.response["token"]}',
            'Source': 'mobile',
          },
        );

        if (response.statusCode == 200) {
          print('RESPONSE BODY API: ${response.body}');
          return int.parse(response.body);
        } else {
          // Print the API response for debugging purposes.
          print('API Response: ${response.body}');

          // Handle error if needed.
          print('Failed to fetch data: ${response.statusCode}');
          return 0;
        }
      } else {
        // Handle error if there is an issue with getting the user token.
        print('Failed to get user token.');
        return 0;
      }
    } catch (e) {
      // Print the exception for debugging purposes.
      print('Exception occurred: $e');
      throw Exception('Failed to fetch data');
    }
  }

  void _calculateWeekdaysFromAPI() async {
    if (selectedDateFrom != null && selectedDateTo != null) {
      try {
        final dateFrom = selectedDateFrom!.toLocal().toString().split(' ')[0];
        final dateTo = selectedDateTo!.toLocal().toString().split(' ')[0];

        print("INI Data POST Calculate: $dateFrom & $dateTo");
        final newWeekdaysCount =
            await calculateWeekdaysFromAPI(dateFrom, dateTo);

        // Update the weekdaysCount variable with the new value
        setState(() {
          weekdaysCount = newWeekdaysCount;
        });

        print("Jumlah hari kerja: $weekdaysCount");
      } catch (e) {
        print("Gagal mengambil data dari API: $e");
      }
    } else {
      print("Pilih tanggal mulai dan tanggal berakhir terlebih dahulu.");
    }
  }

  // int calculateWeekdays(DateTime startDate, DateTime endDate) {
  //   int weekdaysCount = 0;
  //   DateTime currentDate = startDate;

  //   while (currentDate.isBefore(endDate) ||
  //       currentDate.isAtSameMomentAs(endDate)) {
  //     if (currentDate.weekday != 7) {
  //       weekdaysCount++;
  //     }

  //     currentDate = currentDate.add(Duration(days: 1));
  //   }

  //   return weekdaysCount;
  // }

  // void _calculateWeekdays() {
  //   if (selectedDateFrom != null && selectedDateTo != null) {
  //     weekdaysCount = calculateWeekdays(selectedDateFrom!, selectedDateTo!);
  //     print("Jumlah hari kerja: $weekdaysCount");
  //   } else {
  //     print("Pilih tanggal mulai dan tanggal berakhir terlebih dahulu.");
  //   }
  // }

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
    bool isError,
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
            _calculateWeekdaysFromAPI(); // Menggunakan fungsi baru untuk mengambil data dari API
          } else if (controller == widget.dateToController) {
            widget.dateToController.text =
                DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              selectedDateTo = pickedDate;
            });
            print("Selected Date To: $selectedDateTo");
            _calculateWeekdaysFromAPI(); // Menggunakan fungsi baru untuk mengambil data dari API
          }
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: isError ? Colors.red.shade700 : const Color(0xFFDDDDDD),
                width: 1.5,
              ),
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
                    fontSize: selectedDate != null ? 13.sp : 12.sp,
                    fontWeight: selectedDate != null
                        ? FontWeight.w500
                        : FontWeight.w400,
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
          if (isError)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 20),
              child: Text(
                'Pilih Tanggal',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 10.sp,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCustomTimeDropdown(
    String hintText,
    TextEditingController controller,
    TimeOfDay? selectedTime,
    Function(TimeOfDay) onTimeSelected,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFDDDDDD)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButton<int>(
            style: GoogleFonts.poppins(
                color: MyColorsConst.darkColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
            underline: Container(),
            icon: const Icon(Icons.arrow_drop_down_rounded),
            value: selectedTime?.hour ?? 8, // Start from 08
            items: List.generate(10, (index) => index + 8)
                .map((hour) => DropdownMenuItem<int>(
                      value: hour,
                      child: Text(hour.toString().padLeft(2, '0')),
                    ))
                .toList(),
            onChanged: (int? newValue) {
              if (newValue != null) {
                onTimeSelected(TimeOfDay(
                    hour: newValue, minute: selectedTime?.minute ?? 0));
              }
            },
          ),
          const Text(':'),
          DropdownButton<int>(
            style: GoogleFonts.poppins(
                color: MyColorsConst.darkColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
            underline: Container(),
            icon: Icon(Icons.arrow_drop_down_rounded),
            value: selectedTime?.minute ?? 0,
            items: List.generate(60, (index) => index)
                .map((minute) => DropdownMenuItem<int>(
                      value: minute,
                      child: Text(minute.toString().padLeft(2, '0')),
                    ))
                .toList(),
            onChanged: (int? newValue) {
              if (newValue != null) {
                onTimeSelected(
                    TimeOfDay(hour: selectedTime?.hour ?? 8, minute: newValue));
              }
            },
          ),
        ],
      ),
    );
  }

  String _formatTime(TimeOfDay timeOfDay) {
    final DateTime dateTime =
        DateTime(2023, 1, 1, timeOfDay.hour, timeOfDay.minute);
    return DateFormat.Hm().format(dateTime);
  }
}
