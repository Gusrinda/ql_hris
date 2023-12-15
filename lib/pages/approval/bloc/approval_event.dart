part of 'approval_bloc.dart';

abstract class ApprovalEvent extends Equatable {
  const ApprovalEvent();

  @override
  List<Object> get props => [];
}

class GetListApproval extends ApprovalEvent {
  GetListApproval();
  @override
  List<Object> get props => [];
}

class GetDetailApproval extends ApprovalEvent {
  String approvalID;

  GetDetailApproval({required this.approvalID});
  @override
  List<Object> get props => [approvalID];
}

class SendApproval extends ApprovalEvent {
  String approvalID;
  String typeApproval;
  String note;

  SendApproval(
      {required this.approvalID,
      required this.typeApproval,
      required this.note});

  @override
  List<Object> get props => [approvalID, typeApproval, note];
}
