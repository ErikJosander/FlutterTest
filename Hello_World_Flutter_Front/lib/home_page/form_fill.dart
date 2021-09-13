import 'package:flutter/material.dart';

class FormFill extends StatelessWidget {
  const FormFill({
    Key? key,
    required this.constraints,
    required this.context,
    required this.firstForm,
    required this.lastForm,
    required this.isHidden,
  }) : super(key: key);

  final BoxConstraints constraints;
  final BuildContext context;
  final String firstForm;
  final String lastForm;
  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    String email;
    return Container(
      width: constraints.maxWidth * 0.8,
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      child: Center(
                    child: Text(
                      firstForm,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  )),
                )),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new LayoutBuilder(builder: (context, ct) {
                  return Center(
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        email = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide text';
                        }
                        return null;
                      },
                      obscureText: isHidden,
                      decoration: InputDecoration(
                          hintText: lastForm,
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(bottom: ct.maxHeight / 3)),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
