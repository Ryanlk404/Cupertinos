import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Cupertinos Demo',
      home: button(),
    );
  }
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({Key? key}) : super(key: key);

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  // Content for each tab
  final List<Widget> _pages = [
    const Center(
        child: Text('Welcome to the Home Screen!',
            style: TextStyle(fontSize: 20))),
    const Center(
        child: Text('View all the statuses of your friends here!',
            style: TextStyle(fontSize: 20))),
    const Center(
        child: Text(
      'Bright Ideas are here!',
      style: TextStyle(
        fontSize: 20,
        color: Color.fromARGB(255, 160, 13, 2), // Set to orange
        fontStyle: FontStyle.italic, // Optional: Make text italic
        decorationColor: Colors.red, // Optional: Set underline color
        decorationThickness: 2.0, // Optional: Set underline thickness
      ),
    )),
    const Center(
        child: Text(
      'Read Amazing Articles All Around the World!',
      style: TextStyle(fontSize: 20),
    )),
  ];

  final List<Color> _tabColors = [
    Colors.pink, // Home
    Colors.blueAccent, // Settings
    Colors.deepOrange, // Lightbulb
    Colors.deepPurple, // Articles
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.red, // Background color for the tab bar
        selectedItemColor: _tabColors[_currentIndex], // Color for selected tabs
        unselectedItemColor: Colors.black, // Color for unselected tabs
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.lightbulb_fill),
            label: 'Light!',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid),
            label: 'Articles',
          ),
        ],
      ),
    );
  }
}
