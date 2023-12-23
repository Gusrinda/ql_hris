import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/model/pengumuman/pengumuman_model.dart';
import 'package:sj_presensi_mobile/services/pengumuman_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

part 'pengumuman_event.dart';
part 'pengumuman_state.dart';

class PengumumanBloc extends Bloc<PengumumanEvent, PengumumanState> {
  PengumumanBloc() : super(ListPengumumanInitial()) {
    on<GetListPengumuman>((event, emit) async {
      emit(ListPengumumanLoading());
      try {
        var response = await PengumumanServices.getPengumuman();
        if (response is ServicesSuccess) {
          // Check if response contains data property
          if (response.response != null &&
              response.response is List<dynamic>) {
            List<dynamic> responseData = response.response;
            // Convert dynamic list to List<PengumumanModel>
            List<PengumumanModel> data = responseData
                .map((json) => PengumumanModel.fromJson(json))
                .toList();
            emit(ListPengumumanSuccess(dataPengumuman: data));
          } else {
            emit(ListPengumumanFailed(message: "Failed to get data"));
          }
        } else {
          emit(ListPengumumanFailed(message: "Failed to get data"));
        }
      } catch (e) {
        emit(ListPengumumanFailed(message: "An error occurred: $e"));
      }
    });
  }
}

