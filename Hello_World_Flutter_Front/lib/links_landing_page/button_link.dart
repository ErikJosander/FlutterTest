import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final deviceWidth = constraints.maxWidth;
        return Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: deviceWidth > 680 ? 680 : deviceWidth * 0.95,
              child: TextButton.icon(
                  label: Text(title),
                  icon: Icon(Icons.web),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 15),
                      backgroundColor: Colors.teal,
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 20)),
                  onPressed: () => launch(url)),
            ));
      },
    );
  }
}
