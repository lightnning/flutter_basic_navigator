import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String widgetTitle;
  SecondPage({
    Key? key, required this.widgetTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widgetTitle)),
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
