// TODO Implement this library.
//!CupertinoDatePicker

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datepicker extends StatefulWidget {
  const datepicker({Key? key}) : super(key: key);

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  Duration duration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
            '${duration.inDays}days--${duration.inHours}hours--${duration.inMinutes}minutes--${duration.inSeconds}seconds',
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 350,
                child: CupertinoTimerPicker(
                  backgroundColor: Colors.deepOrange,
                  onTimerDurationChanged: (Duration newTime) {
                    setState(() => duration = newTime);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
