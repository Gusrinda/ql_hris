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
  String dateFrom;
  String dateTo;
  String? timeFrom;
  String? timeTo;


  AddCutiSubmited({
    this.alasan,
    required this.tipeCuti,
    required this.keterangan,
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
        dateFrom,
        dateTo,
        timeFrom!,
        timeTo!,

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

class EditCutiSubmited extends AddCutiEvent {
  int id;
  int alasan;
  int tipeCuti;
  String keterangan;
  String dateFrom;
  String dateTo;

  EditCutiSubmited({
    required this.id,
    required this.alasan,
    required this.tipeCuti,
    required this.keterangan,
    required this.dateFrom,
    required this.dateTo,
  });
  
  @override
  List<Object> get props => [
        id,
        alasan,
        tipeCuti,
        keterangan,
        dateFrom,
        dateTo,
      ];
}