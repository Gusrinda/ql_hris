part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccessInBackground extends ProfileState {}

class LogoutSuccessInBackground extends ProfileState {}

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
  String? name;
  String? employeeId;
  String? email;
  String? phoneNumber;

  GetDataProfileSuccess({
    required this.imagePath,
    required this.name,
    this.employeeId,
    required this.email,
    this.phoneNumber,
  });

  @override
  List<Object> get props => [
        imagePath ?? "",
        name ?? "",
        employeeId ?? "",
        email ?? "",
        phoneNumber ?? "",
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
