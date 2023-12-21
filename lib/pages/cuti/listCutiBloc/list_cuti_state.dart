part of 'list_cuti_bloc.dart';

abstract class ListCutiState extends Equatable {
  const ListCutiState();

  @override
  List<Object> get props => [];
}

class ListCutiInitial extends ListCutiState {}

class ListCutiLoading extends ListCutiState {}

class ListCutiSuccessInBackground extends ListCutiState {
  List<DataListCuti> dataCuti;
  String username;
  String totalSisaCuti;
  String totalCutiTerpakai;
  String sisaCutiTahunan;
  String sisaCutiMasaKerja;
  String jatahCutiTahunan;
  String jatahCutiMasaKerja;

  ListCutiSuccessInBackground({
    required this.dataCuti,
    required this.username,
    required this.totalSisaCuti,
    required this.sisaCutiTahunan,
    required this.sisaCutiMasaKerja,
    required this.totalCutiTerpakai,
    required this.jatahCutiTahunan,
    required this.jatahCutiMasaKerja,
  });

  @override
  List<Object> get props => [
        dataCuti,
        username,
        totalSisaCuti,
        totalCutiTerpakai,
        sisaCutiTahunan,
        sisaCutiMasaKerja,
        jatahCutiTahunan,
        jatahCutiMasaKerja
      ];
}

class ListCutiFailedInBackground extends ListCutiState {
  String message;
  ListCutiFailedInBackground({required this.message});
}

class ListCutiFailed extends ListCutiState {
  String message;
  ListCutiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListCutiFailedUserExpired extends ListCutiState {
  String message;

  ListCutiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
