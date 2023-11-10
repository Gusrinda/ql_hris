part of 'list_dinas_bloc.dart';

class ListDinasEvent extends Equatable{
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