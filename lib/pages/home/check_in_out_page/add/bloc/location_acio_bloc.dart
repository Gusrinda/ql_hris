import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/location.dart';

part 'location_acio_event.dart';
part 'location_acio_state.dart';

class LocationAcioBloc extends Bloc<LocationAcioEvent, LocationAcioState> {
  LocationAcioBloc(MyLocation myLocation) : super(LocationAcioInitial()) {
    on<StartLocationTrackingLocationAcio>(
      (event, emit) async {
        emit(LocationAcioLoading());
        var loc = await myLocation.getLastLocation();
        if (loc.myLocationMessage.isSuccess) {
          if (loc.isOnSite != null) {
            emit(
              LocationAcioLoadSuccess(
                isOnSite: loc.isOnSite ?? false,
                latitude: loc.latitude ?? "-",
                longitude: loc.longitude ?? "-",
                location: loc.address ?? "-",
              ),
            );
          }
        } else {
          emit(LocationAcioLoadFailed(
            message: loc.myLocationMessage.message!,
          ));
        }
        await emit.onEach<MyLocationModel>(
          myLocation.getLocation(),
          onData: (loc) {
            if (loc.myLocationMessage.isSuccess) {
              emit(
                LocationAcioLoadSuccess(
                  isOnSite: loc.isOnSite ?? false,
                  latitude: loc.latitude ?? "-",
                  longitude: loc.longitude ?? "-",
                  location: loc.address ?? "-",
                ),
              );
            } else {
              emit(LocationAcioLoadFailed(
                message: loc.myLocationMessage.message!,
              ));
            }
          },
        ).catchError((onError) {
          emit(LocationAcioLoadFailed(
            message:
                "Failed get the current location, please check your internet connection and try again!",
          ));
        });
      },
    );
    on<GetLastLocationTrackingLocationAcio>(
      (event, emit) async {
        emit(LocationAcioLoading());
        var loc = await myLocation.getLastLocation();
        if (loc.myLocationMessage.isSuccess) {
          emit(
            LastLocationAcioLoadSuccess(
              isOnSite: loc.isOnSite ?? false,
              latitude: loc.latitude ?? "-",
              longitude: loc.longitude ?? "-",
              location: loc.address ?? "-",
            ),
          );
        } else {
          emit(LocationAcioLoadFailed(
            message: loc.myLocationMessage.message!,
          ));
        }
      },
    );
  }
}
