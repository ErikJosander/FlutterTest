import 'package:flutter/material.dart';
import 'package:hello_world/links_landing_page/links_landing_page.dart';
import 'package:hello_world/not_found_page.dart';
import 'package:hello_world/settings_page/setting_page.dart';

import 'home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

// Hello Testasdbasdk 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: Colors.amber)),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => LinksLandingPage(),
        '/login': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return NotFoundPage();
          },
        );
      },
    );
  }
}
