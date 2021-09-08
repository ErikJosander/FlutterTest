import 'package:flutter/material.dart';

import 'form_fill.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            color: Colors.grey.shade100,
            child: Column(
              children: [
                SizedBox(height: 40),
                Text('Login', style: Theme.of(context).textTheme.headline2),
                SizedBox(height: 50),
                FormFill(
                  constraints: constraints,
                  context: context,
                  firstForm: 'Username',
                  lastForm: 'Username',
                ),
                SizedBox(height: 50),
                FormFill(
                    constraints: constraints,
                    context: context,
                    firstForm: 'Password',
                    lastForm: 'Password')
              ],
            ),
          );
        }));
  }
}
