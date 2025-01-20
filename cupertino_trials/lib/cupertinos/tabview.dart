// TODO Implement this library.
//!CupertinoTabBar

import 'package:flutter/cupertino.dart';

class tabview extends StatefulWidget {
  const tabview({Key? key}) : super(key: key);

  @override
  State<tabview> createState() => _tabviewState();
}

class _tabviewState extends State<tabview> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Icon(
                index == 0 ? CupertinoIcons.home : CupertinoIcons.settings,
              ),
            );
          },
        );
      },
    );
  }
}