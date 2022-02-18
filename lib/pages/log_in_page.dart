import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/first_page.dart';
import 'package:flutter_basic_navigator/widgets/button_widget.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogInPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'mail-address',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'password',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            ButtonWidget(
                pushOrPop: 'pushReplacement',
                widget: FirstPage(),
                description: 'FirstPageへ遷移する')
            
          ],
        ),
      ),
    );
  }
}
