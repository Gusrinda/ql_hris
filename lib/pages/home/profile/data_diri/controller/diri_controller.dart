import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    valueStandardGajiController.text =
        bioData.mStandartGajiId?.toString() ?? '';

    // Costcentre
    idCostCentreController.text = bioData.costcontreId.toString();
    valueCostCentreController.text = bioData.costcontre?.toString() ?? '';

    //Kode Presensi
    valueKodePresensiController.text = bioData.kodePresensi?.toString() ?? '';

    // Status
    valueStatusController.text = bioData.isActive?.toString() ?? '';

    //NIK
    nikController.text = bioData.nik ?? '';

    //Nama
    namaLengkapController.text = bioData.namaLengkap ?? '';
    namaDepanController.text = bioData.namaDepan ?? '';
    namaBelakangController.text = bioData.namaBelakang ?? '';
    namaPanggilanController.text = bioData.namaPanggilan ?? '';

    //Jenis Kelamin
    idJenisKelaminController.text = bioData.jkId?.toString() ?? '';
    valueJenisKelaminController.text = bioData.jk ?? '';

    //Tempat Lahir
    idTempatLahirController.text = bioData.tempatLahir?.toString() ?? '';
    valueTempatLahirController.text = bioData.tempatLahir ?? '';

    tanggalLahirController.text = bioData.tglLahir != null
        ? DateFormat('yyyy-MM-dd').format(bioData.tglLahir!)
        : '';

    //alamat Tinggal
    alamatDomisiliTinggalController.text = bioData.alamatDomisili ?? '';
    alamatKtpController.text = bioData.alamatAsli ?? '';

    //provinsi
    idProvinsiController.text = bioData.provinsiId?.toString() ?? '';
    valueProvinsiController.text = bioData.provinsi ?? '';
    //kota
    idKotaController.text = bioData.kotaId?.toString() ?? '';
    valueKotaController.text = bioData.kota ?? '';
    //kecamatan
    idKecamatanController.text = bioData.kecamatanId?.toString() ?? '';
    valueKecamatanController.text = bioData.kecamatan ?? '';
    //kodepos
    kodePosController.text = bioData.kodePos ?? '';
    //noTelpon
    noTelpController.text = bioData.noTlp ?? '';
    //noTelponLainnya
    noTelpLainnyaController.text = bioData.noTlpLainnya ?? '';
    //noTelponDarurat
    noTelpDaruratController.text = bioData.noDarurat ?? '';
    //nama kontak darurat
    namaKontakDaruratController.text = bioData.namaKontakDarurat ?? '';
    //hubungan Dengan Karyawan
    hubkaryawanController.text = bioData.hubDgnKaryawan ?? '';
    //agama
    idAgamaController.text = bioData.agamaId?.toString() ?? '';
    valueAgamaController.text = bioData.agama ?? '';
    //golongan darah
    idGolDarahController.text = bioData.golDarahId?.toString() ?? '';
    valueGolDarahController.text = bioData.golDarah ?? '';
    //status nikah
    idStatusPernikahanController.text = bioData.statusNikahId?.toString() ?? '';
    valueStatusPernikahanController.text = bioData.statusNikah ?? '';
    //jumlah tanggungan
    idJumlahTanggunganController.text = bioData.tanggunganId?.toString() ?? '';
    valueJumlahTanggunganController.text = bioData.tanggungan ?? '';

    tanggalMasukController.text = bioData.tglLahir != null
        ? DateFormat('yyyy-MM-dd').format(bioData.tglLahir!)
        : '';

    // BERKAS
    noKtpController.text = bioData.ktpNo ?? '';
    noKkController.text = bioData.kkNo ?? '';
    noNpwpController.text = bioData.npwpNo ?? '';
    noBpjsController.text = bioData.bpjsNo ?? '';
    keteranganController.text = bioData.desc ?? '';

    //Tipe Bpjs
    idTipeBPJSController.text = bioData.bpjsTipeId?.toString() ?? '';
    valueTipeBPJSController.text = bioData.bpjsTipeId?.toString() ?? '';

    tanggalNpwpController.text = bioData.npwpTglBerlaku != null
        ? DateFormat('yyyy-MM-dd').format(bioData.npwpTglBerlaku!)
        : '';

    //UKURAN
    ukBajuController.text = bioData.ukBaju ?? ' ';
    ukCelanaController.text = bioData.ukCelana ?? '';
    ukSepatuontroller.text = bioData.ukSepatu ?? '';

    //PEMBAYARAN
    idNamaBankController.text = bioData.bankId?.toString() ?? '';
    valueNamaBankController.text = bioData.bank ?? '';
    noRekController.text = bioData.noRek ?? '';
    atasNamaController.text = bioData.atasNamaRek ?? '';
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
  final TextEditingController idCostCentreController = TextEditingController();
  final TextEditingController valueCostCentreController =
      TextEditingController();

  // Kode Presensi Controller
  final TextEditingController idKodePresensiController =
      TextEditingController();
  final TextEditingController valueKodePresensiController =
      TextEditingController();

  // Status Controller
  final TextEditingController idStatusController = TextEditingController();
  final TextEditingController valueStatusController = TextEditingController();

  // Nama Controller
  final TextEditingController nikController = TextEditingController();
  final TextEditingController namaLengkapController = TextEditingController();
  final TextEditingController namaDepanController = TextEditingController();
  final TextEditingController namaBelakangController = TextEditingController();
  final TextEditingController namaPanggilanController = TextEditingController();

  // Jenis Kelamin Controller
  final TextEditingController idJenisKelaminController =
      TextEditingController();
  final TextEditingController valueJenisKelaminController =
      TextEditingController();

  // Tempat Lahir Controller
  final TextEditingController idTempatLahirController = TextEditingController();
  final TextEditingController valueTempatLahirController =
      TextEditingController();

  // Tanggal Lahir Controller
  final TextEditingController tanggalLahirController = TextEditingController();

  // Alamat Domisili Tinggal Cotroller
  final TextEditingController alamatDomisiliTinggalController =
      TextEditingController();

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
  final TextEditingController noTelpDaruratController = TextEditingController();
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
  final TextEditingController idTipeBPJSController = TextEditingController();
  final TextEditingController valueTipeBPJSController = TextEditingController();
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
