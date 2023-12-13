import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerForm extends StatefulWidget {
  final Function(File)? onFilePicked;

  const FilePickerForm({Key? key, this.onFilePicked}) : super(key: key);

  @override
  _FilePickerFormState createState() => _FilePickerFormState();
}

class _FilePickerFormState extends State<FilePickerForm> {
  File? _pickedFile;

  Future<void> _pickPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        _pickedFile = file;
      });
      if (widget.onFilePicked != null) {
        widget.onFilePicked!(file);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: _pickPDF,
          child: Text("Choose PDF"),
        ),
        SizedBox(height: 20),
        _pickedFile != null
            ? Text("Selected PDF: ${_pickedFile!.path}")
            : Container(),
      ],
    );
  }
}
