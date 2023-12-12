part of 'biodata_bloc.dart';

abstract class BiodataState extends Equatable {
  const BiodataState();

  @override
  List<Object> get props => [];
}

class BiodataInitial extends BiodataState {}

class BiodataLoading extends BiodataState {}

class BiodataSuccessInBackground extends BiodataState {}

// class GetDataBiodataSuccess extends BiodataState {
//   String? imagePath;
//   String? username;
//   int? employeeId;
//   String? name;
//   String? email;
//   String? phoneNumber;

//   GetDataBiodataSuccess({
//     required this.imagePath,
//     required this.username,
//     required this.name,
//     this.employeeId,
//     required this.email,
//     this.phoneNumber,
//   });

//   @override
//   List<Object> get props => [
//         imagePath ?? "",
//         name ?? "",
//         username ?? "",
//         employeeId ?? "",
//         email ?? "",
//         phoneNumber ?? "",
//       ];
// }

class GetBiodataSuccess extends BiodataState {
  Biodata bioData;

  GetBiodataSuccess({required this.bioData});

  @override
  List<Object> get props => [bioData];
}


class BiodataFailedInBackground extends BiodataState {}

class BiodataFailed extends BiodataState {
  String message;

  BiodataFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class BiodataFailedUserExpired extends BiodataState {
  String message;

  BiodataFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
