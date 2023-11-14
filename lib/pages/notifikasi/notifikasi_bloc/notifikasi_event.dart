part of 'notifikasi_bloc.dart';

abstract class NotifikasiEvent extends Equatable {
  const NotifikasiEvent();

   @override
  List<Object> get props => [];
}

class GetListNotifikasi extends NotifikasiEvent {
  GetListNotifikasi();
  @override
  List<Object> get props => [];
}