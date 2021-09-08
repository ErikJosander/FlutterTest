import 'package:flutter/material.dart';
import 'package:hello_world/front_page/second_page.dart';
import 'package:hello_world/links_landing_page/footer.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            '@Interloop',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          ElevatedButton(
            child: Text('Go to SecondPage'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      SecondPage(data: 'Hello from frontPage')));
            },
          ),
          Spacer(),
          Footer(),
        ],
      ),
    );
  }
}
