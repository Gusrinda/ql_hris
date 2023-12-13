import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';

class DataDiriControllers {

  ///Inisiasi Data Awal ke Controller
  final Biodata bioData;
  DataDiriControllers({required this.bioData}) {
    initializeControllers();
  }

  void initializeControllers() {
    //Divisi
    idDivisiController.text = bioData.mDivisiId.toString();
    valueDivisiController.text = bioData.div ?? '';

    //Departemen
    idDepartemenController.text = bioData.mDeptId.toString();
    valueDepartemenController.text = bioData.dept ?? '';

    //Posisi
    idPosisiController.text = bioData.mPosisiId.toString();
    valuePosisiController.text = bioData.posisi ?? '';

    //Zona
    idZonaController.text = bioData.mZonaId.toString();
    valueZonaController.text = bioData.zona ?? '';

    //Standard Gaji
    idStandardGajiController.text = bioData.mStandartGajiId.toString();
    valueStandardGajiController.text = bioData.mStandartGajiId.toString() ?? '';

    // Costcentre
    idCostcentreController.text = bioData.costcontreId.toString();
    valueCostcentreController.text = bioData.costcontreId.toString() ?? '';

    //Kode Presensi
    valueKodePresensiController.text = bioData.kodePresensi.toString() ?? '';

    // Status
    valueStatusController.text = bioData.isActive.toString() ?? '';
  }

  // Divisi Controller
  final TextEditingController idDivisiController = TextEditingController();
  final TextEditingController valueDivisiController = TextEditingController();

  // Departemen Controller
  final TextEditingController idDepartemenController = TextEditingController();
  final TextEditingController valueDepartemenController =
      TextEditingController();

  // Posisi Controller
  final TextEditingController idPosisiController = TextEditingController();
  final TextEditingController valuePosisiController = TextEditingController();

  // Zona Controller
  final TextEditingController idZonaController = TextEditingController();
  final TextEditingController valueZonaController = TextEditingController();

  // Standard Gaji
  final TextEditingController idStandardGajiController =
      TextEditingController();
  final TextEditingController valueStandardGajiController =
      TextEditingController();

  // Costcentre Controller
  final TextEditingController idCostcentreController = TextEditingController();
  final TextEditingController valueCostcentreController =
      TextEditingController();

  // Kode Presensi Controller
  final TextEditingController idKodePresensiController = TextEditingController();
  final TextEditingController valueKodePresensiController =
      TextEditingController();

  // Status Controller
  final TextEditingController idStatusController = TextEditingController();
  final TextEditingController valueStatusController = TextEditingController();

  // Nama Controller
  final TextEditingController nikController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController namaPanggilanController = TextEditingController();

  // Jenis Kelamin Controller
  final TextEditingController jenisKelaminController = TextEditingController();

  // Tempat Lahir Controller
  final TextEditingController idTempatLahirController = TextEditingController();
  final TextEditingController valueTempatLahirController =
      TextEditingController();

  // Tanggal Lahir Controller
  final TextEditingController tanggalLahirController = TextEditingController();

  // Alamat Tinggal Cotroller
  final TextEditingController alamatTinggalController = TextEditingController();

  // Provinsi Controller
  final TextEditingController idProvinsiController = TextEditingController();
  final TextEditingController valueProvinsiController = TextEditingController();

  // Kota Controller
  final TextEditingController idKotaController = TextEditingController();
  final TextEditingController valueKotaController = TextEditingController();

  // Kecamatan Controller
  final TextEditingController idKecamatanController = TextEditingController();
  final TextEditingController valueKecamatanController =
      TextEditingController();

  // Kode Pos dan telepon Controller
  final TextEditingController kodePosController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController noTelpLainnyaController = TextEditingController();
  final TextEditingController namaKontakDaruratController =
      TextEditingController();
  final TextEditingController hubkaryawanController = TextEditingController();

  // Agama Controller
  final TextEditingController idAgamaController = TextEditingController();
  final TextEditingController valueAgamaController = TextEditingController();

  // Gol Darah Controller
  final TextEditingController idGolDarahController = TextEditingController();
  final TextEditingController valueGolDarahController = TextEditingController();

  // Status Pernikahan Controller
  final TextEditingController idStatusPernikahanController =
      TextEditingController();
  final TextEditingController valueStatusPernikahanController =
      TextEditingController();

  // Jumlah Tanggungan Controller
  final TextEditingController idJumlahTanggunganController =
      TextEditingController();
  final TextEditingController valueJumlahTanggunganController =
      TextEditingController();

  // Info Lain Controller
  final TextEditingController jatahCutiRegController = TextEditingController();
  final TextEditingController sisaCutiRegController = TextEditingController();
  final TextEditingController jatahCutiKerjaController =
      TextEditingController();
  final TextEditingController sisaCutiKerjaController = TextEditingController();
  final TextEditingController tanggalMasukController = TextEditingController();
  final TextEditingController tanggalBerhentiController =
      TextEditingController();

  // Berkas Controller
  final TextEditingController fotoKaryawanController = TextEditingController();
  final TextEditingController fotoKtpController = TextEditingController();
  final TextEditingController noKtpController = TextEditingController();
  final TextEditingController alamatKtpController = TextEditingController();
  final TextEditingController fotoKkController = TextEditingController();
  final TextEditingController noKkController = TextEditingController();
  final TextEditingController fotoNpwpController = TextEditingController();
  final TextEditingController noNpwpController = TextEditingController();
  final TextEditingController tanggalNpwpController = TextEditingController();
  final TextEditingController fotoBpjsController = TextEditingController();
  final TextEditingController noBpjsController = TextEditingController();
  final TextEditingController idTipeBpjsController = TextEditingController();
  final TextEditingController valueTipeBpjsController = TextEditingController();
  final TextEditingController berkasLainnyaController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();

  // Ukuran Controller
  final TextEditingController ukBajuController = TextEditingController();
  final TextEditingController ukCelanaController = TextEditingController();
  final TextEditingController ukSepatuontroller = TextEditingController();

  // Pembayaran Controller
  final TextEditingController idPeriodeGajiController = TextEditingController();
  final TextEditingController valuePeriodeGajiController =
      TextEditingController();
  final TextEditingController idTipePembayaranController =
      TextEditingController();
  final TextEditingController valueTipePembayaranController =
      TextEditingController();
  final TextEditingController idMetodePembayaranController =
      TextEditingController();
  final TextEditingController valueMetodePembayaranController =
      TextEditingController();
  final TextEditingController idNamaBankController = TextEditingController();
  final TextEditingController valueNamaBankController = TextEditingController();
  final TextEditingController noRekController = TextEditingController();
  final TextEditingController atasNamaController = TextEditingController();
}
