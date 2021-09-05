import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 3, child: Container(color: Colors.blueGrey.shade200)),
          Expanded(flex: 2, child: Container(color: Colors.white))
        ],
      ),
    );
  }
}
