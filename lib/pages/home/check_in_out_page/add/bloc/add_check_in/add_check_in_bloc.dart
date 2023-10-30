import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_check_in_event.dart';
part 'add_check_in_state.dart';

class AddCheckInBloc extends Bloc<AddCheckInEvent, AddCheckInState> {
  AddCheckInBloc() : super(AddCheckInInitial()) {
    on<AddCheckInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
