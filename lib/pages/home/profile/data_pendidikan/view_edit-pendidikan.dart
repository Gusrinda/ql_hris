import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/add_pendidikan.bloc/add_data_pendidikan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/tingkat_selector.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart';

class ViewEditPendidikanPage extends StatefulWidget {
  static const routeName = '/ViewEditPendidikanPage';
  ViewEditPendidikanPage({
    super.key,
    this.idTingkat,
    this.valueTingkat,
    this.namaSekolah,
    this.idKota,
    this.valueKota,
    this.jurusan,
    this.tahunMasuk,
    this.tahunLulus,
    this.nilai,
    this.pendTerakhir,
    this.ijazahNo,
    this.ijazah,
    this.catatan,
    required this.reloadDataCallback,
    required this.pendidikanId,
  });
  final int? idTingkat;
  final String? valueTingkat;
  final String? namaSekolah;
  final int? idKota;
  final String? valueKota;
  final String? jurusan;
  final int? tahunMasuk;
  final int? tahunLulus;
  final double? nilai;
  final bool? pendTerakhir;
  final String? ijazahNo;
  final String? ijazah;
  final String? catatan;
  final VoidCallback reloadDataCallback;
  final int pendidikanId;

  final TextEditingController idTingkatController = TextEditingController();
  final TextEditingController valueTingkatController = TextEditingController();

  final TextEditingController namaSekolahController = TextEditingController();

  final TextEditingController idKotaController = TextEditingController();
  final TextEditingController valueKotaController = TextEditingController();

  final TextEditingController jurusanController = TextEditingController();
  final TextEditingController tahuunMasukController = TextEditingController();
  final TextEditingController tahunLulusController = TextEditingController();
  final TextEditingController nilaiController = TextEditingController();
  final TextEditingController pendidikanTerakhirController =
      TextEditingController();
  final TextEditingController ijazahController = TextEditingController();
  final TextEditingController? ijazahNoController = TextEditingController();
  final TextEditingController catatanController = TextEditingController();

  @override
  State<ViewEditPendidikanPage> createState() => _ViewEditPendidikanPageState();
}

