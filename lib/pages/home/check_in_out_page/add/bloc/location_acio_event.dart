part of 'location_acio_bloc.dart';

abstract class LocationAcioEvent extends Equatable {
  const LocationAcioEvent();

  @override
  List<Object> get props => [];
}

class FetchLocationAcio extends LocationAcioEvent {}

class StartLocationTrackingLocationAcio extends LocationAcioEvent {}

class GetLastLocationTrackingLocationAcio extends LocationAcioEvent {}
