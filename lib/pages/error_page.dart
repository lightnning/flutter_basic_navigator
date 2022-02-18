import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/first_page.dart';
import 'package:flutter_basic_navigator/pages/log_in_page.dart';
import 'package:flutter_basic_navigator/widgets/button_widget.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ErrorPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Error',
              style: TextStyle(fontSize: 20),
            ),
            
            SizedBox(
              height: 40,
            ),
            ButtonWidget(
                pushOrPop: 'pop',
                description: 'SpalshPageに戻る')
          ],
        ),
      ),
    );
  }
}
