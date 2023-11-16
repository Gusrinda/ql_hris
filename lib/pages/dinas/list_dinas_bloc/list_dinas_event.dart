part of 'list_dinas_bloc.dart';

abstract class ListDinasEvent extends Equatable{
  const ListDinasEvent();

  @override
  List<Object> get props => [];
}

class GetListDinas extends ListDinasEvent {
  DateTime date;

  GetListDinas({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class GetUsername extends ListDinasEvent {
  String username;

  GetUsername({
    required this.username,
  });

  @override
  List<Object> get props => [username];
}

class SortByDinas extends ListDinasEvent {
  final DateTime? selectedMonth;
  final DateTime? selectedYear;

  SortByDinas({this.selectedYear, this.selectedMonth});

  @override
  List<Object> get props => [
        selectedMonth != null ? selectedMonth! : "",
        selectedYear != null ? selectedYear! : ""
      ];
}