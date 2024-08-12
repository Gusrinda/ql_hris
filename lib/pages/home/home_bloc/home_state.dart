part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    ResponseAllKaryawan? responseDataKaryawan,
    String? errorMessage,
  }) = _HomeState;
}