class _ViewEditPendidikanPageState extends State<ViewEditPendidikanPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    widget.idTingkatController.text = widget.idTingkat.toString();
    widget.valueTingkatController.text = widget.valueTingkat ?? '';
    widget.namaSekolahController.text = widget.namaSekolah ?? '';
    widget.idKotaController.text = widget.idKota.toString();
    widget.valueKotaController.text = widget.valueKota ?? '';
    widget.jurusanController.text = widget.jurusan ?? '';
    widget.tahuunMasukController.text = widget.tahunMasuk.toString();
    widget.tahunLulusController.text = widget.tahunLulus.toString();
    widget.nilaiController.text = widget.nilai.toString();
    // widget.pendidikanTerakhirController.text = widget.pendTerakhir ?? '';
    widget.ijazahNoController!.text = widget.ijazahNo ?? '-';
    widget.ijazahController.text = widget.ijazah ?? '';
    widget.catatanController.text = widget.catatan ?? '-';

    if (widget.pendTerakhir == true) {
      pendidikanTerakhir = 1;
      widget.pendidikanTerakhirController.text = 1.toString();
    } else {
      pendidikanTerakhir = 0;
      widget.pendidikanTerakhirController.text = 0.toString();
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final pendidikanBloc = context.read<AddDataPendidikanBloc>();

      pendidikanBloc.add(OnSelectTingkatPendidikan());
      pendidikanBloc.add(OnSelectKota());
    });
  }

  final _picker = ImagePicker();
  String? selectedTingkat;
  String? selectedKota;
  int? pendidikanTerakhir;
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tingkatPendidikan = context.read<AddDataPendidikanBloc>().dataTingkat;
    var dataKota = context.read<AddDataPendidikanBloc>().dataKota;

    void showTahunMenu(BuildContext context, TextEditingController controller) {
      List<String> _generateYears() {
        List<String> years = [];
        int currentYear = DateTime.now().year;

        for (int year = currentYear; year >= currentYear - 100; year--) {
          years.add(year.toString());
        }

        return years;
      }

      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            child: Column(
              children: [
                ListTile(
                  title: Center(
                    child: Text(
                      "Scroll & Tap pada data untuk memilih Tahun",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: MyColorsConst.darkColor),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: _generateYears().length,
                    itemBuilder: (context, index) {
                      final year = _generateYears()[index];
                      return ListTile(
                        title: Center(
                          child: Text(
                            year,
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        onTap: () {
                          controller.text = year;
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    void showTingkatPendidikanMenu(BuildContext context) async {
      if (tingkatPendidikan.isEmpty) {
        context.read<AddDataPendidikanBloc>().add(OnSelectTingkatPendidikan());
        tingkatPendidikan = context.read<AddDataPendidikanBloc>().dataTingkat;
      }

      if (tingkatPendidikan.isNotEmpty) {
        final selectedTingkat = await showSearch<DataTingkat?>(
          context: context,
          delegate: TingkatPendidikanSearchDelegate(
            tingkatPendidikan: tingkatPendidikan,
            filteredData: tingkatPendidikan,
          ),
        );

        if (selectedTingkat != null) {
          widget.idTingkatController.text =
              selectedTingkat.id?.toString() ?? '';
          widget.valueTingkatController.text =
              selectedTingkat.value?.toString() ?? '';

          setState(() {
            this.selectedTingkat = selectedTingkat.value;
            print(selectedTingkat.value);
            print("Selected ID Tingkat Pendidikan: ${selectedTingkat.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    void showKotaMenu(BuildContext context) async {
      if (dataKota.isEmpty) {
        context.read<AddDataPendidikanBloc>().add(OnSelectKota());
        dataKota = context.read<AddDataPendidikanBloc>().dataKota;
      }

      if (dataKota.isNotEmpty) {
        final selectedKota = await showSearch<DataKota?>(
          context: context,
          delegate: KotaSearchDelegate(
            dataKota: dataKota,
            filteredData: dataKota,
          ),
        );

        if (selectedKota != null) {
          widget.idKotaController.text = selectedKota.id?.toString() ?? '';
          widget.valueKotaController.text =
              selectedKota.value?.toString() ?? '';

          setState(() {
            this.selectedKota = selectedKota.value;
            print(selectedKota.value);
            print("Selected ID Kota: ${selectedKota.id}");
          });
        }
      } else {
        print("Tidak Ada Item");
      }
    }

    return BlocListener<AddDataPendidikanBloc, AddDataPendidikanState>(
      listener: (context, state) async {
        if (state is AddDataPendidikanLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is EditDataPendidikanSuccess) {
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
        } else if (state is EditDataPendidikanFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddDataPendidikanFailedUserExpired) {
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
        } else if (state is AddDataPendidikanFailedInBackground) {
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
                padding: EdgeInsets.only(left: 5.0.sp),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 1 / 5,
                    ),
                    Expanded(
                      child: Text(
                        "Data Pendidikan",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.sp, vertical: 16.sp),
                    child: BlocBuilder<AddDataPendidikanBloc,
                        AddDataPendidikanState>(
                      builder: (context, state) {
                        return SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Form(
                                key: _formKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: Column(
                                  children: [
                                    SizedBox(height: 16.sp),
                                    FormDropDownData(
                                      // input: selectedTingkat ?? '',
                                      onTap: () {
                                        showTingkatPendidikanMenu(context);
                                      },
                                      idController: widget.idTingkatController,
                                      valueController:
                                          widget.valueTingkatController,
                                      labelTag: 'Label-addTingkatPendidikan',
                                      labelForm: 'Tingkat',
                                      formTag: 'Form-addTingkatPendidikan',
                                      hintText: 'Pilih Tingkat Pendidikan',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tingkat Pendidikan';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.namaSekolahController.text,
                                      labelTag: 'label-addnamasekolah',
                                      labelForm: 'Nama Sekolah',
                                      formTag: 'form-addnamasekolah',
                                      hintText: 'Nama Sekolah',
                                      onTap: () {},
                                      controller: widget.namaSekolahController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Nama Sekolah';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showKotaMenu(context);
                                      },
                                      idController: widget.idKotaController,
                                      valueController:
                                          widget.valueKotaController,
                                      labelTag: 'Label-addkotapendidikan',
                                      labelForm: 'Kota',
                                      formTag: 'Form-addkotapendidikan',
                                      hintText: 'Pilih Kota',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Kota';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.jurusanController.text,
                                      labelTag: 'label-addjurusan',
                                      labelForm: 'Jurusan',
                                      formTag: 'form-addjurusan',
                                      hintText: 'Jurusan',
                                      onTap: () {},
                                      controller: widget.jurusanController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Jurusan';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showTahunMenu(context,
                                            widget.tahuunMasukController);
                                      },
                                      idController:
                                          widget.tahuunMasukController,
                                      valueController:
                                          widget.tahuunMasukController,
                                      labelTag: 'Label-addtahunmasukpendidikan',
                                      labelForm: 'Tahun Masuk',
                                      formTag: 'Form-addtahunmasukpendidikan',
                                      hintText: 'Pilih Tahun',
                                      // inputType: TextInputType.number,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tahun Masuk';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormDropDownData(
                                      input: '',
                                      onTap: () {
                                        showTahunMenu(context,
                                            widget.tahunLulusController);
                                      },
                                      idController: widget.tahunLulusController,
                                      valueController:
                                          widget.tahunLulusController,
                                      labelTag: 'Label-addtahunluluspendidikan',
                                      labelForm: 'Tahun Lulus',
                                      formTag: 'Form-addtahunluluspendidikan',
                                      hintText: 'Pilih Tahun',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tahun Lulus';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputDataWithNote(
                                      input: widget.nilaiController.text,
                                      labelTag: 'label-addnilai',
                                      labelForm: 'Nilai / IPK',
                                      formTag: 'form-addnilai',
                                      hintText: 'Nilai / IPK',
                                      noteBottom:
                                          'Jika terdapat koma isilah dengan titik(.) contoh: 94.7',
                                      onTap: () {},
                                      controller: widget.nilaiController,
                                      inputType: TextInputType.number,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Nilai';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.ijazahNoController!.text,
                                      labelTag: 'label-ijazahNo',
                                      labelForm: 'Nomor Ijazah',
                                      formTag: 'form-ijazahNo',
                                      hintText: 'Tuliskan Nomor Ijazah',
                                      onTap: () {},
                                      controller: widget.ijazahNoController!,
                                      showRedStar: false,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Nomor Ijazah';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Apakah Pendidikan Terakhir Anda',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13.sp,
                                            color: MyColorsConst.darkColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          '*',
                                          style: GoogleFonts.poppins(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.sp),
                                    FormField<int>(
                                      builder: (state) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      pendidikanTerakhir = 1;
                                                      widget.pendidikanTerakhirController
                                                              .text =
                                                          pendidikanTerakhir
                                                              .toString();
                                                    });
                                                    state.didChange(
                                                        pendidikanTerakhir);
                                                  },
                                                  child: Container(
                                                    width: 110.sp,
                                                    padding:
                                                        EdgeInsets.all(7.sp),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          pendidikanTerakhir ==
                                                                  1
                                                              ? MyColorsConst
                                                                  .primaryColor
                                                              : Colors
                                                                  .transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        width: 1.5,
                                                        color: state.hasError
                                                            ? Color(
                                                                0XFF0b00020) // Change border color if validation fails
                                                            : pendidikanTerakhir ==
                                                                    1
                                                                ? MyColorsConst
                                                                    .primaryColor
                                                                : MyColorsConst
                                                                    .formBorderColor,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Iya',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color:
                                                              pendidikanTerakhir ==
                                                                      1
                                                                  ? Colors.white
                                                                  : MyColorsConst
                                                                      .darkColor,
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      pendidikanTerakhir = 0;
                                                      widget.pendidikanTerakhirController
                                                              .text =
                                                          pendidikanTerakhir
                                                              .toString();
                                                    });
                                                    state.didChange(
                                                        pendidikanTerakhir);
                                                  },
                                                  child: Container(
                                                    width: 110.sp,
                                                    padding:
                                                        EdgeInsets.all(7.sp),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          pendidikanTerakhir ==
                                                                  0
                                                              ? MyColorsConst
                                                                  .primaryColor
                                                              : Colors
                                                                  .transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        width: 1.5,
                                                        color: state.hasError
                                                            ? Color(
                                                                0XFF0b00020) // Change border color if validation fails
                                                            : pendidikanTerakhir ==
                                                                    0
                                                                ? MyColorsConst
                                                                    .primaryColor
                                                                : MyColorsConst
                                                                    .formBorderColor,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Tidak',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              pendidikanTerakhir ==
                                                                      0
                                                                  ? Colors.white
                                                                  : MyColorsConst
                                                                      .darkColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            if (state.hasError)
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 15.0),
                                                child: Text(
                                                  state.errorText!,
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0XFF0b00020),
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        );
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return 'Pilih Salah Satu Opsi';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 20.sp),
                                    Row(
                                      children: [
                                        Text(
                                          'Foto Ijazah',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13.sp,
                                            color: MyColorsConst.darkColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          ' *',
                                          style: GoogleFonts.poppins(
                                              color: Colors.red),
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
                                                  await uploadFile(context);

                                              if (file != null) {
                                                setState(() {
                                                  uploadedFile =
                                                      file.files.first as File?;
                                                });

                                                // Extract file name from the path
                                                fileName = uploadedFile != null
                                                    ? uploadedFile!.path
                                                        .split('/')
                                                        .last
                                                    : "";
                                                print(
                                                    'Uploaded file: $fileName');
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 15),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              foregroundColor:
                                                  MyColorsConst.primaryColor,
                                              side: BorderSide(
                                                width: 1.5,
                                                color: MyColorsConst
                                                    .formBorderColor,
                                              ),
                                            ),
                                            icon: Icon(
                                              CupertinoIcons.doc,
                                              size: 20.sp,
                                              color:
                                                  MyColorsConst.lightDarkColor,
                                            ),
                                            label: Text(
                                              'Upload',
                                              style: GoogleFonts.poppins(
                                                fontSize: 13.sp,
                                                color: MyColorsConst
                                                    .lightDarkColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: OutlinedButton.icon(
                                            onPressed: () async {
                                              final file =
                                                  await captureFile(context);

                                              if (file != null) {
                                                setState(() {
                                                  uploadedFile =
                                                      File(file.path);
                                                });

                                                fileName = uploadedFile!.path
                                                    .split('/')
                                                    .last;
                                                print(
                                                    'Captured file: $fileName');
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 15),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              foregroundColor:
                                                  MyColorsConst.primaryColor,
                                              side: BorderSide(
                                                width: 1.5,
                                                color: MyColorsConst
                                                    .formBorderColor,
                                              ),
                                            ),
                                            icon: Icon(
                                              CupertinoIcons.camera,
                                              size: 20.sp,
                                              color:
                                                  MyColorsConst.lightDarkColor,
                                            ),
                                            label: Text(
                                              'Kamera',
                                              style: GoogleFonts.poppins(
                                                fontSize: 13.sp,
                                                color: MyColorsConst
                                                    .lightDarkColor,
                                                fontWeight: FontWeight.w500,
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
                                                    text: 'Nama File Baru: ',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12.sp,
                                                      color: MyColorsConst
                                                          .lightDarkColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' $fileName',
                                                    style: GoogleFonts.poppins(
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
                                    SizedBox(
                                      width: size.width,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'File Saat Ini : ',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12.sp,
                                              color:
                                                  MyColorsConst.lightDarkColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          if (widget.ijazah?.isNotEmpty ??
                                              false)
                                            Link(
                                              target: LinkTarget.self,
                                              uri:
                                                  Uri.parse('${widget.ijazah}'),
                                              builder: (context, followLink) =>
                                                  GestureDetector(
                                                onTap: followLink,
                                                child: Text(
                                                  'Lihat File',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12.sp,
                                                    color: MyColorsConst
                                                        .primaryColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          else
                                            Text(
                                              "-",
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.sp),
                                    FormInputData(
                                      input: widget.catatanController.text,
                                      labelTag: 'label-addcatatanpendidikan',
                                      labelForm: 'Catatan',
                                      formTag: 'form-addcatatanpendidikan',
                                      hintText: 'Catatan',
                                      showRedStar: false,
                                      onTap: () {},
                                      controller: widget.catatanController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Catatan';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    SizedBox(height: 20.sp),
                                  ],
                                ),
                              ),
                              TextButtonCustomV1(
                                text: "Simpan Perubahan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    showDialog(
                                      context: context,
                                      builder: (_) => DialogCustom(
                                        state: DialogCustomItem.confirm,
                                        message:
                                            "Anda Yakin Mengubah Data Pendidikan?",
                                        durationInSec: 7,
                                        onContinue: () =>
                                            context
                                                .read<AddDataPendidikanBloc>()
                                                .add(
                                                  EditDataPendidikanSubmited(
                                                      pendidikanId:
                                                          widget.pendidikanId,
                                                      tingkatID: int.parse(widget
                                                          .idTingkatController
                                                          .text),
                                                      namaSekolah: widget
                                                          .namaSekolahController
                                                          .text,
                                                      tahunMasuk: widget
                                                          .tahuunMasukController
                                                          .text,
                                                      tahunLulus: widget
                                                          .tahunLulusController
                                                          .text,
                                                      kotaID: int.parse(widget
                                                          .idKotaController
                                                          .text),
                                                      nilai: double.parse(widget
                                                          .nilaiController
                                                          .text),
                                                      jurusan: widget
                                                          .jurusanController
                                                          .text,
                                                      ijazahNo: widget.ijazahNoController?.text,
                                                      ijazahFoto: uploadedFile != null && uploadedFile!.path.isNotEmpty ? File(uploadedFile!.path) : null,
                                                      isPendTerakhir: int.parse(widget.pendidikanTerakhirController.text),
                                                      desc: widget.catatanController.text),
                                                ),
                                      ),
                                    );
                                  }
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
            ],
          ),
        ),
      ),
    );
  }
}
