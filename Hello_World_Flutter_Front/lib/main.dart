import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart' show GetIt;
import 'package:hello_world/Services/user_service.dart';
import 'package:hello_world/not_found_page.dart';
import 'package:hello_world/route_generator.dart';

void setUpLocator() {
  GetIt.I.registerLazySingleton(() => UserService());
}

void main() {
  runApp(MyApp());
}

// Hello Testasdbasdk
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      onGenerateRoute: RouteGenerator.generateRoute,
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
