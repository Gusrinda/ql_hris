part of 'add_prestasi_bloc.dart';


abstract class AddPrestasiEvent extends Equatable {
  const AddPrestasiEvent();
  @override
  List<Object> get props => [];
}

class AddDataPrestasiSubmited extends AddPrestasiEvent {
  String namaPres;
  String tahun;
  // String desc;
  int tingkatPresId;

  AddDataPrestasiSubmited({
    required this.namaPres,
    required this.tahun,
    // required this.desc,
    required this.tingkatPresId,
  });

  @override
  List<Object> get props => [
        namaPres,
        tahun,
        // desc,
        tingkatPresId,
      ];
}

class OnSelectTingkatPrestasi extends AddPrestasiEvent {
  const OnSelectTingkatPrestasi();
  @override
  List<Object> get props => [];
}

class EditDataPrestasiSubmited extends AddPrestasiEvent {
  int prestasiId;
  String namaPres;
  String tahun;
  // String desc;
  int tingkatPresId;

  EditDataPrestasiSubmited({
    required this.prestasiId,
    required this.namaPres,
    required this.tahun,
    // required this.desc,
    required this.tingkatPresId,
  });

  @override
  List<Object> get props => [
    prestasiId,
        namaPres,
        tahun,
        // desc,
        tingkatPresId,
      ];
}