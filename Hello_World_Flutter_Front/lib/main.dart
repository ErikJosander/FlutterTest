import 'package:flutter/material.dart';
import 'package:hello_world/links_landing_page/links_landing_page.dart';
import 'package:hello_world/not_found_page.dart';
import 'package:hello_world/settings_page/setting_page.dart';

void main() {
  runApp(MyApp());
}

// Hello Test Git
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
      initialRoute: '/settings',
      routes: {
        '/': (context) => LinksLandingPage(),
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
