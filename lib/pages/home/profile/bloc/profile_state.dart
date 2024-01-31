part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccessInBackground extends ProfileState {}

class LogoutSuccessInBackground extends ProfileState {
  String message;

  LogoutSuccessInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class ChangePasswordSuccess extends ProfileState {
  String message;

  ChangePasswordSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class ChangePasswordFailed extends ProfileState {
  String message;

  ChangePasswordFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class GetDataProfileSuccess extends ProfileState {
  String? imagePath;
  String? username;
  int? employeeId;
  String? name;
  String? email;
  String? phoneNumber;
  DataProfile? dataProfile;

  GetDataProfileSuccess({
    required this.imagePath,
    required this.username,
    required this.name,
    this.employeeId,
    this.dataProfile,
    required this.email,
    this.phoneNumber,
  });

  @override
  List<Object> get props => [
        imagePath ?? "",
        name ?? "",
        username ?? "",
        employeeId ?? "",
        email ?? "",
        phoneNumber ?? "",
        dataProfile ?? []
      ];
}

class ProfileFailedInBackground extends ProfileState {}

class ProfileFailed extends ProfileState {
  String message;

  ProfileFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ProfileFailedUserExpired extends ProfileState {
  String message;

  ProfileFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
