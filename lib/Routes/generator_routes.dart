import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash/Business_Logic/home_page_bloc/home_screen_bloc.dart';
import 'package:wash/screens/Home/home.dart';

import '../screens/Error/Error_page.dart';
import '../splash_screen.dart';
import 'Login/Login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/main':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      // Define more routes for other pages
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
