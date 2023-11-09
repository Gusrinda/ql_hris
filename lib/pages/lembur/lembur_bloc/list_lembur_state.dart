part of 'list_lembur_bloc.dart';

class ListLemburState extends Equatable {
  const ListLemburState();

  @override
  List<Object> get props => []; 
}

class LemburInitial extends ListLemburState {}

class LemburLoading extends ListLemburState {}

class LemburSuccessInBackground extends ListLemburState {
  List<Datum> dataLembur;

  LemburSuccessInBackground({
    required this.dataLembur,
  });

  @override
  List<Object> get props => [dataLembur];
}

class LemburFailedInBackground extends ListLemburState {
  String message;
  LemburFailedInBackground({required this.message});
}

class LemburFailed extends ListLemburState {
  String message;
  LemburFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class LemburFailedUserExpired extends ListLemburState {
  String message;

  LemburFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}