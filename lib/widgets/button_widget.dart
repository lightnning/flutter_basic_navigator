import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/error_page.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      required String this.pushOrPop,
      Widget? this.widget,
      required String this.description})
      : super(key: key);
  final String pushOrPop;
  final Widget? widget;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              if (pushOrPop == 'pushReplacement' && widget != null) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => widget!));
              } else if (pushOrPop == 'push' && widget != null) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => widget!));
              } else if (pushOrPop == 'pop') {
                Navigator.of(context).pop();
              } else {
                print('pushOrPop Error');
              }
            },
            child: Text('$pushOrPop => ${widget.toString()}()')),
        Text(description),
      ],
    );
  }
}
