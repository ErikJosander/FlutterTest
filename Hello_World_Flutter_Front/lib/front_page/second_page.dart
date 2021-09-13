import 'package:flutter/material.dart';
import 'package:hello_world/Model/data_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as cnv;

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var model = <DataModel>[];

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
      body: model == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ExpansionTile(
                    title: Text(model[index].userId.toString()),
                    children: [Text(model[index].userName.toString())],
                  ),
                );
              },
              itemCount: model.length,
            ),
    );
  }

  Future<void> getData() async {
    Uri url = Uri.http('localhost:5578', '/api/users');
    http.Response res = await http.get(url);
    List<dynamic> body = cnv.jsonDecode(res.body);
    model = body.map((dynamic item) => DataModel.fromJson(item)).toList();
    setState(() {});
    print(model);
  }
}
