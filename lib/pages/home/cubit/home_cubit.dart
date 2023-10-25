import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeNavigationCubit extends Cubit<HomeNavigationState> {
  HomeNavigationCubit(HomeNavBarItem state)
      : super(
          HomeNavigationState(
            navbarItem: state,
            index: state.index,
          ),
        );

  void getNavBarItem(HomeNavBarItem navbarItem) {
    switch (navbarItem) {
      case HomeNavBarItem.home:
        emit(HomeNavigationState(
          navbarItem: HomeNavBarItem.home,
          index: 0,
        ));
        break;
      case HomeNavBarItem.history:
        emit(HomeNavigationState(
          navbarItem: HomeNavBarItem.history,
          index: 1,
        ));
        break;
      case HomeNavBarItem.reports:
        emit(HomeNavigationState(
          navbarItem: HomeNavBarItem.reports,
          index: 2,
        ));
        break;
      case HomeNavBarItem.profile:
        emit(HomeNavigationState(
          navbarItem: HomeNavBarItem.profile,
          index: 3,
        ));
        break;
      case HomeNavBarItem.absensi:
        emit(HomeNavigationState(
          navbarItem: HomeNavBarItem.absensi,
          index: 4,
        ));
        break;
    }
  }
}
