import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/dinas_services.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_direktorat_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_jenisspd_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_lokasitujuan_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_templatespd_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_zona_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_dinas_event.dart';
part 'add_dinas_state.dart';

class AddDinasBloc extends Bloc<AddDinasEvent, AddDinasState> {
  List<DataDivisi> dataDivisi = [];
  List<DataDepartemen> dataDepartemen = [];
  List<DataPosisi> dataPosisi = [];
  List<DataTemplateSpd> dataTemplateSpd = [];
  List<DataDirektorat> dataDirektorat = [];
  List<DataJenisSpd> dataJenisSpd = [];
  List<DataZona> dataZona = [];
  List<DataLokasiTujuan> dataLokasiTujuan = [];
  List<DataPic> dataPic = [];
  AddDinasBloc() : super(AddDinasInitial()) {
    on<AddDinasSubmited>((event, emit) async {
      emit(AddDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DinasServices.addDinas(
          resToken.response["token"],
          event.divisi,
          event.departemen,
          event.posisi,
          event.templateSpd ?? -99,
          // event.direktorat ?? -99,
          event.tanggal,
          event.tanggalAwal,
          event.tanggalAkhir,
          event.jenisSpd,
          event.zonaAsal,
          event.zonaTujuan,
          event.lokasiTujuan,
          event.pic,
          event.kendDinas,
          event.desc ?? '',
        );

        if (res is ServicesSuccess) {
          emit(AddDinasSuccess(
              message: "Pengajuan perjalanan dinas telah berhasil dikirim"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddDinasFailed(message: "Unknown error occurred"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDinasFailedInBackground(message: 'Response format is invalid'));
      }
    });

    on<OnSelectDivisi>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getDivisi(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetDivisiModel dataResponse =
                      GetDivisiModel.fromJson(res.response);

                  dataDivisi = dataResponse.data ?? [];
                  emit(SelectDivisiSuccessInBackground(dataDivisi: dataDivisi),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectDepartemen>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getDepartemen(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetDepartemenModel dataResponse =
                      GetDepartemenModel.fromJson(res.response);

                  dataDepartemen = dataResponse.data ?? [];
                  emit(SelectDepartemenSuccessInBackground(dataDepartemen: dataDepartemen),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectPosisi>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getPosisi(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetPosisiModel dataResponse =
                      GetPosisiModel.fromJson(res.response);

                  dataPosisi = dataResponse.data ?? [];
                  emit(SelectPosisiSuccessInBackground(dataPosisi: dataPosisi),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectTemplateSpd>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getTemplateSpd(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetTemplateSpdModel dataResponse =
                      GetTemplateSpdModel.fromJson(res.response);

                  dataTemplateSpd = dataResponse.data ?? [];
                  emit(SelectTemplateSpdSuccessInBackground(dataTemplateSpd: dataTemplateSpd),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectDirektorat>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getDirektorat(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetDirektoratModel dataResponse =
                      GetDirektoratModel.fromJson(res.response);

                  dataDirektorat = dataResponse.data ?? [];
                  emit(SelectDirektoratSuccessInBackground(dataDirektorat: dataDirektorat),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );
    
    on<OnSelectJenisSpd>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getJenisSpd(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetJenisSpdModel dataResponse =
                      GetJenisSpdModel.fromJson(res.response);

                  dataJenisSpd = dataResponse.data ?? [];
                  emit(SelectJenisSpdSuccessInBackground(dataJenisSpd: dataJenisSpd),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectZona>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getZona(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetZonaModel dataResponse =
                      GetZonaModel.fromJson(res.response);

                  dataZona = dataResponse.data ?? [];
                  emit(SelectZonaSuccessInBackground(dataZona: dataZona),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectLokasiTujuan>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getLokasiTujuan(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetLokasiTujuanModel dataResponse =
                      GetLokasiTujuanModel.fromJson(res.response);

                  dataLokasiTujuan = dataResponse.data ?? [];
                  emit(SelectLokasiSuccessInBackground(dataLokasiTujuan: dataLokasiTujuan),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<OnSelectPic>(
      (event, emit) async {
          emit(AddDinasLoading());
          var resToken = await GeneralSharedPreferences.getUserToken();
          if (resToken is ServicesSuccess) {
              var res = await DinasServices.getPic(
                  resToken.response["token"]);
              if (res is ServicesSuccess) {
                if (res.response is Map<String, dynamic>) {
                  GetPicModel dataResponse =
                      GetPicModel.fromJson(res.response);

                  dataPic = dataResponse.data ?? [];
                  emit(SelectPicSuccessInBackground(dataPic: dataPic),);
                } else {
                  emit(
                    AddDinasFailedInBackground(
                        message: 'Response format is invalid'),
                  );
                  
                }
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  await GeneralSharedPreferences.removeUserToken();
                  emit(AddDinasFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddDinasFailed(message: res.errorResponse));
                }
              }
          } else if (resToken is ServicesFailure) {
            emit(AddDinasFailedInBackground(message: 'Response invalid'));
          }
      },
    );

    on<EditDinasSubmited>((event, emit) async {
      emit(AddDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DinasServices.editDinas(
          resToken.response["token"],
          event.id,
          event.divisi,
          event.departemen,
          event.posisi,
          event.templateSpd,
          event.direktorat,
          event.tanggal,
          event.tanggalAwal,
          event.tanggalAkhir,
          event.jenisSpd,
          event.zonaAsal,
          event.zonaTujuan,
          event.lokasiTujuan,
          event.pic,
          event.kendDinas,
        );
        if (res is ServicesSuccess) {
          emit(AddDinasSuccess(message: "Edit perjalanan dinas berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddDinasFailed(message: "Unknown error occurred"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDinasFailedInBackground(message: 'Response format is invalid'));
      }
    });
  }
}
