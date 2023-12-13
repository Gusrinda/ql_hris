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
import 'package:sj_presensi_mobile/componens/HRIS/form_input_file.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/add_pendidikan.bloc/add_data_pendidikan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/tingkat_selector.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddPendidikanPage extends StatefulWidget {
  static const routeName = '/AddPendidikanPage';

  AddPendidikanPage({
    super.key,
  });
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
  final TextEditingController ijazahNoController = TextEditingController();

  final TextEditingController catatanController = TextEditingController();

  @override
  State<AddPendidikanPage> createState() => _AddPendidikanPageState();
}

class _AddPendidikanPageState extends State<AddPendidikanPage> {
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
        allowedExtensions: ['jpeg', 'jpg', 'png'],
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

  // void sendDataToApi() {
  //   // Use the fileName and fileUrl variables to send data to the API
  //   print('Sending data to API with File Name: $fileName');
  //   print('File URL: $fileUrl');
  //   // Add your API interaction logic here
  // }

  @override
  Widget build(BuildContext context) {
    var tingkatPendidikan = context.read<AddDataPendidikanBloc>().dataTingkat;
    var dataKota = context.read<AddDataPendidikanBloc>().dataKota;

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

      if (tingkatPendidikan.isNotEmpty) {
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

    var size = MediaQuery.of(context).size;
    return BlocListener<AddDataPendidikanBloc, AddDataPendidikanState>(
      listener: (context, state) async {
        if (state is AddDataPendidikanLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddDataPendidikanSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
          // widget.reloadDataCallback();
        } else if (state is AddDataPendidikanFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
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
          decoration: BoxDecoration(
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
              SizedBox(height: 30.sp),
              Container(
                padding: EdgeInsets.only(left: 5.0.sp),
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
                      width: size.width * 0.5 / 4,
                    ),
                    Expanded(
                      child: Text(
                        "Tambah Data Pendidikan",
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
                  child: BlocBuilder<AddDataPendidikanBloc,
                      AddDataPendidikanState>(
                    builder: (context, state) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.sp, vertical: 16.sp),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16.sp),
                              FormDropDownData(
                                // input: selectedTingkat ?? '',
                                onTap: () {
                                  showTingkatPendidikanMenu(context);
                                },
                                idController: widget.idTingkatController,
                                valueController: widget.valueTingkatController,
                                labelTag: 'Label-addTingkatPendidikan',
                                labelForm: 'Tingkat',
                                formTag: 'Form-addTingkatPendidikan',
                                hintText: 'Pilih Tingkat',
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: widget.namaSekolahController.text,
                                labelTag: 'label-addnamasekolah',
                                labelForm: 'Nama Sekolah',
                                formTag: 'form-addnamasekolah',
                                hintText: 'Nama Sekolah',
                                onTap: () {},
                                controller: widget.namaSekolahController,
                                validator: (value) {},
                              ),
                              FormDropDownData(
                                input: '',
                                onTap: () {
                                  showKotaMenu(context);
                                },
                                idController: widget.idKotaController,
                                valueController: widget.valueKotaController,
                                labelTag: 'Label-addkotapendidikan',
                                labelForm: 'Kota',
                                formTag: 'Form-addkotapendidikan',
                                hintText: 'Pilih Kota',
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: widget.jurusanController.text,
                                labelTag: 'label-addjurusan',
                                labelForm: 'Jurusan',
                                formTag: 'form-addjurusan',
                                hintText: 'Jurusan',
                                onTap: () {},
                                controller: widget.jurusanController,
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                // idController: widget.tahuunMasukController,
                                controller: widget.tahuunMasukController,
                                labelTag: 'Label-addtahunmasukpendidikan',
                                labelForm: 'Tahun Masuk',
                                formTag: 'Form-addtahunmasukpendidikan',
                                hintText: 'Pilih Tahun',
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                // idController: widget.tahunLulusController,
                                controller: widget.tahunLulusController,
                                labelTag: 'Label-addtahunluluspendidikan',
                                labelForm: 'Tahun Lulus',
                                formTag: 'Form-addtahunluluspendidikan',
                                hintText: 'Pilih Tahun',
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: widget.nilaiController.text,
                                labelTag: 'label-addnilai',
                                labelForm: 'Nilai',
                                formTag: 'form-addnilai',
                                hintText: 'Nilai',
                                onTap: () {},
                                controller: widget.nilaiController,
                                validator: (value) {},
                              ),
                              FormInputData(
                                input: widget.ijazahNoController.text,
                                labelTag: 'label-ijazahNo',
                                labelForm: 'Nomor Ijazah',
                                formTag: 'form-ijazahNo',
                                hintText: 'Tuliskan Nomor Ijazah',
                                onTap: () {},
                                controller: widget.ijazahNoController,
                                validator: (value) {},
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
                                    ' *',
                                    style:
                                        GoogleFonts.poppins(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.sp),
                              Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        pendidikanTerakhir = 1;
                                        widget.pendidikanTerakhirController
                                                .text =
                                            pendidikanTerakhir.toString();
                                      });
                                    },
                                    child: Container(
                                      width: 110.sp,
                                      padding: EdgeInsets.all(7.sp),
                                      decoration: BoxDecoration(
                                        color: pendidikanTerakhir == 1
                                            ? MyColorsConst.primaryColor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1.5,
                                          color: pendidikanTerakhir == 1
                                              ? MyColorsConst
                                                  .primaryColor // Warna ketika terpilih
                                              : MyColorsConst
                                                  .formBorderColor, // Warna ketika tidak terpilih
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Iya',
                                          style: GoogleFonts.poppins(
                                            color: pendidikanTerakhir == 1
                                                ? Colors.white
                                                : MyColorsConst.darkColor,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
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
                                            pendidikanTerakhir.toString();
                                      });
                                    },
                                    child: Container(
                                      width: 110.sp,
                                      padding: EdgeInsets.all(7.sp),
                                      decoration: BoxDecoration(
                                        color: pendidikanTerakhir == 0
                                            ? MyColorsConst.primaryColor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1.5,
                                          color: pendidikanTerakhir == 0
                                              ? MyColorsConst.primaryColor
                                              : MyColorsConst.formBorderColor,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Tidak',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                            color: pendidikanTerakhir == 0
                                                ? Colors.white
                                                : MyColorsConst.darkColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                    style:
                                        GoogleFonts.poppins(color: Colors.red),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () async {
                                        final file = await uploadFile(context);

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
                                          print('Uploaded file: $fileName');
                                        }
                                      },
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        foregroundColor:
                                            MyColorsConst.primaryColor,
                                        side: BorderSide(
                                          width: 1.5,
                                          color: MyColorsConst.formBorderColor,
                                        ),
                                      ),
                                      icon: Icon(
                                        CupertinoIcons.doc,
                                        size: 20.sp,
                                        color: MyColorsConst.lightDarkColor,
                                      ),
                                      label: Text(
                                        'Upload',
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: MyColorsConst.lightDarkColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () async {
                                        final file = await captureFile(context);

                                        if (file != null) {
                                          setState(() {
                                            uploadedFile = File(file.path);
                                          });

                                          fileName = uploadedFile!.path
                                              .split('/')
                                              .last;
                                          print('Captured file: $fileName');
                                        }
                                      },
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        foregroundColor:
                                            MyColorsConst.primaryColor,
                                        side: BorderSide(
                                          width: 1.5,
                                          color: MyColorsConst.formBorderColor,
                                        ),
                                      ),
                                      icon: Icon(
                                        CupertinoIcons.camera,
                                        size: 20.sp,
                                        color: MyColorsConst.lightDarkColor,
                                      ),
                                      label: Text(
                                        'Kamera',
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: MyColorsConst.lightDarkColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (uploadedFile != null)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 7.sp),
                                    SizedBox(
                                      width: size.width,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Nama File: ',
                                              style: GoogleFonts.poppins(
                                                fontSize: 12.sp,
                                                color: MyColorsConst
                                                    .lightDarkColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' $fileName',
                                              style: GoogleFonts.poppins(
                                                fontSize: 12.sp,
                                                color:
                                                    MyColorsConst.primaryColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // SizedBox(height: 7.sp),
                                    // RichText(
                                    //   text: TextSpan(
                                    //     children: [
                                    //       TextSpan(
                                    //         text: 'File URL: ',
                                    //         style: GoogleFonts.poppins(
                                    //           fontSize: 10.sp,
                                    //           color: MyColorsConst.darkColor,
                                    //           fontWeight: FontWeight.w600,
                                    //         ),
                                    //       ),
                                    //       TextSpan(
                                    //         text: '$fileUrl',
                                    //         style: GoogleFonts.poppins(
                                    //           fontSize: 10.sp,
                                    //           color: MyColorsConst.darkColor,
                                    //           fontWeight: FontWeight.w400,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // if (fileUrl.toLowerCase().endsWith('.jpg') ||
                                    //     fileUrl.toLowerCase().endsWith('.jpeg') ||
                                    //     fileUrl.toLowerCase().endsWith('.png'))
                                    //   Image.file(
                                    //       uploadedFile!),
                                  ],
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
                                validator: (value) {},
                              ),
                              SizedBox(height: 20.sp),
                              TextButtonCustomV1(
                                text: "Simpan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: state is AddDataPendidikanLoading
                                    ? null
                                    : () {
                                        context
                                            .read<AddDataPendidikanBloc>()
                                            .add(
                                              AddDataPendidikanSubmited(
                                                tingkatID: int.parse(widget
                                                    .idTingkatController.text),
                                                namaSekolah: widget
                                                    .namaSekolahController.text,
                                                tahunMasuk: widget
                                                    .tahuunMasukController.text,
                                                tahunLulus: widget
                                                    .tahunLulusController.text,
                                                kotaID: int.parse(widget
                                                    .idKotaController.text),
                                                nilai: double.parse(widget
                                                    .nilaiController.text),
                                                jurusan: widget
                                                    .jurusanController.text,
                                                isPendTerakhir: int.parse(widget
                                                    .pendidikanTerakhirController
                                                    .text),
                                                ijazahNo: widget
                                                    .ijazahNoController.text,
                                                ijazahFoto:
                                                    File(uploadedFile!.path),
                                                desc: widget
                                                    .catatanController.text,
                                              ),
                                            );
                                      },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
