part of 'add_lembur_bloc.dart';

abstract class AddLemburEvent extends Equatable {
  const AddLemburEvent();

  @override
  List<Object> get props => [];
}

class OnSumbitLembur extends AddLemburEvent {
    String dateLembur;
    int alasanLemburID;
    int tipeLemburID;
    String timeFrom;
    String timeTo;
    String? noDoc;
    File? doc;
    String keterangan;


  OnSumbitLembur({
    required this.dateLembur,
    required this.alasanLemburID,
    required this.tipeLemburID,
    required this.timeFrom,
    required this.timeTo,
    this.noDoc,
    this.doc,
    required this.keterangan
  });

  @override
  List<Object> get props => [
        dateLembur,
        alasanLemburID,
        tipeLemburID,
        timeFrom,
        timeTo,
        noDoc!,
        doc!,
        keterangan
      ];
}

class OnSelectAlasanLembur extends AddLemburEvent {
  OnSelectAlasanLembur();
  @override
  List<Object> get props => [];
}

class OnSelectTipeLembur extends AddLemburEvent {
  OnSelectTipeLembur();
  @override
  List<Object> get props => [];
}
