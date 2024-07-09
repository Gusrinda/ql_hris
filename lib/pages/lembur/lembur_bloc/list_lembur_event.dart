part of 'list_lembur_bloc.dart';

abstract class ListLemburEvent extends Equatable {
  const ListLemburEvent();

  @override
  List<Object> get props => [];
}

class GetListLembur extends ListLemburEvent {
  DateTime date;

  GetListLembur({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class SortByLembur extends ListLemburEvent {
  final DateTime? selectedMonth;
  final DateTime? selectedYear;

  SortByLembur({this.selectedYear, this.selectedMonth});

  @override
  List<Object> get props => [
        selectedMonth != null ? selectedMonth! : "",
        selectedYear != null ? selectedYear! : ""
      ];
}