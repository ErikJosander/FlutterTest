import 'package:flutter/material.dart';
import 'package:hello_world/widgets/outlined_button.dart';

class LoginFormButtons extends StatelessWidget {
  const LoginFormButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              'Username: ',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        Row(),
        SizedBox(height: 20),
        CustomButton()
      ],
    ));
  }
}
