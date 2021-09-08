import 'package:flutter/material.dart';
import 'package:hello_world/front_page/front_page.dart';
import 'package:hello_world/not_found_page.dart';

void main() => runApp(MyApp());

// Hello Testasdbasdk
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FrontPage(),
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
