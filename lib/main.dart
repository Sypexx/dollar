import 'package:dollar/game/levelselect.dart';
import 'package:dollar/mainapp/menupage.dart';
import 'package:dollar/reg_page/logpage.dart';
import 'package:dollar/reg_page/regpage.dart';
import 'package:flutter/material.dart';
import 'reg_page/main_page.dart';
import 'splash_screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => HomeScreen(),
    '/LogPage': (BuildContext context) => LogPage(),
    '/RegPage' : (BuildContext context) => RegPage(),
    '/HomePage' : (BuildContext context) =>  HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(nextRoute: '/Home'),
      routes: routes,
    );
  }
}