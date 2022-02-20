import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/main.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ButtonWidget(pushOrPop: 'pop', description: 'popする\nSecondPageに戻る'),
              ButtonWidget(
                  pushOrPop: 'popUntil',
                  description: 'route.isFirstに戻る\nここではFirstPage'),
              ButtonWidget(
                  pushOrPop: 'pushAndRemoveUntil',
                  widget: SplashPage(),
                  description:
                      '条件(SplashPage)に一致するまでスタックから画面を除いていく\nその後画面をpushする'),
            ],
          ),
        ),
      ),
    );
  }
}
