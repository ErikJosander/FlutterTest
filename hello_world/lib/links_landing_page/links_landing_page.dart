import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_link.dart';
import '../constants.dart';
import 'footer.dart';

class LinksLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            backgroundImage: NetworkImage(imageURl),
            radius: 48,
            backgroundColor: Colors.white,
          ),
          SizedBox(height: 20),
          Text(
            '@Interloop',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          for (var document in documents)
            ButtonLink(
              title: document.title.toString(),
              url: document.url.toString(),
            ),
          Spacer(),
          Footer(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
