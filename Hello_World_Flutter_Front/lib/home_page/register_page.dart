import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.green.shade100,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Register',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
