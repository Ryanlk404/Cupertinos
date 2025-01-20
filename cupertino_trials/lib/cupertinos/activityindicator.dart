//!CupertinoActivityIndicator

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class activityindicator extends StatefulWidget {
  const activityindicator({Key? key}) : super(key: key);

  @override
  State<activityindicator> createState() => _activityindicator();
}

class _activityindicator extends State<activityindicator> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 35,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
