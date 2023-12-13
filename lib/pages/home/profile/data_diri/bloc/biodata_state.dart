part of 'biodata_bloc.dart';

abstract class BiodataState extends Equatable {
  const BiodataState();

  @override
  List<Object> get props => [];
}

class BiodataInitial extends BiodataState {}

class BiodataLoading extends BiodataState {}

class BiodataSuccessInBackground extends BiodataState {}

class GetBiodataSuccess extends BiodataState {
  Biodata? bioData;

  GetBiodataSuccess({this.bioData});

  @override
  List<Object> get props => [bioData!];
}

class BiodataFailedInBackground extends BiodataState {}

class BiodataFailed extends BiodataState {
  String message;

  BiodataFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class BiodataFailedUserExpired extends BiodataState {
  String message;

  BiodataFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
