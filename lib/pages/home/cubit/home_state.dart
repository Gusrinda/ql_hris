part of 'home_cubit.dart';

enum HomeNavBarItem { home, history, reports, profile, absensi }

abstract class HomeNavBarState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeNavigationState extends HomeNavBarState {
  final HomeNavBarItem navbarItem;
  final int index;

  HomeNavigationState({
    required this.navbarItem,
    required this.index,
  });

  @override
  List<Object> get props => [navbarItem, index];
}
