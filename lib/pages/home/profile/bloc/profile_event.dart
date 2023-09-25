part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class GetDataProfile extends ProfileEvent {}

class LogoutProfile extends ProfileEvent {}

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
  String? imagePath;

  EditImageProfile({
    required this.imagePath,
  });

  @override
  List<Object> get props => [imagePath ?? ""];
}
