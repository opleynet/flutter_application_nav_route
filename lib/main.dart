import 'package:flutter/material.dart';
import 'package:flutter_application_nav_route/pages/mail_page.dart';
import 'package:flutter_application_nav_route/pages/setting_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute remplace Home pour definir la route d'accueil
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/settings': (context) => MySettingPage(),
        '/mail': (context) => MyMailPage(),
        //dictionnaire routes avec pages
      },
    );
  }
}

