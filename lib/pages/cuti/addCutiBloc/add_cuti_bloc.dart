import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cuti_event.dart';
part 'add_cuti_state.dart';

class AddCutiBloc extends Bloc<AddCutiEvent, AddCutiState> {
  AddCutiBloc() : super(AddCutiInitial()) {
    on<AddCutiEvent>((event, emit) async {
      // TODO: implement event handler
    });
  }
}
