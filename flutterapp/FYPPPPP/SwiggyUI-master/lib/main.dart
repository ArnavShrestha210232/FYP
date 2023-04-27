import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/tab_desktop/tab_screen.dart';

import 'shared/app_theme.dart';
import 'views/tab_desktop/desktop_screen.dart';
import 'views/mobile/mobile_screen.dart';
import 'widgets/responsive.dart';

import 'package:swiggy_ui/loginsignup/register.dart';
import 'package:swiggy_ui/loginsignup/splash.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/mobile/swiggy/Main_Home_Page.dart';
import 'loginsignup/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ananda',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: const Responsive(
        mobile: MobileScreen(),
        tablet: TabScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
