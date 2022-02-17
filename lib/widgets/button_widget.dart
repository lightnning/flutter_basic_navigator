import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key, required String this.pushOrPop, required Widget this.widget})
      : super(key: key);

  final Widget widget;
  final String pushOrPop;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (pushOrPop == 'push')
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => widget));
          if (pushOrPop == 'pop') Navigator.of(context).pop();
        },
        child: Text('$pushOrPop ${widget.toString()}'));
  }
}
