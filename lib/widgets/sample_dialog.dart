import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/second_page.dart';

class SampleDialog extends StatelessWidget {
  const SampleDialog({Key? key, this.contentText}) : super(key: key);

  final String? contentText;

  @override
  Widget build(BuildContext context) {
    final content = contentText ?? 'I\'m back!';
    return AlertDialog(
      title: Text(
        'Alert',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      content: Text(
        content,
        maxLines: 2,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('YES')),
        TextButton(onPressed: () {print('NO!');}, child: Text('NO')),
        
      ],
      
    );
  }
}
