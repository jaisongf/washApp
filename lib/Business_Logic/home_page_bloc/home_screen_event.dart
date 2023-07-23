part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}

class TabChange extends HomeScreenEvent {
  final int tabIndex;
  TabChange({required this.tabIndex});
}
