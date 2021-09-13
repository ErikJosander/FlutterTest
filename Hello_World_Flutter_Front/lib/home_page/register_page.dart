import 'package:flutter/material.dart';
import 'package:hello_world/widgets/outlined_button.dart';

import 'form_fill.dart';

class RegisterPage extends StatelessWidget {
  final _myRegisterPageFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _myRegisterPageFormKey,
      child: Expanded(
          flex: 3,
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              color: Colors.blue.shade50,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text('Register',
                      style: Theme.of(context).textTheme.headline2),
                  SizedBox(height: 50),
                  Expanded(
                    child: LayoutBuilder(builder: (context, childConstraints) {
                      return Container(
                        width: childConstraints.maxWidth * 0.6,
                        child: Column(
                          children: [
                            FormFill(
                              constraints: childConstraints,
                              context: context,
                              firstForm: 'Email',
                              lastForm: 'Email',
                              isHidden: false,
                            ),
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
                            FormFill(
                              constraints: constraints,
                              context: context,
                              firstForm: 'Confirm Password',
                              lastForm: 'Confirm Password',
                              isHidden: true,
                            ),
                            SizedBox(height: 50),
                            CustomButton(
                              constraints: childConstraints,
                              formKey: _myRegisterPageFormKey,
                            )
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ),
            );
          })),
    );
  }
}
