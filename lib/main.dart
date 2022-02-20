import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/log_in_page.dart';
import 'package:flutter_basic_navigator/widgets/button_widget.dart';

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
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashPage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Splash Screen',
              ),
              ButtonWidget(
                  pushOrPop: 'pushReplacement',
                  widget: LogInPage(),
                  description: 'LogInPageへ遷移する\nroute画面を消してしまうので元に戻れなくなる')
            ],
          ),
        ),
      ),
    );
  }
}
