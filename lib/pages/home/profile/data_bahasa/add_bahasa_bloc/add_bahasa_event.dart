part of 'add_bahasa_bloc.dart';

abstract class AddBahasaEvent extends Equatable {
  const AddBahasaEvent();

  @override
  List<Object> get props => [];
}

class AddDatabahasaSubmited extends AddBahasaEvent {
  String bhsDikuasai;
  int nilaiLisan;
  int nilaiTertulis;

  AddDatabahasaSubmited({
    required this.bhsDikuasai,
    required this.nilaiLisan,
    required this.nilaiTertulis,
  });

  @override
  List<Object> get props => [
        bhsDikuasai,
        nilaiLisan,
        nilaiTertulis,
      ];
}

class EditDatabahasaSubmited extends AddBahasaEvent {
  int bahasaId;
  String bhsDikuasai;
  int nilaiLisan;
  int nilaiTertulis;

  EditDatabahasaSubmited({
    required this.bahasaId,
    required this.bhsDikuasai,
    required this.nilaiLisan,
    required this.nilaiTertulis,
  });

  @override
  List<Object> get props => [
        bahasaId,
        bhsDikuasai,
        nilaiLisan,
        nilaiTertulis,
      ];
}
