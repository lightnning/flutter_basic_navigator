import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/second_page.dart';
import 'package:flutter_basic_navigator/pages/second_text_input_page.dart';
import 'package:flutter_basic_navigator/widgets/sample_dialog.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _buildContents(
                  [
                    Text('Pattern 1'),
                    ElevatedButton(
                      child: Text('Next'),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondPage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
                _buildContents(
                  [
                    Text('Pattern 2'),
                    ElevatedButton(
                      child: Text('Next'),
                      onPressed: () async {
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondPage();
                            },
                          ),
                        );
                        showDialog(
                          context: context,
                          builder: (context) => SampleDialog(),
                        );
                      },
                    ),
                  ],
                ),
                _buildContents(
                  [
                    Text('Pattern 3'),
                    ElevatedButton(
                      child: Text('Next'),
                      onPressed: () async {
                        final result = await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondTextInputPage();
                            },
                          ),
                        );
                        if (result != null) {
                          final contentText = 'I received ' + result + ' !';
                          print(result);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SampleDialog(
                                contentText: contentText,
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildContents(List<Widget> children) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 40.0),
    child: Column(
      children: children,
    ),
  );
}
