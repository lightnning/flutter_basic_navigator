import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/first_page.dart';
import 'package:flutter_basic_navigator/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'basic-navigator',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required String this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
                context,
                FirstPage(
                  widgetTitle: 'FirstPage',
                )),
            ButtonWidget(
                context,
                SecondPage(
                  widgetTitle: 'SecondPage',
                )),
          ],
        ),
      ),
    );
  }

  Widget ButtonWidget(BuildContext context, Widget widget) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => widget),
          );
        },
        child: Text(widget.toString()));
  }
}
