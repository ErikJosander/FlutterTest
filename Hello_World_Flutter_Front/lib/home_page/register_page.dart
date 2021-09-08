import 'package:flutter/material.dart';
import 'package:hello_world/widgets/outlined_button.dart';

import 'form_fill.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            color: Colors.blue.shade50,
            child: Column(
              children: [
                SizedBox(height: 40),
                Text('Register', style: Theme.of(context).textTheme.headline2),
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
                              lastForm: 'Email'),
                          SizedBox(height: 50),
                          FormFill(
                              constraints: constraints,
                              context: context,
                              firstForm: 'Username',
                              lastForm: 'Username'),
                          SizedBox(height: 50),
                          FormFill(
                              constraints: constraints,
                              context: context,
                              firstForm: 'Password',
                              lastForm: 'Password'),
                          SizedBox(height: 50),
                          FormFill(
                              constraints: constraints,
                              context: context,
                              firstForm: 'Confirm Password',
                              lastForm: 'Confirm Password'),
                          SizedBox(height: 50),
                          CustomButton(
                            context: context,
                            constraints: childConstraints,
                          )
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          );
        }));
  }
}
