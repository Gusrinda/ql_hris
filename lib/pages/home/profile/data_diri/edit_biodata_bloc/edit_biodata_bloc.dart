import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/biodata_karyawan.service.dart';
import 'package:sj_presensi_mobile/services/dinas_services.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_zona_model.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kode_presensi.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_standar_gaji.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';
import 'package:http/http.dart' as http;

part 'edit_biodata_event.dart';
part 'edit_biodata_state.dart';

class EditBiodataBloc extends Bloc<EditBiodataEvent, EditBiodataState> {
  List<DataDivisi> dataDivisi = [];
  List<DataDepartemen> dataDepartemen = [];
  List<DataPosisi> dataPosisi = [];
  List<DataZona> dataZona = [];
  List<DataKota> dataKota = [];

  List<DataStandarGaji> dataStandarGaji = [];
  List<DataGeneral> dataCostCentre = [];
  List<DataKodePresensi> dataKodePresensi = [];
  List<DataGeneral> dataTipeBPJS = [];
  List<DataGeneral> dataPeriodeGaji = [];
  List<DataGeneral> dataTipePembayaran = [];
  List<DataGeneral> dataMetodePembayaran = [];
  List<DataGeneral> dataNamaBank = [];

  List<DataGeneral> dataJenisKelamin = [];
  List<DataGeneral> dataHubKeluarga = [];
  List<DataGeneral> dataAgama = [];
  List<DataGeneral> dataGolDarah = [];
  List<DataGeneral> dataStatusNikah = [];
  List<DataGeneral> dataTanggungan = [];
  List<DataGeneral> dataProvinsi = [];
  List<DataGeneral> dataKotabyProvinsi = [];
  List<DataGeneral> dataKecamatan = [];

