import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FileUploadWidget extends StatefulWidget {
  final String label;
  // final String icon;
  final Function(File) onFileSelected;

  FileUploadWidget({
    required this.label,
    // required this.icon,
    required this.onFileSelected,
  });

  @override
  _FileUploadWidgetState createState() => _FileUploadWidgetState();
}

class _FileUploadWidgetState extends State<FileUploadWidget> {
  final _picker = ImagePicker();
  File? uploadedFile;
  String fileName = "";

  Future<FilePickerResult?> pickFile(BuildContext context) async {
    try {
      FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpeg', 'jpg', 'png'],
      );

      return pickedFile;
    } on PlatformException catch (e) {
      print('Failed to pick file: $e');
      return null;
    }
  }

  Future<XFile?> captureFile(BuildContext context) async {
    try {
      final pickFile = await _picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front,
      );

      return pickFile;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: GoogleFonts.poppins(
            fontSize: 13.sp,
            color: MyColorsConst.darkColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () async {
                  final file = await pickFile(context);

                  if (file != null) {
                    setState(() {
                      uploadedFile = File(file.files.first.path ?? '');
                      fileName = file.files.first.name;
                    });

                    widget.onFileSelected(uploadedFile!);

                    print('Path: ${file.files.first.path}');
                    print('File Name: $fileName');
                    print('Size: ${file.files.first.size}');
                  }
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  foregroundColor: MyColorsConst.primaryColor,
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
                      fileName = file.path.split('/').last;
                    });

                    widget.onFileSelected(uploadedFile!);

                    print('Captured file: $fileName');
                  }
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  foregroundColor: MyColorsConst.primaryColor,
                  side: BorderSide(
                    width: 1.5,
                    color: MyColorsConst.formBorderColor,
                  ),
                ),
                icon: Icon(
                  Icons.camera_alt,
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
                width: 300,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Nama File: ',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: MyColorsConst.lightDarkColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' $fileName',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: MyColorsConst.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
