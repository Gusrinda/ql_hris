part of 'check_in_out_bloc.dart';

abstract class CheckInOutState extends Equatable {
  const CheckInOutState();

  @override
  List<Object> get props => [];
}

class CheckInOutInitial extends CheckInOutState {}

class CheckInOutLoading extends CheckInOutState {}

class CheckInOutSuccessInBackground extends CheckInOutState {
  String? name;
  String? fotoProfil;
  String? cutiMasaKerja;
  String? cutiTahunan;
  String? p24;
  bool isCheckin;

  CheckInOutSuccessInBackground({
    this.name,
    this.fotoProfil,
    this.cutiMasaKerja,
    this.cutiTahunan,
    this.p24,
    required this.isCheckin,
  });

  @override
  List<Object> get props =>
      [name!, fotoProfil!, cutiMasaKerja!, cutiTahunan!, p24!, isCheckin];
}

class InfoCheckInOutSuccessInBackground extends CheckInOutState {
  String? name;
  String? fotoProfil;
  String? cutiMasaKerja;
  String? cutiTahunan;
  String? p24;

  InfoCheckInOutSuccessInBackground({
    this.name,
    this.fotoProfil,
    this.cutiMasaKerja,
    this.cutiTahunan,
    this.p24,
  });

  @override
  List<Object> get props => [
        name!,
        fotoProfil!,
        cutiMasaKerja!,
        cutiTahunan!,
        p24!,
      ];
}

class CheckInOutFailedInBackground extends CheckInOutState {}

class CheckInOutFailed extends CheckInOutState {
  String message;

  CheckInOutFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class CheckInOutFailedUserExpired extends CheckInOutState {
  String message;

  CheckInOutFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
