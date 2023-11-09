part of 'detail_lembur_bloc.dart';

class DetailLemburState extends Equatable {
  const DetailLemburState();

  @override
  List<Object> get props => [];
}

class DetailLemburInitial extends DetailLemburState {}

class DetailLemburLoading extends DetailLemburState {}

class DetailLemburSuccessInBackground extends DetailLemburState {
  Data dataDetailLembur;

  DetailLemburSuccessInBackground({
    required this.dataDetailLembur,
  });

  @override
  List<Object> get props => [dataDetailLembur];
}

class DetailLemburFailedInBackground extends DetailLemburState {
  String message;

  DetailLemburFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class DetailLemburFailed extends DetailLemburState {
  String message;

  DetailLemburFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class DetailLemburFailedUserExpired extends DetailLemburState {
  String message;

  DetailLemburFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
