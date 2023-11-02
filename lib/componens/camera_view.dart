import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';

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
        home: Scaffold(
          appBar: AppBar(
            title: Text('Camera View'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: CameraPreview(_controller),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Tambahkan logika untuk mengambil foto atau merekam video di sini
                  final XFile picture = await _controller.takePicture();

                  Navigator.pop(context, picture);
                },
                child: Text('Capture'),
              ),
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
