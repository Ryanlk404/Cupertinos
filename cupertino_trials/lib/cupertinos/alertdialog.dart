// TODO Implement this library.
//!

import 'package:flutter/cupertino.dart';

class alertdialog extends StatefulWidget {
  const alertdialog({Key? key}) : super(key: key);

  @override
  State<alertdialog> createState() => _alertdialogState();
}

class _alertdialogState extends State<alertdialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Alert!!!'),
                content: const Text('Do you really know who I am?'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('No'),
                  ),
                  CupertinoDialogAction(
                    child: const Text('Yes'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          },
          child: const Text('Click Here'),
        ),
      ),
    );
  }
}
