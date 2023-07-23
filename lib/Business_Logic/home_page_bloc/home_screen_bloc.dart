import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const HomeScreenInitial(tabIndex: 0)) {
    on<HomeScreenEvent>((event, emit) {
      if (event is TabChange) {
        emit(HomeScreenInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
