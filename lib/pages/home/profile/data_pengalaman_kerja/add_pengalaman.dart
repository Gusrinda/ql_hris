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
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/selector/kota_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/add_pengalaman_bloc/add_pengalaman_kerja_bloc.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddPengalamanPage extends StatefulWidget {
  static const routeName = '/AddPengalamanPage';
  AddPengalamanPage({super.key, required this.reloadDataCallback});
  final VoidCallback reloadDataCallback;

  final TextEditingController namaPerusahaanController =
      TextEditingController();
  final TextEditingController bidangUsahaController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController posisiController = TextEditingController();
  final TextEditingController tahunMasukController = TextEditingController();
  final TextEditingController tahunKeluarController = TextEditingController();
  final TextEditingController alamatKantorController = TextEditingController();
  final TextEditingController idKotaController = TextEditingController();
  final TextEditingController valueKotaController = TextEditingController();
  final TextEditingController suratReferensiController =
      TextEditingController();

  @override
  State<AddPengalamanPage> createState() => _AddPengalamanPageState();
}

class _AddPengalamanPageState extends State<AddPengalamanPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AddPengalamanKerjaBloc>().add(const OnSelectKota());
    });
  }

  final _picker = ImagePicker();
  String? selectedKota;
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
    var dataKota = context.read<AddPengalamanKerjaBloc>().dataKota;
    var size = MediaQuery.of(context).size;

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

    void showKotaMenu(BuildContext context) async {
      if (dataKota.isEmpty) {
        context.read<AddPengalamanKerjaBloc>().add(OnSelectKota());
        dataKota = context.read<AddPengalamanKerjaBloc>().dataKota;
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

    return BlocListener<AddPengalamanKerjaBloc, AddPengalamanKerjaState>(
      listener: (context, state) async {
        if (state is AddDataPengalamanKerjaLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddDataPengalamanKerjaSuccess) {
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
        } else if (state is AddDataPengalamanKerjaFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is AddDataPengalamanKerjaFailedUserExpired) {
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
        } else if (state is AddDataPengalamanKerjaFailedInBackground) {
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
                      width: size.width * 0.5 / 8,
                    ),
                    Expanded(
                      child: Text(
                        "Tambah Data Pengalaman Kerja",
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
                  child: BlocBuilder<AddPengalamanKerjaBloc,
                      AddPengalamanKerjaState>(
                    builder: (context, state) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.sp, vertical: 16.sp),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Form(
                                key: _formKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: Column(
                                  children: [
                                    SizedBox(height: 16.sp),
                                    FormInputData(
                                      labelTag: 'label-addnamaperusahaan',
                                      labelForm: 'Nama Perusahaan',
                                      formTag: 'form-addnamaperusahaan',
                                      hintText: 'Nama Perusahaan',
                                      onTap: () {},
                                      controller:
                                          widget.namaPerusahaanController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Nama Perusahaan';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.bidangUsahaController.text,
                                      labelTag: 'label-addbidangusaha',
                                      labelForm: 'Bidang Usaha',
                                      formTag: 'form-addbidangusaha',
                                      hintText: 'Bidang Usaha',
                                      onTap: () {},
                                      controller: widget.bidangUsahaController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Bidang Usaha';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.noTelpController.text,
                                      labelTag: 'label-addnotelp',
                                      labelForm: 'No Telp',
                                      formTag: 'form-addnotelp',
                                      hintText: 'No Telp',
                                      inputType: TextInputType.number,
                                      onTap: () {},
                                      controller: widget.noTelpController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan No Telepon';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.posisiController.text,
                                      labelTag: 'label-addposisipengalaman',
                                      labelForm: 'Posisi',
                                      formTag: 'form-addposisipengalaman',
                                      hintText: 'Posisi',
                                      onTap: () {},
                                      controller: widget.posisiController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Pengalaman';
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
                                            widget.tahunMasukController);
                                      },
                                      valueController:
                                          widget.tahunMasukController,
                                      labelTag: 'Label-addtahunmasuk',
                                      labelForm: 'Tahun Masuk',
                                      formTag: 'Form-addtahunmasuk',
                                      hintText: 'Pilih Tahun',
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
                                            widget.tahunKeluarController);
                                      },
                                      valueController:
                                          widget.tahunKeluarController,
                                      labelTag: 'Label-addtahunkeluar',
                                      labelForm: 'Tahun Keluar',
                                      formTag: 'Form-addtahunkeluar',
                                      hintText: 'Pilih Tahun',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pilih Tahun Keluar';
                                        }
                                        return null;
                                      },
                                      errorTextStyle:
                                          GoogleFonts.poppins(fontSize: 8),
                                    ),
                                    FormInputData(
                                      input: widget.alamatKantorController.text,
                                      labelTag: 'label-addalamatkantor',
                                      labelForm: 'Alamat Kantor',
                                      formTag: 'form-addalamatkantor',
                                      hintText: 'Alamat Kantor',
                                      onTap: () {},
                                      controller: widget.alamatKantorController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Tuliskan Alamat Kantor';
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
                                      labelTag: 'Label-addkotapengalaman',
                                      labelForm: 'Kota',
                                      formTag: 'Form-addkotapengalaman',
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
                                    // FormInputData(
                                    //   input: widget.suratReferensiController.text,
                                    //   labelTag: 'label-addsuratreferensi',
                                    //   labelForm: 'Surat Referensi',
                                    //   formTag: 'form-addsuratreferensi',
                                    //   hintText: 'Surat Referensi',
                                    //   onTap: () {},
                                    //   controller: widget.suratReferensiController,
                                    //   validator: (value) {},
                                    // ),
                                    Row(
                                      children: [
                                        Text(
                                          'Surat Referensi',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13.sp,
                                            color: MyColorsConst.darkColor,
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
                                                    text: 'Nama File: ',
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
                                    SizedBox(height: 30.sp),
                                  ],
                                ),
                              ),
                              TextButtonCustomV1(
                                text: "Simpan",
                                height: 50.sp,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: state
                                        is AddDataPengalamanKerjaLoading
                                    ? null
                                    : () {
                                        if (_formKey.currentState!.validate()) {
                                          context
                                              .read<AddPengalamanKerjaBloc>()
                                              .add(
                                                AddDataPengalamanKerjaSubmited(
                                                  instansi: widget
                                                      .namaPerusahaanController
                                                      .text,
                                                  bidangUsaha: widget
                                                      .bidangUsahaController
                                                      .text,
                                                  noTelp: widget
                                                      .noTelpController.text,
                                                  posisi: widget
                                                      .posisiController.text,
                                                  tahunMasuk: widget
                                                      .tahunMasukController
                                                      .text,
                                                  tahunKeluar: widget
                                                      .tahunKeluarController
                                                      .text,
                                                  alamat: widget
                                                      .alamatKantorController
                                                      .text,
                                                  kotaId: int.parse(widget
                                                      .idKotaController.text),
                                                  suratReferensi:
                                                      uploadedFile != null &&
                                                              uploadedFile!.path
                                                                  .isNotEmpty
                                                          ? File(uploadedFile!
                                                              .path)
                                                          : null,
                                                ),
                                              );
                                        }
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
