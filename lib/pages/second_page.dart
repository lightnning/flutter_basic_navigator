import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/third_page.dart';
import 'package:flutter_basic_navigator/widgets/button_widget.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ButtonWidget(
                  pushOrPop: 'push',
                  widget: ThirdPage(),
                  description: 'ThirdPageに遷移する\n'),
              ButtonWidget(pushOrPop: 'pop', description: 'pushしたボタンにより\n戻る or\nDialogを表示する'),
            ],
          ),
        ),
      ),
    );
  }
}
