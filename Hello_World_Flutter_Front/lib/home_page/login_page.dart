import 'package:flutter/material.dart';
import 'package:hello_world/widgets/outlined_button.dart';

import 'form_fill.dart';

class LoginPage extends StatelessWidget {
  final _myLoginPageFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _myLoginPageFormKey,
      child: Expanded(
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
                    isHidden: false,
                  ),
                  SizedBox(height: 50),
                  FormFill(
                    constraints: constraints,
                    context: context,
                    firstForm: 'Password',
                    lastForm: 'Password',
                    isHidden: true,
                  ),
                  SizedBox(height: 50),
                  CustomButton(
                    constraints: constraints,
                    formKey: _myLoginPageFormKey,
                  ),
                  SizedBox(height: 50),
                ],
              ),
            );
          })),
    );
  }
}
