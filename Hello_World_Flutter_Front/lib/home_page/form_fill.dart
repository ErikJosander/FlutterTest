import 'package:flutter/material.dart';

class FormFill extends StatelessWidget {
  const FormFill({
    Key? key,
    required this.constraints,
    required this.context,
    required this.firstForm,
    required this.lastForm,
  }) : super(key: key);

  final BoxConstraints constraints;
  final BuildContext context;
  final String firstForm;
  final String lastForm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth * 0.8,
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                color: Colors.red,
                child: Container(
                  child: SizedBox(
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
                )),
          ),
          Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                child: Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new LayoutBuilder(builder: (context, ct) {
                        return Center(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: lastForm,
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(bottom: ct.maxHeight / 2)),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
