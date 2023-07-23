part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenState {
  final int tabIndex;

  const HomeScreenState({required this.tabIndex});
}

class HomeScreenInitial extends HomeScreenState {
  const HomeScreenInitial({required super.tabIndex});
}