  EditBiodataBloc() : super(EditBiodataInitial()) {
    on<EditDataBiodataSubmited>((event, emit) async {
      emit(EditBiodataLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await BiodataKaryawanService.editDataDiri(
          resToken.response["token"],
          resToken.response["id"] ?? 1,
          event.divisiId,
          event.deptId,
          event.zonaId,
          event.posisiId,
          event.kodePresensi,
          event.nik,
          event.namaDepan,
          event.namaBelakang,
          event.namaLengkap,
          event.namaPanggilan,
          event.jkId,
          event.tempatLahir,
          event.tglLahir,
          event.provinsiId,
          event.kotaId,
          event.kecamatanId,
          event.kodePos,
          event.alamatAsli,
          event.alamatDomisili,
          event.noTlp,
          event.noTlpLainnya,
          event.noDarurat,
          event.namaKontakDarurat,
          event.agamaId,
          event.golDarahId,
          event.statusNikahId,
          event.tanggunganId,
          event.hubDgnKaryawan,
          event.tglMasuk,
          event.ukBaju,
          event.ukCelana,
          event.ukSepatu,
          event.ktpFoto,
          event.pasFoto,
          // event.bpjsFoto,
          event.ktpNo,
          event.kkNo,
          event.kkFoto,
          event.npwpNo,
          event.npwpFoto,
          event.npwpTglBerlaku,
          event.bpjsTipeId,
          event.bpjsNo,
          event.bpjsKerjaNo,
          event.berkasLain,
          event.desc,
          event.bankId,
          event.noRek,
          event.atasNamaRek,
        );

        if (res is ServicesSuccess) {
          emit(EditBiodataSuccess(message: "Data diri berhasil diupdate"));
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(EditBiodataFailedInBackground(message: "Token expired"));
          } else {
            print('Error di Bloc ${res.errorResponse}');
            emit(EditBiodataFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(EditBiodataFailedInBackground(message: 'Response invalid'));
      } 
    });

    on<OnSelectDivisi>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await DinasServices.getDivisi(resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              GetDivisiModel dataResponse =
                  GetDivisiModel.fromJson(res.response);

              dataDivisi = dataResponse.data ?? [];
              emit(
                SelectDivisiSuccessInBackground(dataDivisi: dataDivisi),
              );
            } else {
              emit(
                EditBiodataFailedInBackground(
                    message: 'Gagal Mengambil Data'),
              );
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailed(message: "Token expired"));
            } else {
              emit(EditBiodataFailedInBackground(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectDepartemen>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await DinasServices.getDepartemen(resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              GetDepartemenModel dataResponse =
                  GetDepartemenModel.fromJson(res.response);

              dataDepartemen = dataResponse.data ?? [];
              emit(
                SelectDepartemenSuccessInBackground(
                    dataDepartemen: dataDepartemen),
              );
            } else {
              emit(
                EditBiodataFailedInBackground(
                    message: 'Gagal Mengambil Data'),
              );
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedInBackground(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectPosisi>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await DinasServices.getPosisi(resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              GetPosisiModel dataResponse =
                  GetPosisiModel.fromJson(res.response);

              dataPosisi = dataResponse.data ?? [];
              emit(
                SelectPosisiSuccessInBackground(dataPosisi: dataPosisi),
              );
            } else {
              emit(
                EditBiodataFailedInBackground(
                    message: 'Gagal Mengambil Data'),
              );
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectZona>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await DinasServices.getZona(resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              GetZonaModel dataResponse = GetZonaModel.fromJson(res.response);

              dataZona = dataResponse.data ?? [];
              emit(
                SelectZonaSuccessInBackground(dataZona: dataZona),
              );
            } else {
              emit(
                EditBiodataFailedInBackground(
                    message: 'Gagal Mengambil Data'),
              );
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectCostcentre>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getCostcentre(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataCostCentre = dataResponse.data ?? [];

              emit(
                SelectCostCentreSuccessInBackground(
                    dataCostCentre: dataCostCentre),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectStandarGaji>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getStandartGaji(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              print(res.response);

              //Mengubah hasil response api ke model kelas
              ResponseStandarGaji dataResponse =
                  ResponseStandarGaji.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataStandarGaji = dataResponse.data ?? [];

              emit(
                SelectStandarGajiSuccessInBackground(
                    dataStandarGaji: dataStandarGaji),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectTipeBJPS>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getTipeBPJS(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataTipeBPJS = dataResponse.data ?? [];

              emit(
                SelectTipeBPJSSuccessInBackground(dataTipeBPJS: dataTipeBPJS),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectPeriodeGaji>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getPeriodeGaji(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataPeriodeGaji = dataResponse.data ?? [];

              emit(
                SelectPeriodeGajiSuccessInBackground(
                    dataPeriodeGaji: dataPeriodeGaji),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectTipePembayaran>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getTipePembayaran(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataTipePembayaran = dataResponse.data ?? [];

              emit(
                SelectTipePembayaranSuccessInBackground(
                    dataTipePembayaran: dataTipePembayaran),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectMetodePembayaran>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getMetodePembayaran(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataMetodePembayaran = dataResponse.data ?? [];

              emit(
                SelectMetodePembayaranSuccessInBackground(
                    dataMetodePembayaran: dataMetodePembayaran),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectNamaBank>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getNamaBank(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataNamaBank = dataResponse.data ?? [];

              emit(
                SelectNamaBankSuccessInBackground(dataNamaBank: dataNamaBank),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectKota>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getKotaAll(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseKota dataResponse = ResponseKota.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataKota = dataResponse.data ?? [];

              emit(
                SelectKotaSuccessInBackground(dataKota: dataKota),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectJenisKelamin>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getJenisKelamin(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataJenisKelamin = dataResponse.data ?? [];

              emit(
                SelectJenisKelaminSuccessInBackground(
                    dataJenisKelamin: dataJenisKelamin),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectKodePresensi>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          // print("Ini Token: ${resToken.response}");
          var res =
              await ListGeneralService.getKodePre(resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              print(res.response);
              //Mengubah hasil response api ke model kelas
              ResponseKodePresensi dataResponse =
                  ResponseKodePresensi.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataKodePresensi = dataResponse.data ?? [];

              emit(
                SelectKodePresensiSuccessInBackground(
                    dataKodePresensi: dataKodePresensi),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectAgama>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getAgama(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataAgama = dataResponse.data ?? [];

              emit(
                SelectAgamaSuccessInBackground(dataAgama: dataAgama),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectGolDarah>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getGolDarah(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataGolDarah = dataResponse.data ?? [];

              emit(
                SelectGolDarahSuccessInBackground(dataGolDarah: dataGolDarah),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectStatusNikah>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getStatusNikah(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataStatusNikah = dataResponse.data ?? [];

              emit(
                SelectStatusNikahSuccessInBackground(
                    dataStatusNikah: dataStatusNikah),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectTanggungan>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getTanggungan(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataTanggungan = dataResponse.data ?? [];

              emit(
                SelectTanggunganSuccessInBackground(
                    dataTanggungan: dataTanggungan),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectProvinsi>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getProvinsi(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataProvinsi = dataResponse.data ?? [];

              emit(
                SelectProvinsiSuccessInBackground(dataProvinsi: dataProvinsi),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectKotabyProvinsi>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getKotabyProvinsi(
              resToken.response["token"], event.idProvinsi);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataKotabyProvinsi = dataResponse.data ?? [];

              emit(
                SelectKotabyProvinsiSuccessInBackground(
                    dataKotabyProvinsi: dataKotabyProvinsi),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectKecamatan>(
      (event, emit) async {
        emit(EditBiodataLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getKecamatan(
              resToken.response["token"], event.idKota);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataKecamatan = dataResponse.data ?? [];

              emit(
                SelectKecamatanSuccessInBackground(
                    dataKecamatan: dataKecamatan),
              );
            } else {
              emit(EditBiodataFailedInBackground(
                  message: 'Gagal Mengambil Data'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(EditBiodataFailedUserExpired(message: "Token expired"));
            } else {
              emit(EditBiodataFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(EditBiodataFailedInBackground(message: 'Response invalid'));
        }
      },
    );
  }
}
