import 'package:flutter/material.dart';
import 'package:hello_world/home_page/login_form_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.white12,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: LoginFormButtons(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
