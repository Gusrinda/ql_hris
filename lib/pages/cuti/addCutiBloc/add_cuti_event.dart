part of 'add_cuti_bloc.dart';

abstract class AddCutiEvent extends Equatable {
  const AddCutiEvent();

  @override
  List<Object> get props => [];
}

class AddCutiSubmited extends AddCutiEvent {
  int? alasan;
  int tipeCuti;
  String keterangan;
  String? suratDokter;
  String dateFrom;
  String dateTo;
  String? timeFrom;
  String? timeTo;

  AddCutiSubmited({
    this.alasan,
    required this.tipeCuti,
    required this.keterangan,
    this.suratDokter,
    required this.dateFrom,
    required this.dateTo,
    this.timeFrom,
    this.timeTo,
  });

  @override
  List<Object> get props => [
        alasan!,
        tipeCuti,
        keterangan,
        suratDokter!,
        dateFrom,
        dateTo,
        timeFrom!,
        timeTo!,
      ];
}

class EditCutiSubmited extends AddCutiEvent {
  int cutiID;
  int? alasan;
  int tipeCuti;
  String keterangan;
  String? suratDokter;
  String dateFrom;
  String dateTo;
  String? timeFrom;
  String? timeTo;

  EditCutiSubmited({
    required this.cutiID,
    this.alasan,
    required this.tipeCuti,
    required this.keterangan,
    this.suratDokter,
    required this.dateFrom,
    required this.dateTo,
    this.timeFrom,
    this.timeTo,
  });

  @override
  List<Object> get props => [
        cutiID,
        alasan!,
        tipeCuti,
        keterangan,
        suratDokter!,
        dateFrom,
        dateTo,
        timeFrom!,
        timeTo!,
      ];
}

class OnUploadingFile extends AddCutiEvent {
  File? storedFile;

  OnUploadingFile({
    this.storedFile,
  });

  @override
  List<Object> get props => [
        storedFile!,
      ];
}

class OnSelectAlasanCuti extends AddCutiEvent {
  OnSelectAlasanCuti();
  @override
  List<Object> get props => [];
}

class OnSelectTipeCuti extends AddCutiEvent {
  OnSelectTipeCuti();
  @override
  List<Object> get props => [];
}
