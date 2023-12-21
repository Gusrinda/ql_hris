// import 'dart:io';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sj_presensi_mobile/utils/const.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class FileUploadWidget extends StatefulWidget {
//   final String label;
//   // final String icon;
//   final Function(File) onFileSelected;

//   FileUploadWidget({
//     required this.label,
//     // required this.icon,
//     required this.onFileSelected,
//   });

//   @override
//   _FileUploadWidgetState createState() => _FileUploadWidgetState();
// }

// class _FileUploadWidgetState extends State<FileUploadWidget> {
//   final _picker = ImagePicker();
//   File? uploadedFile;
//   String fileName = "";

//   Future<FilePickerResult?> pickFile(BuildContext context) async {
//     try {
//       FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
//         type: FileType.custom,
//         allowedExtensions: ['pdf', 'jpeg', 'jpg', 'png'],
//       );

//       return pickedFile;
//     } on PlatformException catch (e) {
//       print('Failed to pick file: $e');
//       return null;
//     }
//   }

//   Future<XFile?> captureFile(BuildContext context) async {
//     try {
//       final pickFile = await _picker.pickImage(
//         source: ImageSource.camera,
//         preferredCameraDevice: CameraDevice.front,
//       );

//       return pickFile;
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//       return null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           widget.label,
//           style: GoogleFonts.poppins(
//             fontSize: 13.sp,
//             color: MyColorsConst.darkColor,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Row(
//           children: [
//             Expanded(
//               child: OutlinedButton.icon(
//                 onPressed: () async {
//                   final file = await pickFile(context);

//                   if (file != null) {
//                     setState(() {
//                       uploadedFile = File(file.files.first.path ?? '');
//                       fileName = file.files.first.name;
//                     });

//                     widget.onFileSelected(uploadedFile!);

//                     print('Path: ${file.files.first.path}');
//                     print('File Name: $fileName');
//                     print('Size: ${file.files.first.size}');
//                   }
//                 },
//                 style: OutlinedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   foregroundColor: MyColorsConst.primaryColor,
//                   side: BorderSide(
//                     width: 1.5,
//                     color: MyColorsConst.formBorderColor,
//                   ),
//                 ),
//                 icon: Icon(
//                   CupertinoIcons.doc,
//                   size: 20.sp,
//                   color: MyColorsConst.lightDarkColor,
//                 ),
//                 label: Text(
//                   'Upload',
//                   style: GoogleFonts.poppins(
//                     fontSize: 13.sp,
//                     color: MyColorsConst.lightDarkColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               child: OutlinedButton.icon(
//                 onPressed: () async {
//                   final file = await captureFile(context);

//                   if (file != null) {
//                     setState(() {
//                       uploadedFile = File(file.path);
//                       fileName = file.path.split('/').last;
//                     });

//                     widget.onFileSelected(uploadedFile!);

//                     print('Captured file: $fileName');
//                   }
//                 },
//                 style: OutlinedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   foregroundColor: MyColorsConst.primaryColor,
//                   side: BorderSide(
//                     width: 1.5,
//                     color: MyColorsConst.formBorderColor,
//                   ),
//                 ),
//                 icon: Icon(
//                   Icons.camera_alt,
//                   size: 20.sp,
//                   color: MyColorsConst.lightDarkColor,
//                 ),
//                 label: Text(
//                   'Kamera',
//                   style: GoogleFonts.poppins(
//                     fontSize: 13.sp,
//                     color: MyColorsConst.lightDarkColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         if (uploadedFile != null)
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 7.sp),
//               SizedBox(
//                 width: 300,
//                 child: RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Nama File: ',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12.sp,
//                           color: MyColorsConst.lightDarkColor,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       TextSpan(
//                         text: ' $fileName',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12.sp,
//                           color: MyColorsConst.primaryColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         SizedBox(height: 20.sp),
//       ],
//     );
//   }
// }

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class FileSelectionWidget extends StatefulWidget {
  final Function(File, String) onFileSelected;
  final String title;
  final String fileName;
  // final String fileUrl;
  final File? selectedFile;

  const FileSelectionWidget({
    required this.onFileSelected,
    required this.title,
    required this.fileName,
    // required this.fileUrl,
    required this.selectedFile,
  });

  @override
  _FileSelectionWidgetState createState() => _FileSelectionWidgetState();
}

class _FileSelectionWidgetState extends State<FileSelectionWidget> {
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _handleCaptureFile() async {
    final file = await _imagePicker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
    );

