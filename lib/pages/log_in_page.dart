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
            ),
            Text(
              'password',
            ),
            SizedBox(height: 60,),
            ButtonWidget(
                pushOrPop: 'pushReplacement',
                widget: FirstPage(),
                description: 'FirstPageへ遷移する\nroute画面を消してしまうので元に戻れなくなる'),
            ButtonWidget(pushOrPop: 'canPop', description: '戻れる=> true\n戻れない=> false'),
            ButtonWidget(pushOrPop: 'pop', description: 'route画面がないので\npopできなくて画面が真っ黒になる'),
          ],
        ),
      ),
    );
  }
}
