import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavExample(),
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
    const Center(child: Text('Welcome to the Home Screen!', 
    style: TextStyle(fontSize: 20))),
    const Center(child: Text('Adjust your Settings here!', 
    style: TextStyle(fontSize: 20))),
    const Center(child: Text('Bright Ideas are here!', 
    style: TextStyle(fontSize: 20))),
    const Center(child: Text('Read Amazing Articles!', 
    style: TextStyle(fontSize: 20))),
  ];

  // Colors for each tab
  final List<Color> _tabColors = [
    Colors.blue, // Home
    Colors.green, // Settings
    Colors.yellow, // Lightbulb
    Colors.red, // Articles
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
        backgroundColor: _tabColors[_currentIndex], // Change AppBar color dynamically
      ),
      body: _pages[_currentIndex], // Display content based on the selected tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the index to switch tabs
          });
        },
        selectedItemColor: _tabColors[_currentIndex], // Dynamic color for selected tab
        unselectedItemColor: Colors.black, // Grey color for unselected tabs
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Lightbulb',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Articles',
          ),
        ],
      ),
    );
  }
}
