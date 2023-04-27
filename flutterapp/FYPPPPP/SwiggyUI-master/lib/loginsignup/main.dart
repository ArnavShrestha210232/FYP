import 'package:swiggy_ui/loginsignup/register.dart';
import 'package:swiggy_ui/loginsignup/splash.dart';
import 'package:flutter/material.dart';
import '../views/mobile/swiggy/Main_Home_Page.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Splash(),
      '/MyHomePage': (context) => const MyHomePage(title: 'home'),
      '/MtRegister': (context) => const MtRegister(),
      '/swiggy_screen': (context) => const SwiggyScreen(),
      //'/index': (context) => const index(),
    },
  ));
}
