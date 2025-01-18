import 'package:flutter/cupertino.dart';

class Actionsheet50 extends StatefulWidget {
  const Actionsheet50({Key? key}) : super(key: key);

  @override
  State<Actionsheet50> createState() => _Actionsheet50State();
}

class _Actionsheet50State extends State<Actionsheet50> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('Click Here'),
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('I Am Ryan'),
                message: const Text('Its me'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Enter'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('Share'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
