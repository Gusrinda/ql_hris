part of 'list_cuti_bloc.dart';

abstract class ListCutiEvent extends Equatable {
  const ListCutiEvent();

  @override
  List<Object> get props => [];
}

class GetListCuti extends ListCutiEvent {
  DateTime date;

  GetListCuti({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class SortByCuti extends ListCutiEvent {
  final DateTime? selectedMonth;
  final DateTime? selectedYear;

  SortByCuti({this.selectedYear, this.selectedMonth});

  @override
  List<Object> get props => [
        selectedMonth != null ? selectedMonth! : "",
        selectedYear != null ? selectedYear! : ""
      ];
}