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
