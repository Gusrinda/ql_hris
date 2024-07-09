import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final int pageNumber;

  FormPage({required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Form Page $pageNumber',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          // Add your form widgets here
          // Example:
          TextFormField(
            decoration: InputDecoration(labelText: 'Field 1'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Field 2'),
          ),
        ],
      ),
    );
  }
}
