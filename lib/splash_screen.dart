import 'package:flutter/material.dart';

import 'config/constant.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/splash_screen_bg.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
