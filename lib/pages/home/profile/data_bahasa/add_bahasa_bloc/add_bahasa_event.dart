part of 'add_bahasa_bloc.dart';

abstract class AddBahasaEvent extends Equatable {
  const AddBahasaEvent();

  @override
  List<Object> get props => [];
}

class AddDatabahasaSubmited extends AddBahasaEvent {
  String bhsDikuasai;
  String nilaiLisan;
  String nilaiTertulis;

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