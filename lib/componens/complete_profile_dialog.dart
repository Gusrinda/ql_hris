// Fungsi untuk memeriksa apakah profil sudah lengkap
import 'package:flutter/material.dart';

bool isProfileComplete() {
  // Gantilah logika ini dengan kondisi sesuai dengan profil aplikasi Anda
  return false;
}

// Fungsi untuk menampilkan dialog
void showIncompleteProfileDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Lengkapi Profil'),
        content: Text('Profil Anda belum lengkap. Silakan lengkapi profil Anda.'),
        actions: [
          TextButton(
            onPressed: () {
              // Gantilah dengan navigasi ke layar pengaturan profil
              Navigator.of(context).pop(); // Tutup dialog
            },
            child: Text('Lengkapi Sekarang'),
          ),
        ],
      );
    },
  );
}
