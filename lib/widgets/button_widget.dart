import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/second_text_input_page.dart';
import 'package:flutter_basic_navigator/widgets/sample_dialog.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      required String this.pushOrPop,
      Widget? this.widget,
      required String this.description})
      : super(key: key);
  final String pushOrPop;
  final Widget? widget;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                if (pushOrPop == 'pushReplacement' && widget != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => widget!));
                }
                if (pushOrPop == 'push' && widget != null) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => widget!));
                }
                if (pushOrPop == 'push-showDialog' && widget != null) {
                  await Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => widget!));
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => SampleDialog(
                      contentText: 'FirstPageに戻ります',
                    ),
                  );
                }
                if (pushOrPop == 'push-shoDialog-text' && widget != null) {
                  final result = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondTextInputPage();
                      },
                    ),
                  );
                  if (result != null) {
                    final contentText = 'result: "${result}" ';
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return SampleDialog(
                          contentText: contentText,
                        );
                      },
                    );
                  }
                }
                if (pushOrPop == 'pop') {
                  Navigator.of(context).pop();
                }
                if (pushOrPop == 'canPop') {
                  print(Navigator.of(context).canPop());
                }
                if (pushOrPop == 'popUntil') {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }
                if (pushOrPop == 'pushAndRemoveUntil') {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => widget!));
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => widget!),
                      (_) => false);
                }
              },
              child: widget != null
                  ? Text('$pushOrPop => ${widget.toString()}()')
                  : Text('$pushOrPop')),
          Text(description),
        ],
      ),
    );
  }
}
