import 'package:flutter/material.dart';
import 'package:hello_world/links_landing_page/links_landing_page.dart';

class PreviewSection extends StatelessWidget {
  const PreviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [Text('Preview'), Expanded(child: LinksLandingPage())],
      ),
    );
  }
}
