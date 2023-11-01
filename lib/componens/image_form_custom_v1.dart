import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sj_presensi_mobile/componens/camera_view.dart';
import 'package:sj_presensi_mobile/main.dart';
import 'package:sj_presensi_mobile/sentry/my_sentry.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ImageFormCustomV1 extends StatefulWidget {
  Function(String? filePath) onImageSelected;
  Function(String message) onImageSelectedError;
  ImageFormCustomV1({
    Key? key,
    required this.onImageSelected,
    required this.onImageSelectedError,
  }) : super(key: key);

  @override
  State<ImageFormCustomV1> createState() => _ImageFormCustomV1State();
}

class _ImageFormCustomV1State extends State<ImageFormCustomV1> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: imageFile == null ? () => _pickImage(ImageSource.camera) : null,
      // onTap: imageFile == null
      //     ? () async {
      //         final firstCamera = cameras[1];

      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //               builder: (context) => CameraCapturePage(
      //                     camera: firstCamera,
      //                   )),
      //         );
      //       }
      //     : null,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          width: double.infinity,
          // height: size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: MyColorsConst.shadowColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: imageFile != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          imageFile!,
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    : const Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            color: MyColorsConst.semiDarkColor,
                            size: 45,
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Ketuk untuk ambil gambar",
                            style: TextStyle(
                              color: MyColorsConst.darkColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
              ),
              Visibility(
                visible: imageFile != null,
                child: Positioned(
                  bottom: 8,
                  left: 8,
                  child: InkWell(
                    onTap: () => _pickImage(ImageSource.camera),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: MyColorsConst.redColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.replay,
                            size: 15,
                            color: MyColorsConst.whiteColor,
                          ),
                          SizedBox(width: 6),
                          Text(
                            "Ambil Ulang",
                            style: TextStyle(
                              color: MyColorsConst.whiteColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
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

  _addStringComp(String currPath, String fileName) {
    final ext = fileName.split('.')[1];
    final subsIdx = currPath.indexOf(fileName.split('.')[1]) - 1;
    var res = currPath.substring(0, subsIdx);
    return "$res-compress.$ext";
  }

  Future<XFile?> testCompressAndGetFile(File file, String targetPath) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: 60,
    );

    // print(file.lengthSync());
    // print(result?.lengthSync());

    return result;
  }

  Future _pickImage(ImageSource source) async {
    try {
      var status = await Permission.camera.request();
      if (status.isGranted) {
        // final image = await ImagePicker().pickImage(
        //     source: source, preferredCameraDevice: CameraDevice.front);

        final firstCamera = cameras[1];

        final image = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CameraCapturePage(
                      camera: firstCamera,
                    )));

        if (image != null) {
          final imageComp = await testCompressAndGetFile(
              File(image.path), _addStringComp(image.path, image.name));
          setState(() {
            imageFile = File(imageComp!.path);
            widget.onImageSelected(imageFile?.path);
          });
          print("ImageFile: ${imageFile}");
        } else {
          setState(() {
            widget.onImageSelectedError("Failed to take a picture!");
          });
        }
      } else {
        setState(() {
          widget.onImageSelectedError("Camera permission rejected!");
        });
      }
    } catch (e, st) {
      setState(() {
        widget.onImageSelectedError(e.toString());
      });
      await MySentry.sendReport(e.toString(), st.toString());
    }
    // on PlatformException catch (e) {
    //   debugPrint('Failed to pick image: $e');
    // }
  }
}
