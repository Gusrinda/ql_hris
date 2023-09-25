import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/time.dart';

part 'time_acio_event.dart';
part 'time_acio_state.dart';

class TimeAcioBloc extends Bloc<TimeAcioEvent, TimeAcioState> {
  TimeAcioBloc(MyTimer myTimer) : super(TimeAcioInitial()) {
    on<StartDateTimeTimeAcio>(
      (event, emit) async {
        await emit.onEach<DateTime>(
          myTimer.getDateTimeNow(),
          onData: (dateTime) => emit(
            TimeAcioLoadSuccess(dateTime: dateTime),
          ),
        );
      },
    );
  }
}
