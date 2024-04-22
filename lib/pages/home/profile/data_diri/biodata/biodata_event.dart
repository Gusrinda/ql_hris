part of 'biodata_bloc.dart';

abstract class BiodataEvent extends Equatable {
  const BiodataEvent();

  @override
  List<Object> get props => [];
}

class GetBiodata extends BiodataEvent {
  GetBiodata();
  @override
  List<Object> get props => [];
}
