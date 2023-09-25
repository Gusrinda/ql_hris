part of 'location_acio_bloc.dart';

abstract class LocationAcioState extends Equatable {
  const LocationAcioState();

  @override
  List<Object> get props => [];
}

class LocationAcioInitial extends LocationAcioState {}

class LocationAcioLoading extends LocationAcioState {}

class LocationAcioLoadSuccess extends LocationAcioState {
  String location;
  String latitude;
  String longitude;
  bool isOnSite;

  LocationAcioLoadSuccess({
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.isOnSite,
  });

  @override
  List<Object> get props => [
        location,
        latitude,
        longitude,
        isOnSite,
      ];
}

class LastLocationAcioLoadSuccess extends LocationAcioState {
  String location;
  String latitude;
  String longitude;
  bool isOnSite;

  LastLocationAcioLoadSuccess({
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.isOnSite,
  });

  @override
  List<Object> get props => [
        location,
        latitude,
        longitude,
        isOnSite,
      ];
}

class LocationAcioLoadFailed extends LocationAcioState {
  String message;

  LocationAcioLoadFailed({required this.message});

  @override
  List<Object> get props => [message];
}
