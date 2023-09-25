part of 'add_check_in_out_bloc.dart';

abstract class AddCheckInOutEvent extends Equatable {
  const AddCheckInOutEvent();

  @override
  List<Object> get props => [];
}

class AddCheckInOutSubmited extends AddCheckInOutEvent {}

class AddCheckInOutFormDataAdded extends AddCheckInOutEvent {
  AddCheckInOutModel formData;

  AddCheckInOutFormDataAdded({
    required this.formData,
  });

  @override
  List<Object> get props => [formData];
}
