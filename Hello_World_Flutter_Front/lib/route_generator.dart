import 'package:flutter/material.dart';
import 'package:hello_world/front_page/front_page.dart';
import 'package:hello_world/front_page/second_page.dart';
import 'package:hello_world/settings_page/setting_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => FrontPage(),
        );
      case '/second':
        // Validate of correct data type

        return MaterialPageRoute(
          builder: (_) => SecondPage(),
        );

      case '/settings':
        return MaterialPageRoute(
          builder: (_) => SettingsPage(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
