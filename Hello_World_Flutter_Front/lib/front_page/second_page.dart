import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hello_world/Services/user_service.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.data}) : super(key: key);

  final String data;

  UserService get service => GetIt.I<UserService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          new ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ExpansionTile(
                  title: Text('Http Request'),
                  children: [Text('testing')],
                ),
              );
            },
            itemCount: 1,
          )
        ],
      ),
    );
  }
}
