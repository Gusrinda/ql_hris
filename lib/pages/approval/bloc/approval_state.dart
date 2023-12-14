part of 'approval_bloc.dart';

abstract class ApprovalState extends Equatable {
  const ApprovalState();

  @override
  List<Object> get props => [];
}

class ListApprovalInitial extends ApprovalState {}

class ListApprovalLoading extends ApprovalState {}

class ListApprovalSuccessInBackground extends ApprovalState {
  List<DataApproval>? listApproval;

  ListApprovalSuccessInBackground({
    this.listApproval,
    
  });

  @override
  List<Object> get props => [listApproval!];
}

class ListApprovalFailedInBackground extends ApprovalState {
  String message;
  ListApprovalFailedInBackground({required this.message});
}

class ListApprovalFailed extends ApprovalState {
  String message;
  ListApprovalFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListApprovalFailedUserExpired extends ApprovalState {
  String message;

  ListApprovalFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}


class DetailApprovalInitial extends ApprovalState {}

class DetailApprovalLoading extends ApprovalState {}

class DetailApprovalSuccessInBackground extends ApprovalState {
  Trx detailApproval;

  DetailApprovalSuccessInBackground({
    required this.detailApproval,
    
  });

  @override
  List<Object> get props => [detailApproval];
}


class DetailApprovalFailedInBackground extends ApprovalState {
  String message;
  DetailApprovalFailedInBackground({required this.message});
}

class DetailApprovalFailed extends ApprovalState {
  String message;
  DetailApprovalFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class DetailApprovalFailedUserExpired extends ApprovalState {
  String message;

  DetailApprovalFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
