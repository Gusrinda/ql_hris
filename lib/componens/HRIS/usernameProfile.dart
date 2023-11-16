import 'package:flutter/material.dart';

class UserProfileProvider with ChangeNotifier {
  String _username = "";

  String get username => _username;

  // Fungsi untuk mengambil data profil pengguna
  Future<void> fetchData() async {
    // Implementasi logika pengambilan data dari API
    // ...

    // Simpan data ke provider
    _username = "username_from_api"; // Gantilah dengan data yang sebenarnya
    notifyListeners();
  }
}
