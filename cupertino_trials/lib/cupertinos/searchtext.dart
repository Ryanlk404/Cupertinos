// TODO Implement this library.
//!CupertinoSearchTextField

import 'package:flutter/cupertino.dart';

class searchtext extends StatelessWidget {
  searchtext({Key? key}) : super(key: key);
  final TextEditingController _textController =
      TextEditingController(text: 'My name is Gustavo');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemOrange,
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: CupertinoSearchTextField(
          controller: _textController,
        ),
      ),
    );
  }
}
