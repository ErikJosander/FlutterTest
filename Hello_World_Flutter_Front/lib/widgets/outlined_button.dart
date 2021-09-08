import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.constraints,
    required this.context,
  }) : super(key: key);

  final BoxConstraints constraints;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.4,
      height: 50,
      color: Colors.white,
      child: OutlinedButton(
        style: ButtonStyle(),
        onPressed: () => {},
        child: Text(
          'Submit',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
