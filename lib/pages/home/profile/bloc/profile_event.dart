part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class GetDataProfile extends ProfileEvent {


  GetDataProfile();
  @override
  List<Object> get props => [];
}

class LogoutProfile extends ProfileEvent {
  String username;
  String password;

  LogoutProfile({
    required this.username,
    required this.password,
  });
  @override
  List<Object> get props => [username, password];
}

class EditDataProfile extends ProfileEvent {
  String? phoneNumber;

  EditDataProfile({
    required this.phoneNumber,
  });

  @override
  List<Object> get props => [phoneNumber ?? ""];
}

class EditPasswordProfile extends ProfileEvent {
  String oldPassword;
  String newPassword;
  bool status;

  EditPasswordProfile({
    required this.oldPassword,
    required this.newPassword,
    required this.status,
  });

  @override
  List<Object> get props => [
        oldPassword,
        newPassword,
      ];
}

class EditImageProfile extends ProfileEvent {
  // int? userId;
  String? imagePath;

  EditImageProfile({
    // required this.userId,
    required this.imagePath,
  });

  @override
  List<Object> get props => [imagePath ?? ""];
}


