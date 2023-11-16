import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:sj_presensi_mobile/sentry/my_sentry.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ImageFormCustomV2 extends StatefulWidget {
  String? imagePath;
  Function(String? filePath) onImageSelected;
  Function(String message) onImageSelectedError;
  ImageFormCustomV2({
    Key? key,
    this.imagePath,
    required this.onImageSelected,
    required this.onImageSelectedError,
  }) : super(key: key);

  @override
  State<ImageFormCustomV2> createState() => _ImageFormCustomV1State();
}

class _ImageFormCustomV1State extends State<ImageFormCustomV2> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () => _pickImage(ImageSource.camera),
      onLongPress: () {
        setState(() {
          widget.onImageSelected(null);
          imageFile = null;
        });
      },
      child: Container(
        width: size.width * 1 / 4 + 10,
        height: size.width * 1 / 4 + 10,
        padding: const EdgeInsets.all(3.0),
        decoration: const BoxDecoration(
          color: MyColorsConst.primaryColor,
          shape: BoxShape.circle,
        ),
        child: Container(
          width: size.width * 1 / 4 + 10,
          height: size.width * 1 / 4 + 10,
          padding: const EdgeInsets.all(2.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                imageFile == null
                    ? widget.imagePath != null
                        ? CachedNetworkImage(
                            imageUrl: widget.imagePath!,
                            imageBuilder: (context, imageProvider) {
                              final size = MediaQuery.of(context).size;
                              return Container(
                                width: size.width,
                                height: size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              );
                            },
                            placeholder: (context, url) {
                              final size = MediaQuery.of(context).size;
                              return SizedBox(
                                width: size.width,
                                height: size.width,
                                child: const CircularProgressIndicator(),
                              );
                            },
                            errorWidget: (context, url, error) =>
                                Builder(builder: (context) {
                              final size = MediaQuery.of(context).size;
                              return Container(
                                width: size.width * 1 / 4,
                                height: size.width * 1 / 4,
                                decoration: const BoxDecoration(
                                  color: MyColorsConst.lightDarkColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.close,
                                    size: size.width * 1 / 5,
                                    color: MyColorsConst.semiDarkColor,
                                  ),
                                ),
                              );
                            }),
                          )
                        : SvgPicture.asset(
                            width: size.width * 1 / 4,
                            "assets/icons/bi_people_circle.svg",
                            fit: BoxFit.fitWidth,
                            color: MyColorsConst.primaryColor,
                          )
                    : ClipOval(
                        child: Image.file(
                          width: size.width * 1 / 4,
                          height: size.width * 1 / 4,
                          imageFile!,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: MyColorsConst.whiteColor,
                    radius: 14,
                    child: CircleAvatar(
                      backgroundColor: MyColorsConst.greenColor,
                      radius: 12,
                      child: Icon(
                        imageFile == null && widget.imagePath == null
                            ? Icons.add
                            : Icons.edit,
                        color: MyColorsConst.whiteColor,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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

  _addStringComp(String currPath, String fileName) {
    final ext = fileName.split('.')[1];
    final subsIdx = currPath.indexOf(fileName.split('.')[1]) - 1;
    var res = currPath.substring(0, subsIdx);
    return "$res-compress.$ext";
  }

  Future _pickImage(ImageSource source) async {
    try {
      var status = await Permission.camera.request();
      if (status.isGranted) {
        final image = await ImagePicker().pickImage(
            source: source, preferredCameraDevice: CameraDevice.front);
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
        imageFile = null;
        widget.onImageSelectedError(e.toString());
      });
      setState(() {});
      await MySentry.sendReport(e, st);
    }
  }
}
