import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.constraints, required this.formKey})
      : super(key: key);

  final BoxConstraints constraints;
  GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.4,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black54, spreadRadius: 1),
        ],
      ),
      child: OutlinedButton(
        style: ButtonStyle(),
        onPressed: () => {
          if (formKey.currentState!.validate())
            {print(formKey.currentContext.toString())}
        },
        child: Text(
          'Submit',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
