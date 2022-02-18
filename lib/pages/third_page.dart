import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/widgets/button_widget.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('thirdPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(pushOrPop: 'pop', description: 'popする\nSecondPageに戻る'),
            ButtonWidget(
                pushOrPop: 'popUntil',
                description: 'route.isFirstに戻る\nここではFirstPage'),
          ],
        ),
        
      ),
    );
  }
}
