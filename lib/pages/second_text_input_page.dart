import 'package:flutter/material.dart';

class SecondTextInputPage extends StatefulWidget {
  @override
  SecondTextInputPageState createState() => SecondTextInputPageState();
}

class SecondTextInputPageState extends State<SecondTextInputPage> {
  String? inputValue;

  @override
  void initState() {
    inputValue = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondTextInputPage')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3,
              left: 60.0,
              right: 60.0,
            ),
            child: Column(
              children: [
                Text('文字を入力後、EnterKeyを押す'),
                TextField(
                  onChanged: (value) {
                    inputValue = value;
                  },
                  onEditingComplete: () {
                    Navigator.of(context).pop(inputValue);
                  },
                  autofocus: true,
                  autocorrect: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
