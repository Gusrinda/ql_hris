import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/pages/approval/detail_approval.view.dart';
import 'package:sj_presensi_mobile/services/approval_services.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_detail_approval.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_list_approval.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
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
        if (res is ServicesSuccessNoMobile) {
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
        } else if (res is ServicesFailureNoMobile) {
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

          if (response is ServicesSuccessNoMobile) {
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
                emit(ListApprovalFailedInBackground(
                    message: 'No TRX data found'));
              }
            } else {
              emit(ListApprovalFailedInBackground(
                  message: 'Failed to retrieve data'));
            }
          } else if (response is ServicesFailureNoMobile) {
            if (response.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ListApprovalFailedUserExpired(message: 'Token expired'));
            } else {
              emit(ListApprovalFailed(message: response.errorResponse));
            }
          }
        } catch (error) {
          emit(ListApprovalFailedInBackground(message: 'Error: $error'));
        }
      } else if (userToken is ServicesFailure) {
        emit(ListApprovalFailedInBackground(message: 'Invalid response'));
      }
    });
  }
}
