import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_check_out_event.dart';
part 'add_check_out_state.dart';

class AddCheckOutBloc extends Bloc<AddCheckOutEvent, AddCheckOutState> {
  AddCheckOutBloc() : super(AddCheckOutInitial()) {
    on<AddCheckOutEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
