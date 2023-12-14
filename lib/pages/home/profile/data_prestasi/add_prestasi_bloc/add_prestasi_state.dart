part of 'add_prestasi_bloc.dart';


abstract class AddPrestasiState extends Equatable {
  const AddPrestasiState();

    @override
  List<Object> get props => [];
}

class AddDataPrestasiInitial extends AddPrestasiState {}

class AddDataPrestasiLoading extends AddPrestasiState {}

class SelectTingkatSuccessInBackground extends AddPrestasiState {
  List<DataTingkat> dataTingkat;

  SelectTingkatSuccessInBackground({
    required this.dataTingkat,
  });

  @override
  List<Object> get props => [dataTingkat];
}

class AddDataPrestasiSuccess extends AddPrestasiState {
  String message;

  AddDataPrestasiSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPrestasiFailed extends AddPrestasiState {
  String message;

  AddDataPrestasiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPrestasiFailedInBackground extends AddPrestasiState {
  String message;

  AddDataPrestasiFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPrestasiFailedUserExpired extends AddPrestasiState {
  String message;

  AddDataPrestasiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}