    if (file != null) {
      widget.onFileSelected(File(file.path), file.path);
    }
  }

  Future<void> _handleUploadFile(BuildContext context) async {
    FilePickerResult? pickedFileNonCamera = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpeg', 'jpg', 'png'],
    );

    if (pickedFileNonCamera != null) {
      PlatformFile file = pickedFileNonCamera.files.first;
      widget.onFileSelected(File(file.path ?? ''), file.path ?? '');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 2),
          content: Text('Gagal Mengambil File!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              ' *',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _handleUploadFile(context),
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
                onPressed: _handleCaptureFile,
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
        if (widget.selectedFile != null)
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
                          color: MyColorsConst.lightDarkColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' ${widget.fileName}',
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
              // SizedBox(
              //   width: 200,
              //   child: RichText(
              //     text: TextSpan(
              //       children: [
              //         TextSpan(
              //           text: 'URL File: ',
              //           style: TextStyle(
              //             fontSize: 12,
              //             color: Colors.grey,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         TextSpan(
              //           text: ' ${widget.fileUrl}',
              //           style: TextStyle(
              //             fontSize: 12,
              //             color: Colors.blue,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        SizedBox(height: 15.sp),
      ],
    );
  }
}

// class FilePickerWidget extends StatefulWidget {
//   final Function(File?) onFileSelected;
//   final String title;
//   final String fileName;
//   final File? selectedFile;

//   const FilePickerWidget({
//     required this.onFileSelected,
//     required this.title,
//     required this.fileName,
//     required this.selectedFile,
//   });

//   @override
//   _FilePickerWidgetState createState() => _FilePickerWidgetState();
// }

// class _FilePickerWidgetState extends State<FilePickerWidget> {
//   Future<XFile?> _captureFile(BuildContext context) async {
//     try {
//       final pickFile = await ImagePicker().pickImage(
//         source: ImageSource.camera,
//         preferredCameraDevice: CameraDevice.front,
//       );

//       if (pickFile == null) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Gagal Mengambil File!'),
//             backgroundColor: MyColorsConst.redColor,
//           ),
//         );
//         return null;
//       }
//       return pickFile;
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//       return null;
//     }
//   }

//   Future<FilePickerResult?> _uploadFile(BuildContext context) async {
//     try {
//       FilePickerResult? pickedFileNonCamera =
//           await FilePicker.platform.pickFiles(
//         type: FileType.custom,
//         allowedExtensions: ['pdf', 'jpeg', 'jpg', 'png'],
//       );

//       if (pickedFileNonCamera != null) {
//         return pickedFileNonCamera;
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             duration: Duration(seconds: 2),
//             content: Text('Gagal Mengambil File!'),
//             backgroundColor: MyColorsConst.redColor,
//           ),
//         );
//         return null;
//       }
//     } on PlatformException catch (e) {
//       print('Failed to upload file: $e');
//       return null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Text(
//               widget.title,
//               style: TextStyle(
//                 fontSize: 13.sp,
//                 color: MyColorsConst.darkColor,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             Text(
//               ' *',
//               style: GoogleFonts.poppins(color: Colors.red),
//             ),
//           ],
//         ),
//         const SizedBox(height: 5),
//         Row(
//           children: [
//             Expanded(
//               child: OutlinedButton.icon(
//                 onPressed: () async {
//                   final file = await _uploadFile(context);

//                   if (file != null) {
//                     setState(() {
//                       widget.onFileSelected(file.files.first as File?);
//                     });

//                     // Extract file name from the path
//                     String fileName = file.files.first!.name;
//                     print('Uploaded file: $fileName');
//                   }
//                 },
//                 style: OutlinedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   foregroundColor: MyColorsConst.primaryColor,
//                   side: BorderSide(
//                     width: 1.5,
//                     color: MyColorsConst.formBorderColor,
//                   ),
//                 ),
//                 icon: Icon(
//                   CupertinoIcons.doc,
//                   size: 20.sp,
//                   color: MyColorsConst.lightDarkColor,
//                 ),
//                 label: Text(
//                   'Upload',
//                   style: GoogleFonts.poppins(
//                     fontSize: 13.sp,
//                     color: MyColorsConst.lightDarkColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               child: OutlinedButton.icon(
//                 onPressed: () async {
//                   final file = await _captureFile(context);

//                   if (file != null) {
//                     setState(() {
//                       widget.onFileSelected(File(file.path));
//                     });

//                     // Extract file name from the path
//                     String fileName = file.path.split('/').last;
//                     print('Captured file: $fileName');
//                   }
//                 },
//                 style: OutlinedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   foregroundColor: MyColorsConst.primaryColor,
//                   side: BorderSide(
//                     width: 1.5,
//                     color: MyColorsConst.formBorderColor,
//                   ),
//                 ),
//                 icon: Icon(
//                   CupertinoIcons.camera,
//                   size: 20.sp,
//                   color: MyColorsConst.lightDarkColor,
//                 ),
//                 label: Text(
//                   'Kamera',
//                   style: GoogleFonts.poppins(
//                     fontSize: 13.sp,
//                     color: MyColorsConst.lightDarkColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         if (widget.selectedFile != null)
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 7.sp),
//               SizedBox(
//                 width: size.width,
//                 child: RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Nama File: ',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12.sp,
//                           color: MyColorsConst.lightDarkColor,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       TextSpan(
//                         text: ' ${widget.fileName}',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12.sp,
//                           color: MyColorsConst.primaryColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         SizedBox(height: 15.sp),
//       ],
//     );
//   }
// }