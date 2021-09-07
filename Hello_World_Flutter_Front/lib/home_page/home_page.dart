import 'package:flutter/material.dart';
import 'package:hello_world/home_page/login_page.dart';
import 'package:hello_world/home_page/register_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [RegisterPage(), LoginPage()],
      ),
    );
  }
}
