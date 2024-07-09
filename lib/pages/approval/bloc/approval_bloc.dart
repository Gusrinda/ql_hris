import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/pages/approval/detail_approval.view.dart';
import 'package:sj_presensi_mobile/services/approval_services.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_detail_approval.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_list_approval.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'approval_event.dart';
part 'approval_state.dart';
// part 'approval_bloc.freezed.dart';

class ApprovalBloc extends Bloc<ApprovalEvent, ApprovalState> {
  List<DataApproval> listApproval = [];

  ApprovalBloc() : super(ListApprovalInitial()) {
    on<GetListApproval>((event, emit) async {
      emit(ListApprovalLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res =
            await ApprovalServices.getApproval(resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print(res.response);
            ResponseListApproval? dataResponse =
                ResponseListApproval.fromJson(res.response);
            listApproval = dataResponse.data ?? [];

            emit(
              ListApprovalSuccessInBackground(
                listApproval: listApproval,
              ),
            );
          } else {
            emit(ListApprovalFailedInBackground(
                message: 'Gagal mengambil data'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListApprovalFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListApprovalFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListApprovalFailedInBackground(message: 'Response invalid'));
      }
    });

    on<GetDetailApproval>((event, emit) async {
      emit(DetailApprovalLoading());

      final userToken = await GeneralSharedPreferences.getUserToken();

      if (userToken is ServicesSuccess) {
        try {
          final response = await ApprovalServices.getDetailApproval(
            userToken.response["token"],
            event.approvalID,
          );

          if (response is ServicesSuccess) {
            if (response.response is Map<String, dynamic>) {
              final dataResponse =
                  ResponseDetailApproval.fromJson(response.response);

              // Check if dataResponse.data?.trx is not null before assigning
              final Trx? trxData = dataResponse.data?.trx;
              print(trxData);

              if (trxData != null) {
                emit(
                  DetailApprovalSuccessInBackground(
                    detailApproval: trxData,
                  ),
                );
              } else {
                emit(DetailApprovalFailedInBackground(
                    message: 'No TRX data found'));
              }
            } else {
              emit(DetailApprovalFailedInBackground(
                  message: 'Gagal Mendapatkan Data'));
            }
          } else if (response is ServicesFailure) {
            if (response.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(DetailApprovalFailedUserExpired(message: 'Token expired'));
            } else {
              emit(DetailApprovalFailed(message: response.errorResponse));
            }
          }
        } catch (error) {
          emit(DetailApprovalFailedInBackground(message: 'Error: $error'));
        }
      } else if (userToken is ServicesFailure) {
        emit(DetailApprovalFailedInBackground(message: 'Invalid response'));
      }
    });

    on<SendApproval>((event, emit) async {
      emit(DetailApprovalLoading());
      final userToken = await GeneralSharedPreferences.getUserToken();
      if (userToken is ServicesSuccess) {
        try {
          final response = await ApprovalServices.sendApproval(
              userToken.response["token"],
              event.approvalID,
              event.typeApproval,
              event.note);

          if (response is ServicesSuccess) {
            emit(SendApprovalSuccess(message: "Berhasil Mengirim Approval"));
            print(response.response);
          } else if (response is ServicesFailure) {
            if (response.errorResponse == null) {
              emit(DetailApprovalFailed(message: response.errorResponse));
              print(response.errorResponse);
            } else if (response.errorResponse.isNotEmpty) {
              emit(DetailApprovalFailed(message: response.errorResponse));
              print(response.errorResponse);
            }
          }
        } catch (error) {
          emit(DetailApprovalFailedInBackground(message: 'Error: $error'));
        }
      } else if (userToken is ServicesFailure) {
        emit(DetailApprovalFailedInBackground(message: 'Invalid response'));
      }
    });
  }
}
