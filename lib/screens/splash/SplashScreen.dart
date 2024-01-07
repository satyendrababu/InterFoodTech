
import 'package:dairy_industry_conference/screens/splash/SplashBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  static final String id = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff6A5CD8),
        systemNavigationBarColor: Colors.white));*/
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff6A5CD8),));

    return Scaffold(
      body: SplashBody(),
    );

  }

}