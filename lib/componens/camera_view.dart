import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camera/camera.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class CameraCapturePage extends StatefulWidget {
  const CameraCapturePage({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<CameraCapturePage> createState() => _CameraCapturePageState();
}

class _CameraCapturePageState extends State<CameraCapturePage> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _controller = CameraController(widget.camera, ResolutionPreset.high);
    await _controller.initialize();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    try {
      final XFile file = await _controller.takePicture();
      Navigator.pop(context, file);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.value.isInitialized) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: themeAppColor,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            toolbarHeight: 70,
            title: Text(
                      "Posisikan wajah pada lingkaran",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,),
                    ),
          ),
          body: Stack(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    child: CameraPreview(_controller),
                  ),
                ],
              ),
              CustomPaint(
                painter: OverlayPainter(
                    screenWidth: MediaQuery.of(context).size.width,
                    screenHeight: MediaQuery.of(context).size.height),
              ),
              Positioned(
                bottom: 0, // Atur ke '0' untuk posisikan di paling bawah
                left: 0, // Atur ke '0' untuk posisikan di paling kiri
                right: 0, // Atur ke '0' untuk posisikan di paling kanan
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColorsConst.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(0), // Atur radius menjadi 0
                    ),
                  ),
                  onPressed: () async {
                    // Tambahkan logika untuk mengambil foto atau merekam video di sini
                    final XFile picture = await _controller.takePicture();
                    Navigator.pop(context, picture);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.camera_alt_rounded,
                          size: 40,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.center,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Posisikan wajah pada lingkaran",
              //         style: GoogleFonts.poppins(
              //             color: Colors.white,
              //             fontSize: 14,
              //             fontFamily: 'Poppins'),
              //       ),
              //       SizedBox(
              //         height: MediaQuery.of(context).size.height * 0.7,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}

class OverlayPainter extends CustomPainter {
  final double screenWidth;
  final double screenHeight;

  OverlayPainter({required this.screenWidth, required this.screenHeight});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = screenWidth * 0.4;
    final strokeWidth = 0.0;
    final circlePath = Path()
      ..addOval(Rect.fromLTRB(
        (screenWidth / 2) - (radius * 0.7),
        (screenHeight / 3 + 40) - radius,
        (screenWidth / 2) + (radius * 0.7),
        (screenHeight / 3 + 40) + radius,
      ));

    final outerPath = Path()
      ..addRect(Rect.fromLTWH(0, 0, screenWidth, screenHeight));
    final overlayPath =
        Path.combine(PathOperation.difference, outerPath, circlePath);

    final paint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawPath(overlayPath, paint);
    canvas.drawCircle(
      Offset(screenWidth / 2, screenHeight / 2.5),
      radius,
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
