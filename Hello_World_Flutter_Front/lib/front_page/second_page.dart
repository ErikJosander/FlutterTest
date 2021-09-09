import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          // new ListView.builder(
          //   itemBuilder: (BuildContext context, int index) {
          //     return Card(
          //       child: ExpansionTile(
          //         title: Text('Http Request'),
          //         children: [Text('testing')],
          //       ),
          //     );
          //   },
          //   itemCount: 1,
          // )
        ],
      ),
    );
  }

  Future<void> getData() async {
    Uri url = Uri.http('localhost:5578', '/api/users');
    http.Response res = await http.get(url);
    print(res.body);
  }
}
