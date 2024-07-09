part of 'add_pengalaman_kerja_bloc.dart';

abstract class AddPengalamanKerjaEvent extends Equatable {
  const AddPengalamanKerjaEvent();

  @override
  List<Object> get props => [];
}

class AddDataPengalamanKerjaSubmited extends AddPengalamanKerjaEvent {
  String instansi;
  String bidangUsaha;
  String noTelp;
  String posisi;
  String tahunMasuk;
  String tahunKeluar;
  String alamat;
  int kotaId;
  File? suratReferensi;

  AddDataPengalamanKerjaSubmited({
    required this.instansi,
    required this.bidangUsaha,
    required this.noTelp,
    required this.posisi,
    required this.tahunMasuk,
    required this.tahunKeluar,
    required this.alamat,
    required this.kotaId,
    this.suratReferensi,
  });

  @override
  List<Object> get props => [
        instansi,
        bidangUsaha,
        noTelp,
        posisi,
        tahunMasuk,
        tahunKeluar,
        alamat,
        kotaId,
        suratReferensi!,
      ];
}

class OnSelectKota extends AddPengalamanKerjaEvent {
  const OnSelectKota();
  @override
  List<Object> get props => [];
}

class EditDataPengalamanKerjaSubmited extends AddPengalamanKerjaEvent {
  int pengalamanId;
  String instansi;
  String bidangUsaha;
  String noTelp;
  String posisi;
  String tahunMasuk;
  String tahunKeluar;
  String alamat;
  int kotaId;
  File? suratReferensi;

  EditDataPengalamanKerjaSubmited({
    required this.pengalamanId,
    required this.instansi,
    required this.bidangUsaha,
    required this.noTelp,
    required this.posisi,
    required this.tahunMasuk,
    required this.tahunKeluar,
    required this.alamat,
    required this.kotaId,
    this.suratReferensi,
  });

  @override
  List<Object> get props => [
    pengalamanId,
        instansi,
        bidangUsaha,
        noTelp,
        posisi,
        tahunMasuk,
        tahunKeluar,
        alamat,
        kotaId,
        suratReferensi!,
      ];
}