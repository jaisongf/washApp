import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash/Business_Logic/home_page_bloc/home_screen_bloc.dart';
import 'package:wash/screens/Home/home.dart';

class RouteGenerator {
  final HomeScreenBloc homeScreenBloc = HomeScreenBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<HomeScreenBloc>.value(
                  value: homeScreenBloc,
                  child: const HomeScreen(),
                ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
