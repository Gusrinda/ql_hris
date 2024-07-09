import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PengumumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Pengumuman Page',
            style: GoogleFonts.poppins(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
