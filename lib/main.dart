import 'package:dairy_industry_conference/theme.dart';
import 'package:dairy_industry_conference/utils/Routes.dart';
import 'package:dairy_industry_conference/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/splash/SplashScreen.dart';

void main() {
  /*SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xff6A5CD8)));*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      title: '',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: routes,
    );
  }
}
