import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Made in Flutter',
        style: TextStyle(fontSize: 16),
      ),
      SizedBox(width: 8),
      Image.asset(
        'assets/images/logo1.png',
        width: 40,
        height: 40,
      )
    ]);
  }
}
