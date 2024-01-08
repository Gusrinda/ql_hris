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
  int? picID;
  String? noDoc;
  File? doc;
  String keterangan;

  OnSumbitLembur(
      {required this.dateLembur,
      required this.alasanLemburID,
      required this.tipeLemburID,
      required this.timeFrom,
      required this.timeTo,
      this.picID,
      this.noDoc,
      this.doc,
      required this.keterangan});

  @override
  List<Object> get props => [
        dateLembur,
        alasanLemburID,
        tipeLemburID,
        timeFrom,
        timeTo,
        picID!,
        noDoc!,
        doc!,
        keterangan
      ];
}

class OnSelectPic extends AddLemburEvent {
  OnSelectPic();

  @override
  List<Object> get props => [];
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

class OnEditLembur extends AddLemburEvent {
  int lemburID;
  String dateLembur;
  int alasanLemburID;
  int tipeLemburID;
  String timeFrom;
  String timeTo;
  int? picID;
  String? noDoc;
  File? doc;
  String keterangan;

  OnEditLembur({
    required this.lemburID,
    required this.dateLembur,
    required this.alasanLemburID,
    required this.tipeLemburID,
    required this.timeFrom,
    required this.timeTo,
    this.picID,
    this.noDoc,
    this.doc,
    required this.keterangan,
  });

  @override
  List<Object> get props => [
        lemburID,
        dateLembur,
        alasanLemburID,
        tipeLemburID,
        timeFrom,
        timeTo,
        picID!,
        noDoc!,
        doc!,
        keterangan
      ];
}
